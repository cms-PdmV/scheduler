import cherrypy
import sys
from datetime import datetime
from datetime import timedelta
from CustomRequestHandler import CustomRequestHandler
import httplib  # http://cheeseshop.python.org/pypi/simplejson
import json as simplejson
import ast
import csv
import StringIO
import json
import urllib2

import Couch
from Couch import *

import TimeSpace
from TimeSpace import *

import Config
from Config import *


# Function removes " chars from input string
def remQuotation(stringVal):
    return stringVal.replace("\"", "")

# Abstract class represents model of InputBlock for Scheduler
class SchedulerInputBlockModel(object):

    def __init__(self, valuesString):

       eventsCountJson = json.dumps(valuesString['eventsCount'])
       eventsCountStr = remQuotation(eventsCountJson)
       self.eventsCount = int(eventsCountStr)

       timePartCountJson = json.dumps(valuesString['timePartCount'])
       timePartCountStr = remQuotation(timePartCountJson)
       self.timePartCount = self.parseDeltaTime(timePartCountStr)

       groupsJson = json.dumps(valuesString['groups'])
       self.groups = remQuotation(groupsJson)

       keyWordsString = json.dumps(valuesString['keyWords'])
       self.keywordsJson = json.loads(keyWordsString)
       self.keyWordsArray = self.keywordsToString(self.keywordsJson)

       errorJson = json.dumps('false')
       self.error = remQuotation(errorJson)

    def keywordsToString(self, keywords):
        result = []
        keywordValues = keywords.values()

        for value in keywordValues:
            result.append(value)

        return result

    def parseDeltaTime(self, delta):

        startDaysIndex = delta.index("days=") + len("days=")
        endDaysIndex = delta.index(",", startDaysIndex)
        daysValue = int(delta[startDaysIndex:endDaysIndex])

        startHoursIndex = delta.index("hours=") +len("hours=")
        endHoursIndex = delta.index(",", startHoursIndex)
        hoursValue = int(delta[startHoursIndex:endHoursIndex])

        startMinutesIndex = delta.index("minutes=") +len("minutes=")
        endMinutesIndex = len(delta)
        minutesValue = int(delta[startMinutesIndex:endMinutesIndex])

        return timedelta(days=daysValue, hours=hoursValue,
            minutes=minutesValue)


# Class represents model of InputDeadlineBlocks for SchedulerInputBlockModel
class SchedulerInputDeadlineBlockModel(SchedulerInputBlockModel):

    def __init__(self, valuesString):
       super(SchedulerInputDeadlineBlockModel, self).__init__(valuesString)

       deadlineJson = json.dumps(valuesString['deadline'])
       deadlineStr = remQuotation(deadlineJson)
       self.deadline = datetime.strptime(deadlineStr, "%Y-%m-%d %H:%M:%S")

       priorityJson = json.dumps(valuesString['priority'])
       priorityStr = remQuotation(priorityJson)
       self.priority = int(priorityStr)


# Class represents model of InputPriorityBlocks for SchedulerInputBlockModel
class SchedulerInputPriorityBlockModel(SchedulerInputBlockModel):

    def __init__(self, valuesString):
       super(SchedulerInputPriorityBlockModel, self).__init__(valuesString)

       priorityJson = json.dumps(valuesString['priority'])
       priorityStr = remQuotation(priorityJson)
       self.priority = int(priorityStr)


# Class represents model of planned blocks
class SchedulerInputDataModel:

    def __init__(self, parameters=None):
        self.initParameters(parameters)
        self.parse()

    def castToInt(self, integer):
        try:
            result = int(integer)
        except ValueError:
            result = None
        return result

    def initParameters(self, parameters=None):
        self.parameters = parameters
        self.eventAxis = EVENT_MAX

        if (self.parameters["slots"] == "") or (self.castToInt(self.parameters["slots"]) == None):
            self.parameters.pop("slots", None)
        else:
            self.eventAxis = self.castToInt(self.parameters["slots"])

        if self.parameters["keywords"] == "":
            self.parameters.pop("keywords", None)
        else:
            keywordsString = str(self.parameters["keywords"])
            self.parameters["keywords"] = keywordsString.split(", ")


    def keywordExist(self, blockKeywords):
        if list(set(self.parameters["keywords"]) & set(blockKeywords)):
            return True
        else:
            return False


    def checkParameters(self, block):
        if not self.parameters:
            return True

        if "priority" in self.parameters:
            if str(block.priority) != str(self.parameters["priority"]):
                return False

        if "keywords" in self.parameters:
            if not self.keywordExist(block.keyWordsArray):
                return False

        return True


    def parse(self):
        self.inputDeadlineBlocks = []
        self.inputPriorityBlocks = []
        sourceArray = self.parameters["source"].split(",")

        self.getMcmData(sourceArray)
        self.getUploadedData(sourceArray)
        self.getTemporaryData()

    def getTemporaryData(self):
        if (self.parameters["tempCsv"] != ""):
            self.parameters["tempCsv"] = ast.literal_eval(self.parameters["tempCsv"])
        else:
            return None

        for blockValues in self.parameters["tempCsv"]:
            self.addBlocks(blockValues, "Temporary_Csv_file")

    def getUploadedData(self, sourceArray):
        configLen = len(sourceArray)
        for index in range(configLen):
            path = CSV_FOLDER_NAME + '/' + sourceArray[index]

            if (index % 2 == 0 and index > 0 and index+1 < configLen and sourceArray[index+1] == "true" and os.path.isfile(path)):

                with open(path, 'rb') as srcFile:
                    dataString = srcFile.read()

                input_file = csv.reader(StringIO.StringIO(dataString), csv.excel)
                handler = CustomRequestHandler()

                try:
                    jsonData = json.loads(handler.main(input_file))

                    for blockValues in jsonData:
                        block = json.loads(blockValues)
                        self.addBlocks(block, sourceArray[index])
                except ValueError:
                    jsonData = ""

    def getMcmData(self, sourceArray):

        if ("mcm" in sourceArray and len(sourceArray) > 1 and sourceArray[1] == "true"):
            database = Couch(SERVERDB_NAME, SERVERDB_PORT)

            deadlineTimeBlocksStr = database.openDoc(DATABASE_NAME, LINK_SORTED_DEADLINE_TIME_BLOCKS)
            deadlineBlocksString = json.loads(deadlineTimeBlocksStr)

            priorityTimeBlocksStr = database.openDoc(DATABASE_NAME, LINK_SORTED_PRIORITY_TIME_BLOCKS)
            priorityTimeBlocksString = json.loads(priorityTimeBlocksStr)

            deadlineBlocksRowsCount = deadlineBlocksString['total_rows']
            deadlineBlocksRowsValues = deadlineBlocksString['rows']

            for i in range(deadlineBlocksRowsCount):

                deadlineBlockStringI = deadlineBlocksRowsValues[i]['value']
                deadlineBlockI = SchedulerInputDeadlineBlockModel(deadlineBlockStringI)
                self.addSourceKeyword(deadlineBlockI, "MCM")

                if self.checkParameters(deadlineBlockI):
                    self.inputDeadlineBlocks.append(deadlineBlockI)


            priorityBlocksRowsCount = priorityTimeBlocksString['total_rows']
            priorityBlocksRowsValues = priorityTimeBlocksString['rows']

            for i in range(priorityBlocksRowsCount):

                priorityBlockStringI = priorityBlocksRowsValues[i]['value']
                priorityBlockI = SchedulerInputPriorityBlockModel(priorityBlockStringI)
                self.addSourceKeyword(priorityBlockI, "MCM")

                if self.checkParameters(priorityBlockI):
                    self.inputPriorityBlocks.append(priorityBlockI)

    def addSourceKeyword(self, block, source):
        block.keywordsJson["source"] = source
        block.keyWordsArray = block.keywordsToString(block.keywordsJson)

    def addBlocks(self, blocks, source):
        if ("deadline" in blocks):
            deadlineBlockI = SchedulerInputDeadlineBlockModel(blocks)
            self.addSourceKeyword(deadlineBlockI, source)

            if self.checkParameters(deadlineBlockI):
                self.inputDeadlineBlocks.append(deadlineBlockI)
        else:
            priorityBlockI = SchedulerInputPriorityBlockModel(blocks)
            self.addSourceKeyword(priorityBlockI, source)

            if self.checkParameters(priorityBlockI):
                self.inputPriorityBlocks.append(priorityBlockI)

    def getDeadlines(self):
        deadlineBlocks = self.inputDeadlineBlocks
        priorityBlocks = self.inputPriorityBlocks
        deadlineBlockDeadlines = []

        for deadlineBlockI in deadlineBlocks:
            deadline = deadlineBlockI.deadline
            deadlineBlockDeadlines.append(deadline)

        return deadlineBlockDeadlines


# Abstract class represents model of OutputBlock for Scheduler
class SchedulerOutputBlockModel(object):

    def __init__(self, inputBlock):
       self.eventsCount = inputBlock.eventsCount
       self.timePartCount = inputBlock.timePartCount
       self.groups = inputBlock.groups
       self.keyWords = inputBlock.keywordsJson
       self.error = inputBlock.error
       self.startDate = ""
       self.startEvent = ""

    def headerOfJson(self):
       timePartCount = self.timedeltaToString(self.timePartCount);

       outputDict = {}
       outputDict['eventsCount'] = str(self.eventsCount)
       outputDict['timePartCount'] = timePartCount
       outputDict['startDate'] = str(self.startDate)
       outputDict['startEvent'] = str(self.startEvent)
       outputDict['error'] = self.error
       outputDict['groups'] = self.groups
       outputDict['keyWords'] = self.keyWords

       return outputDict

    def timedeltaToString(self, timedelta):
       days = timedelta.days
       hours = timedelta.seconds/60/60
       minutes = (timedelta.seconds -60*60*hours)/60
       seconds = timedelta.seconds -60*60*hours -60*minutes

       res = "days=" + str(days) + ", hours=" + str(hours)
       res += ", minutes=" + str(minutes) + ", seconds=" + str(seconds)
       return res


# Class represents model of OutputDeadlineBlocks for SchedulerOutputBlockModel
class SchedulerOutputDeadlineBlockModel(SchedulerOutputBlockModel):

    def __init__(self, inputDeadlineBlock):
       super(SchedulerOutputDeadlineBlockModel, self).__init__(
          inputDeadlineBlock)

       self.deadline = inputDeadlineBlock.deadline
       self.priority = inputDeadlineBlock.priority
       self.typeDoc = PLANDED_DEADLINE_TIME_BLOCKS_TYPE

    def getJson(self):
       outputDict = self.headerOfJson()
       outputDict['deadline'] = str(self.deadline)
       outputDict['priority'] = str(self.priority)
       outputDict['type'] = self.typeDoc

       return json.dumps(outputDict)


# Class represents model of OutputPriorityBlocks for SchedulerOutputBlockModel
class SchedulerOutputPriorityBlockModel(SchedulerOutputBlockModel):

    def __init__(self, inputPriorityBlock):
       super(SchedulerOutputPriorityBlockModel, self).__init__(
          inputPriorityBlock)

       self.priority = inputPriorityBlock.priority
       self.typeDoc = PLANDED_PRIORITY_TIME_BLOCKS_TYPE

    def getJson(self):
       outputDict = self.headerOfJson()
       outputDict['priority'] = str(self.priority)
       outputDict['type'] = self.typeDoc

       return json.dumps(outputDict)

# Public global function
# This function returns data
def data(parameters=None):
        startDateFormat = "%Y-%m-%d %H:%M:%S"
        currentdate = datetime.now().strftime(startDateFormat)
        startSchedulingDate = datetime.strptime(currentdate, startDateFormat)

        inputDataModel = SchedulerInputDataModel(parameters)
        eventNr = inputDataModel.eventAxis
        scheduler = Scheduler(inputDataModel, startSchedulingDate, eventNr)
        scheduler.go()

        outputModel = scheduler.getOutputDataModel()
        outputDict = {}
        outputDict['fields'] = {}

        if (eventNr > 0):
                outputDict['eventMax'] = eventNr
        else:
                outputDict['eventMax'] = EVENT_MAX

        dictList = []
        iteratedBlocks = outputModel.outputDeadlineBlocks + outputModel.outputPriorityBlocks

        for value in iteratedBlocks:
                jsonValue = value.getJson()
                planedBlockVaulueI = json.loads(jsonValue)

                outputI = {}
                outputI['event'] = planedBlockVaulueI["startEvent"]
                outputI['hour'] = planedBlockVaulueI["startDate"]
                outputI['value'] = planedBlockVaulueI["priority"]
                outputI['keywords'] = planedBlockVaulueI["keyWords"]
                outputI['height'] = planedBlockVaulueI["eventsCount"]
                outputI['width'] = planedBlockVaulueI["timePartCount"]
                outputI['error'] = planedBlockVaulueI["error"]
                outputI['type'] = planedBlockVaulueI["type"]

                dictList.append(outputI)

        outputDict['fields'] = dictList
        return json.dumps(outputDict)

# Class represents Scheduler for planning tasks
class Scheduler:

    def __init__(self, inputDataModel, startSchedulingDate, eventsNumber):
        self.inputDataModel = inputDataModel
        self.startSchedulingDate = startSchedulingDate
        self.deadlines = inputDataModel.getDeadlines()

        if (len(self.deadlines)):
                space = TimeSpace(startSchedulingDate, self.deadlines[0], eventsNumber)
        else:
                dateFormat = "%Y-%m-%d %H:%M:%S"
                endDate = date.today() + timedelta( days = 90 )
                space = TimeSpace(startSchedulingDate, datetime.strptime(str(endDate) + " 00:00:00", dateFormat), eventsNumber)
        self.deadlineSpaces = [space]

        for deadlineIndex in range(len(self.deadlines) -1):
            start = self.deadlines[deadlineIndex]
            end = self.deadlines[deadlineIndex +1]
            spaceI = TimeSpace(start, end, eventsNumber)
            self.deadlineSpaces.append(spaceI)

    # start planning tasks
    def go(self):
        deadlineBlocks = self.inputDataModel.inputDeadlineBlocks
        priorityBlocks = self.inputDataModel.inputPriorityBlocks

        deadlineBlocks.sort(key=lambda x: x.priority)
        priorityBlocks.sort(key=lambda x: x.priority)

        for dlBlockI in deadlineBlocks:
            deadlineI = dlBlockI.deadline
            indexI = self.deadlines.index(deadlineI)
            deadlineSpaceI = self.deadlineSpaces[indexI]
            deadlineSpaceI.insertRightBottom(dlBlockI)

        for spaceI in self.deadlineSpaces:
           spaceI.transformation()

        deadlineSpaceIndex = 0
        pBlockIndex = len(priorityBlocks) -1

        while pBlockIndex >= 0:
          pBlockI = priorityBlocks[pBlockIndex]

          while pBlockI.eventsCount > self.inputDataModel.eventAxis:
                pBlockI.eventsCount = pBlockI.eventsCount / 2
                pBlockI.timePartCount = pBlockI.timePartCount * 2
                pBlockI.error = "true"

          deadlineSpaceI = self.deadlineSpaces[deadlineSpaceIndex]
          isInserted = deadlineSpaceI.insertLeftBottom(pBlockI)

          if not isInserted:
            deadlineSpaceIndex = deadlineSpaceIndex +1

            if deadlineSpaceIndex == len(self.deadlineSpaces):
              break;
            continue;

          pBlockIndex = pBlockIndex -1;

    # returns timetable Datamodel
    def getOutputDataModel(self):
         self.outputDeadlineBlocks = []
         self.outputPriorityBlocks = []

         for spaceI in self.deadlineSpaces:
            for blockI in spaceI.getDeadlineIntervals():

                inputBlockI = blockI.dataObject

                outputBlockI = SchedulerOutputDeadlineBlockModel(inputBlockI)
                outputBlockI.startDate = blockI.startX() + spaceI.startDate
                outputBlockI.startEvent = blockI.startY()

                self.outputDeadlineBlocks.append(outputBlockI)

         for spaceI in self.deadlineSpaces:
            for blockI in spaceI.getPriorityIntervals():

                inputBlockI = blockI.dataObject

                outputBlockI = SchedulerOutputPriorityBlockModel(inputBlockI)
                outputBlockI.startDate = blockI.startX() + spaceI.startDate
                outputBlockI.startEvent = blockI.startY()

                self.outputPriorityBlocks.append(outputBlockI)

         return self
