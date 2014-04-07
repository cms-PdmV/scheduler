import cherrypy
import sys
from datetime import datetime
from datetime import timedelta
<<<<<<< HEAD
from CustomRequestHandler import CustomRequestHandler
import httplib  # http://cheeseshop.python.org/pypi/simplejson
import json as simplejson
import ast
import csv
import StringIO
=======
import httplib  # http://cheeseshop.python.org/pypi/simplejson
import json as simplejson

>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
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
    return stringVal.replace("\"", "");

# Abstract class represents model of InputBlock for Scheduler
class SchedulerInputBlockModel(object):

    def __init__(self, valuesString):

       autorJson = json.dumps(valuesString['autor']);
       self.autor = remQuotation(autorJson);

       eventsCountJson = json.dumps(valuesString['eventsCount']);
       eventsCountStr = remQuotation(eventsCountJson);
       self.eventsCount = int(eventsCountStr);

       timePartCountJson = json.dumps(valuesString['timePartCount']);
       timePartCountStr = remQuotation(timePartCountJson);
       self.timePartCount = self.parseDeltaTime(timePartCountStr);

       groupsJson = json.dumps(valuesString['groups']);
       self.groups = remQuotation(groupsJson);

       keyWordsJson = json.dumps(valuesString['keyWords']);
       self.keyWords = remQuotation(keyWordsJson);
<<<<<<< HEAD
       self.keyWordsArray = self.keywordsToString(json.loads(keyWordsJson))
=======
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7

       errorJson = json.dumps('false')
       self.error = remQuotation(errorJson)

<<<<<<< HEAD
    def keywordsToString(self, keywords):
        result = []
        if ("status" in keywords):
            result.append(keywords["status"])
        if ("prepid" in keywords):
            result.append(keywords["prepid"])
        if ("energy" in keywords):
            result.append(keywords["energy"])
        if ("pwg" in keywords):
            result.append(keywords["pwg"])
        if ("member_of_campaign" in keywords):
            result.append(keywords["member_of_campaign"])
        if ("type" in keywords):
            result.append(keywords["type"])
        if ("tags" in keywords):
            result.append(keywords["tags"])
        return result

=======
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
    def parseDeltaTime(self, delta):

        startDaysIndex = delta.index("days=") + len("days=");
        endDaysIndex = delta.index(",", startDaysIndex);
        daysValue = int(delta[startDaysIndex:endDaysIndex]);

        startHoursIndex = delta.index("hours=") +len("hours=");
        endHoursIndex = delta.index(",", startHoursIndex);
        hoursValue = int(delta[startHoursIndex:endHoursIndex]);

        startMinutesIndex = delta.index("minutes=") +len("minutes=");
        endMinutesIndex = len(delta);
        minutesValue = int(delta[startMinutesIndex:endMinutesIndex]);

        return timedelta(days=daysValue, hours=hoursValue,
            minutes=minutesValue);


# Class represents model of InputDeadlineBlocks for SchedulerInputBlockModel
class SchedulerInputDeadlineBlockModel(SchedulerInputBlockModel):

    def __init__(self, valuesString):
       super(SchedulerInputDeadlineBlockModel, self).__init__(valuesString)

       deadlineJson = json.dumps(valuesString['deadline']);
       deadlineStr = remQuotation(deadlineJson);
       self.deadline = datetime.strptime(deadlineStr, "%Y-%m-%d %H:%M:%S");

       priorityJson = json.dumps(valuesString['priority']);
       priorityStr = remQuotation(priorityJson);
       self.priority = int(priorityStr);


# Class represents model of InputPriorityBlocks for SchedulerInputBlockModel
class SchedulerInputPriorityBlockModel(SchedulerInputBlockModel):

    def __init__(self, valuesString):
       super(SchedulerInputPriorityBlockModel, self).__init__(valuesString)

       priorityJson = json.dumps(valuesString['priority']);
       priorityStr = remQuotation(priorityJson);
       self.priority = int(priorityStr);


# Class represents model of planned blocks
class SchedulerInputDataModel:

    def __init__(self, parameters=None):

        database = Couch(SERVERDB_NAME, SERVERDB_PORT);

<<<<<<< HEAD
        deadlineTimeBlocksStr = database.openDoc(DATABASE_NAME, LINK_SORTED_DEADLINE_TIME_BLOCKS)
        deadlineTimeBlocks = json.loads(deadlineTimeBlocksStr)

        priorityTimeBlocksStr = database.openDoc(DATABASE_NAME, LINK_SORTED_PRIORITY_TIME_BLOCKS);
        priorityTimeBlocks = json.loads(priorityTimeBlocksStr)

        self.initParameters(parameters)
        self.parse(deadlineTimeBlocks, priorityTimeBlocks)
=======
        deadlineTimeBlocksStr = database.openDoc(DATABASE_NAME, LINK_SORTED_DEADLINE_TIME_BLOCKS);
        deadlineTimeBlocks = json.loads(deadlineTimeBlocksStr);

        priorityTimeBlocksStr = database.openDoc(DATABASE_NAME, LINK_SORTED_PRIORITY_TIME_BLOCKS);
        priorityTimeBlocks = json.loads(priorityTimeBlocksStr);

        #self.parameters = parameters
        self.initParameters(parameters)
        self.parse(deadlineTimeBlocks, priorityTimeBlocks);
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7

    def castToInt(self, integer):
        try:
            result = int(integer)
        except ValueError:
            result = None
        return result

    def initParameters(self, parameters=None):
        self.parameters = parameters
        self.eventAxis = EVENT_MAX

        if (self.parameters) and ("slots" in self.parameters):
          if (self.parameters["slots"] == "") or (self.castToInt(self.parameters["slots"]) == None):
            self.parameters.pop("slots", None)
          else:
<<<<<<< HEAD
              self.eventAxis = self.castToInt(self.parameters["slots"])
=======
              self.eventAxis = self.castToInt(self.parameters["slots"]);
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7

        if (self.parameters) and ("keywords" in self.parameters):
          if self.parameters["keywords"] == "":
            self.parameters.pop("keywords", None)
          else:
            keywordsString = str(self.parameters["keywords"])
            self.parameters["keywords"] = keywordsString.split(", ")


    def keywordExist(self, blockKeywords):
<<<<<<< HEAD
=======
        blockKeywords = blockKeywords.split(", ")
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
        if list(set(self.parameters["keywords"]) & set(blockKeywords)):
            return True
        else:
            return False


    def checkParameters(self, block):
        if not self.parameters: return True

        if "priority" in self.parameters:
            if str(block.priority) != str(self.parameters["priority"]):
                return False

        if "keywords" in self.parameters:
<<<<<<< HEAD
            if not self.keywordExist(block.keyWordsArray):
=======
            if not self.keywordExist(block.keyWords):
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
                return False

        return True


    def parse(self, deadlineBlocksString, priorityTimeBlocksString):
        self.inputDeadlineBlocks = [];
        self.inputPriorityBlocks = [];
<<<<<<< HEAD
        sourceArray = self.parameters["source"].split(",")

        self.getMcmData(sourceArray, deadlineBlocksString, priorityTimeBlocksString)
        self.getUploadedData(sourceArray)
        self.getTemporaryData()

    def getTemporaryData(self):
        if (self.parameters) and ("tempCsv" in self.parameters) and (self.parameters["tempCsv"] != ""):
            self.parameters["tempCsv"] = ast.literal_eval(self.parameters["tempCsv"])
        else:
            return None

        for blockValues in self.parameters["tempCsv"]:
            self.addBlocks(blockValues)

    def getUploadedData(self, sourceArray):
        configLen = len(sourceArray)
        for index in range(configLen):
            if (index % 2 == 0 and index > 0 and index+1 < configLen and sourceArray[index+1] == "true"):
                path = CSV_FOLDER_NAME + '/' + sourceArray[index]
                if os.path.isfile(path):
                    with open(path, 'rb') as srcFile:
                        dataString = srcFile.read()
                    srcFile.closed
                    input_file = csv.reader(StringIO.StringIO(dataString), csv.excel)
                    handler = CustomRequestHandler()
                    try:
                        jsonData = json.loads(handler.main(input_file))

                        for blockValues in jsonData:
                            block = json.loads(blockValues)
                            self.addBlocks(block)
                    except ValueError:
                        jsonData = ""

    def getMcmData(self, sourceArray, deadlineBlocksString, priorityTimeBlocksString):
        if ("mcm" in sourceArray and len(sourceArray) > 1 and sourceArray[1] == "true"):
            deadlineBlocksRowsCount = deadlineBlocksString['total_rows']
            deadlineBlocksRowsValues = deadlineBlocksString['rows']

            for i in range(deadlineBlocksRowsCount):

                deadlineBlockStringI = deadlineBlocksRowsValues[i]['value']
                deadlineBlockI = SchedulerInputDeadlineBlockModel(deadlineBlockStringI)
                if self.checkParameters(deadlineBlockI):
                    self.inputDeadlineBlocks.append(deadlineBlockI)


            priorityBlocksRowsCount = priorityTimeBlocksString['total_rows']
            priorityBlocksRowsValues = priorityTimeBlocksString['rows']

            for i in range(priorityBlocksRowsCount):

                priorityBlockStringI = priorityBlocksRowsValues[i]['value']
                priorityBlockI = SchedulerInputPriorityBlockModel(priorityBlockStringI)
                if self.checkParameters(priorityBlockI):
                    self.inputPriorityBlocks.append(priorityBlockI)

    def addBlocks(self, blocks):
        if ("deadline" in blocks):
            deadlineBlockI = SchedulerInputDeadlineBlockModel(blocks)

            if self.checkParameters(deadlineBlockI):
                self.inputDeadlineBlocks.append(deadlineBlockI)
        else:
            priorityBlockI = SchedulerInputPriorityBlockModel(blocks)

            if self.checkParameters(priorityBlockI):
                self.inputPriorityBlocks.append(priorityBlockI)
=======

        deadlineBlocksRowsCount = deadlineBlocksString['total_rows'];
        # print deadlineBlocksRowsCount
        deadlineBlocksRowsValues = deadlineBlocksString['rows'];

        for i in range(deadlineBlocksRowsCount):

            deadlineBlockStringI = deadlineBlocksRowsValues[i]['value'];
            deadlineBlockI = SchedulerInputDeadlineBlockModel(deadlineBlockStringI);
            if self.checkParameters(deadlineBlockI):
                self.inputDeadlineBlocks.append(deadlineBlockI);


        priorityBlocksRowsCount = priorityTimeBlocksString['total_rows'];
        priorityBlocksRowsValues = priorityTimeBlocksString['rows'];
        # print priorityBlocksRowsCount

        for i in range(priorityBlocksRowsCount):

            priorityBlockStringI = priorityBlocksRowsValues[i]['value'];
            priorityBlockI = SchedulerInputPriorityBlockModel(priorityBlockStringI);
            if self.checkParameters(priorityBlockI):
                self.inputPriorityBlocks.append(priorityBlockI);
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7

    def getDeadlines(self):
        deadlineBlocks = self.inputDeadlineBlocks;
        priorityBlocks = self.inputPriorityBlocks;

        deadlineBlockDeadlines = [];
        for deadlineBlockI in deadlineBlocks:
            deadline = deadlineBlockI.deadline;
            deadlineBlockDeadlines.append(deadline);

        deadlinesDuplicateStr = deadlineBlockDeadlines;
        deadlinesStr = list(set(deadlinesDuplicateStr));

        deadlines = [];
        for deadlineI in deadlinesStr:
            deadlines.append(deadlineI);

        return deadlines;

    def output(self):
        for i in range(len(self.inputDeadlineBlocks)):
          blockI = self.inputDeadlineBlocks[i];
          blockI.output();
        for i in range(len(self.inputPriorityBlocks)):
          blockI = self.inputPriorityBlocks[i];
          blockI.output();


# Abstract class represents model of OutputBlock for Scheduler
class SchedulerOutputBlockModel(object):

    def __init__(self, inputBlock):

       self.autor = inputBlock.autor;
       self.eventsCount = inputBlock.eventsCount;
       self.timePartCount = inputBlock.timePartCount;

       self.groups = inputBlock.groups;
       self.keyWords = inputBlock.keyWords;
       self.error = inputBlock.error
       self.startDate = "";
       self.startEvent = "";

    def headerOfJson(self):
       timePartCount = self.timedeltaToString(self.timePartCount);

       outputDict = {}
       outputDict['autor'] = self.autor
       outputDict['eventsCount'] = str(self.eventsCount)
       outputDict['timePartCount'] = timePartCount
       outputDict['startDate'] = str(self.startDate)
       outputDict['startEvent'] = str(self.startEvent)
       outputDict['error'] = self.error
       outputDict['groups'] = self.groups
       outputDict['keyWords'] = self.keyWords

       return outputDict

<<<<<<< HEAD
=======
    # def footerOfJson(self):
    #    return """
    #       }
    #       """;

>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
    def timedeltaToString(self, timedelta):
       days = timedelta.days;
       hours = timedelta.seconds/60/60;
       minutes = (timedelta.seconds -60*60*hours)/60;
       seconds = timedelta.seconds -60*60*hours -60*minutes;

       res = "days=" + str(days) + ", hours=" + str(hours);
       res += ", minutes=" + str(minutes) + ", seconds=" + str(seconds);
       return res;


# Class represents model of OutputDeadlineBlocks for SchedulerOutputBlockModel
class SchedulerOutputDeadlineBlockModel(SchedulerOutputBlockModel):

    def __init__(self, inputDeadlineBlock):
       super(SchedulerOutputDeadlineBlockModel, self).__init__(
          inputDeadlineBlock)

       self.deadline = inputDeadlineBlock.deadline;
       self.priority = inputDeadlineBlock.priority;
       self.typeDoc = PLANDED_DEADLINE_TIME_BLOCKS_TYPE;

    def getJson(self):
       outputDict = self.headerOfJson()
       outputDict['deadline'] = str(self.deadline)
       outputDict['priority'] = str(self.priority)
       outputDict['type'] = self.typeDoc

       return json.dumps(outputDict)

<<<<<<< HEAD
=======
    # writes OutputDeadlineBlocks to database
    # def writeInDatabase(self):
    #     doc = self.getJson();
    #     database = Couch(SERVERDB_NAME, SERVERDB_PORT);
    #     database.saveDoc(DATABASE_NAME, doc);

>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7

# Class represents model of OutputPriorityBlocks for SchedulerOutputBlockModel
class SchedulerOutputPriorityBlockModel(SchedulerOutputBlockModel):

    def __init__(self, inputPriorityBlock):
       super(SchedulerOutputPriorityBlockModel, self).__init__(
          inputPriorityBlock)

       self.priority = inputPriorityBlock.priority;
       self.typeDoc = PLANDED_PRIORITY_TIME_BLOCKS_TYPE;

    def getJson(self):
       outputDict = self.headerOfJson()
       outputDict['priority'] = str(self.priority)
       outputDict['type'] = self.typeDoc

       return json.dumps(outputDict)

<<<<<<< HEAD
=======
    # writes OutputPriorityBlocks to database
    # def writeInDatabase(self):
    #     doc = self.getJson();
    #     database = Couch(SERVERDB_NAME, SERVERDB_PORT);
    #     database.saveDoc(DATABASE_NAME, doc);

>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7

# Class represents model of OutputBlock for Scheduler
class SchedulerOutputDataModel:
        def __init__(self, outputDeadlineBlocks, outputPriorityBlocks):
                self.outputDeadlineBlocks = outputDeadlineBlocks;
                self.outputPriorityBlocks = outputPriorityBlocks;

<<<<<<< HEAD
=======
    # write planned tasks to database
        # def writeInDatabase(self):

        #         for deadlineBlockI in self.outputDeadlineBlocks:
        #                 deadlineBlockI.writeInDatabase();

        #         for priorityBlockI in self.outputPriorityBlocks:
        #                 priorityBlockI.writeInDatabase();

        # def writeToDatabaseEventMax(self, eventNr):
        #         eventMaxDoc = {}
        #         eventMaxDoc['type'] = "eventMax"
        #         eventMaxDoc['max'] = eventNr
        #         doc = json.dumps(eventMaxDoc)
        #         database = Couch(SERVERDB_NAME, SERVERDB_PORT);
        #         database.saveDoc(DATABASE_NAME, doc);

        # def removeFromDatabase(self, view):
        #         database = Couch(SERVERDB_NAME, SERVERDB_PORT)

        #         docsStr = database.openDoc(DATABASE_NAME, view)
        #         docs = json.loads(docsStr)

        #         docsCount = docs['total_rows']
        #         docsValues = docs['rows']

        #         for i in range(docsCount):
        #                 docsId = docsValues[i]['value'][0]
        #                 docsRev = docsValues[i]['value'][1]

        #                 docsIdPlusRev = docsId + "?rev=" + docsRev
        #                 database.deleteDoc(DATABASE_NAME, docsIdPlusRev)

    # remove planned tasks from database
        # def removeRecordsInDatabase(self):
        #         self.removeFromDatabase(LINK_ID_OF_PLANDED_TIME_BLOCKS);
        #         self.removeFromDatabase(EVENT_MAX_VIEW);

# Public global function
# This function starts sheduler
# def shedule(startSchedulingDate, parameters=None):
        # data(parameters)
        # inputDataModel = SchedulerInputDataModel(parameters);

        # eventNr = inputDataModel.eventAxis;
        # scheduler = Scheduler(inputDataModel, startSchedulingDate, eventNr);
        # scheduler.go();

        # outputModel = scheduler.getOutputDataModel();
        # outputModel.removeRecordsInDatabase();
        # outputModel.writeInDatabase();
        # outputModel.writeToDatabaseEventMax(eventNr)

>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
def getDocsFromDatabase(view):
        database = Couch(SERVERDB_NAME, SERVERDB_PORT);
        docsStr = database.openDoc(DATABASE_NAME,
        view);
        return json.loads(docsStr);

# Public global function
# This function returns data
def data(parameters=None):
        startDateFormat = "%Y-%m-%d %H:%M:%S";
        currentdate = datetime.now().strftime(startDateFormat)
        startSchedulingDate = datetime.strptime(currentdate, startDateFormat)

<<<<<<< HEAD
        inputDataModel = SchedulerInputDataModel(parameters)
        eventNr = inputDataModel.eventAxis;
        scheduler = Scheduler(inputDataModel, startSchedulingDate, eventNr)
        scheduler.go();

        outputModel = scheduler.getOutputDataModel();
=======
        inputDataModel = SchedulerInputDataModel(parameters);

        eventNr = inputDataModel.eventAxis;
        scheduler = Scheduler(inputDataModel, startSchedulingDate, eventNr);
        scheduler.go();

        outputModel = scheduler.getOutputDataModel();
        # outputModel.removeRecordsInDatabase();
        # outputModel.writeInDatabase();
        # outputModel.writeToDatabaseEventMax(eventNr)

        # planedBlocks = getDocsFromDatabase(LINK_PLANDED_TIME_BLOCKS)
        # eventMaxDoc = getDocsFromDatabase(EVENT_MAX_VIEW_ALL)

        # eventMaxValues = eventMaxDoc['rows']
        # print eventMaxValues

>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
        output = "var data = "
        # {fields:[\n";
        outputDict = {}
        outputDict['fields'] = {}
<<<<<<< HEAD

=======
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
        if (eventNr > 0):
                outputDict['eventMax'] = eventNr
        else:
                outputDict['eventMax'] = 86490
<<<<<<< HEAD

        dictList = []
=======
        dictList = []

>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
        iteratedBlocks = outputModel.outputDeadlineBlocks + outputModel.outputPriorityBlocks

        for value in iteratedBlocks:
                jsonValue = value.getJson()
                planedBlockVaulueI = json.loads(jsonValue)
                startDateI = planedBlockVaulueI["startDate"];
                startEventI = planedBlockVaulueI["startEvent"];
                eventsCountI = planedBlockVaulueI["eventsCount"];
                keyWordsI = planedBlockVaulueI["keyWords"];
                timePartCountI = planedBlockVaulueI["timePartCount"];
                priorityI = planedBlockVaulueI["priority"];
                typeI = planedBlockVaulueI["type"];
                errorI = planedBlockVaulueI["error"]

                outputI = {}
                outputI['event'] = startEventI
                outputI['hour'] = startDateI
                outputI['value'] = priorityI
                outputI['keywords'] = keyWordsI
                outputI['height'] = eventsCountI
                outputI['width'] = timePartCountI
                outputI['error'] = errorI
                outputI['type'] = typeI

                dictList.append(outputI)


        outputDict['fields'] = dictList
<<<<<<< HEAD
=======
        # return output + json.dumps(outputDict)
>>>>>>> b7dda51e9b4dd08fa19bd9297bd9bf172da01be7
        return json.dumps(outputDict)

# Class represents Scheduler for planning tasks
class Scheduler:

    def __init__(self, inputDataModel, startSchedulingDate, eventsNumber):
        self.inputDataModel = inputDataModel;
        self.startSchedulingDate = startSchedulingDate;
        self.deadlines = inputDataModel.getDeadlines();

        if (len(self.deadlines)):
                space = TimeSpace(startSchedulingDate, self.deadlines[0], eventsNumber);
        else:
                dateFormat = "%Y-%m-%d %H:%M:%S";
                endDate = date.today() + timedelta( days = 90 )
                space = TimeSpace(startSchedulingDate, datetime.strptime(str(endDate) + " 00:00:00", dateFormat), eventsNumber)
        self.deadlineSpaces = [space];

        for deadlineIndex in range(len(self.deadlines) -1):
            start = self.deadlines[deadlineIndex];
            end = self.deadlines[deadlineIndex +1];
            spaceI = TimeSpace(start, end, eventsNumber);
            self.deadlineSpaces.append(spaceI);

    # start planning tasks
    def go(self):
        deadlineBlocks = self.inputDataModel.inputDeadlineBlocks;
        priorityBlocks = self.inputDataModel.inputPriorityBlocks;

        for dlBlockI in deadlineBlocks:
            deadlineI = dlBlockI.deadline;
            indexI = self.deadlines.index(deadlineI);
            deadlineSpaceI = self.deadlineSpaces[indexI];
            deadlineSpaceI.insertRightBottom(dlBlockI);

        for spaceI in self.deadlineSpaces:
           spaceI.transformation();

        deadlineSpaceIndex = 0;
        pBlockIndex = len(priorityBlocks) -1;

        while pBlockIndex >= 0:
          pBlockI = priorityBlocks[pBlockIndex];
          while pBlockI.eventsCount > self.inputDataModel.eventAxis:
                pBlockI.eventsCount = pBlockI.eventsCount / 2
                pBlockI.timePartCount = pBlockI.timePartCount * 2
                pBlockI.error = "true"
          deadlineSpaceI = self.deadlineSpaces[deadlineSpaceIndex];


          isInserted = deadlineSpaceI.insertLeftBottom(pBlockI);
          if not isInserted:
            deadlineSpaceIndex = deadlineSpaceIndex +1;
            if deadlineSpaceIndex == len(self.deadlineSpaces):
              break;
            continue;

          pBlockIndex = pBlockIndex -1;

    # returns timetable Datamodel
    def getOutputDataModel(self):
         deadlineBlocks = [];
         priorityBlocks = [];

         for spaceI in self.deadlineSpaces:
            for blockI in spaceI.getDeadlineIntervals():

                inputBlockI = blockI.dataObject;

                outputBlockI = SchedulerOutputDeadlineBlockModel(inputBlockI);
                outputBlockI.startDate = blockI.startX() + spaceI.startDate;
                outputBlockI.startEvent = blockI.startY();

                deadlineBlocks.append(outputBlockI);

         for spaceI in self.deadlineSpaces:
            for blockI in spaceI.getPriorityIntervals():

                inputBlockI = blockI.dataObject;

                outputBlockI = SchedulerOutputPriorityBlockModel(inputBlockI);
                outputBlockI.startDate = blockI.startX() + spaceI.startDate;
                outputBlockI.startEvent = blockI.startY();

                priorityBlocks.append(outputBlockI);

         outputModel = SchedulerOutputDataModel(deadlineBlocks, priorityBlocks);
         return outputModel;

