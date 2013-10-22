import cherrypy
import sys
from datetime import datetime
from datetime import timedelta
import httplib  # http://cheeseshop.python.org/pypi/simplejson
import json as simplejson

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

    def __init__(self):

        database = Couch(SERVERDB_NAME, SERVERDB_PORT);

        deadlineTimeBlocksStr = database.openDoc(DATABASE_NAME,
	    LINK_SORTED_DEADLINE_TIME_BLOCKS);
	deadlineTimeBlocks = json.loads(deadlineTimeBlocksStr);

        priorityTimeBlocksStr = database.openDoc(DATABASE_NAME,
	    LINK_SORTED_PRIORITY_TIME_BLOCKS);
	priorityTimeBlocks = json.loads(priorityTimeBlocksStr);

	self.parse(deadlineTimeBlocks, priorityTimeBlocks);


    def parse(self, deadlineBlocksString, priorityTimeBlocksString):
	self.inputDeadlineBlocks = [];
	self.inputPriorityBlocks = [];

	deadlineBlocksRowsCount = deadlineBlocksString['total_rows'];
	deadlineBlocksRowsValues = deadlineBlocksString['rows'];

	for i in range(deadlineBlocksRowsCount):

	  deadlineBlockStringI = deadlineBlocksRowsValues[i]['value'];
          deadlineBlockI = SchedulerInputDeadlineBlockModel(
	      deadlineBlockStringI);

	  self.inputDeadlineBlocks.append(deadlineBlockI);


	priorityBlocksRowsCount = priorityTimeBlocksString['total_rows'];
	priorityBlocksRowsValues = priorityTimeBlocksString['rows'];

	for i in range(priorityBlocksRowsCount):
	  
	  priorityBlockStringI = priorityBlocksRowsValues[i]['value'];
          priorityBlockI = SchedulerInputPriorityBlockModel(
	      priorityBlockStringI);

	  self.inputPriorityBlocks.append(priorityBlockI);

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

       self.startDate = "";
       self.startEvent = "";

    def headerOfJson(self):

       timePartCount = self.timedeltaToString(self.timePartCount);
       return """
	  {
	      \"autor\":\"""" + self.autor + """\",""" + """
	      \"eventsCount\":\"""" + str(self.eventsCount) + """\",""" + """
	      \"timePartCount\":\"""" + timePartCount + """\",""" + """

	      \"startDate\":\"""" + str(self.startDate) + """\",""" + """
	      \"startEvent\":\"""" + str(self.startEvent) + """\",""" + """

	      \"groups\":\"""" + self.groups + """\",""" + """
	      \"keyWords\":\"""" + self.keyWords + """\",""" + """
	  """;

    def footerOfJson(self):
       return """
	  }
	  """;

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
       return self.headerOfJson() + """
		  \"deadline\":\"""" + str(self.deadline) + """\",""" + """
		  \"priority\":\"""" + str(self.priority) + """\",""" + """
		  \"type\":\"""" + self.typeDoc + """\" """ + """
	    """ + self.footerOfJson();

    # writes OutputDeadlineBlocks to database
    def writeInDatabase(self):
	doc = self.getJson();
	database = Couch(SERVERDB_NAME, SERVERDB_PORT);
	database.saveDoc(DATABASE_NAME, doc);


# Class represents model of OutputPriorityBlocks for SchedulerOutputBlockModel 
class SchedulerOutputPriorityBlockModel(SchedulerOutputBlockModel):

    def __init__(self, inputPriorityBlock):
       super(SchedulerOutputPriorityBlockModel, self).__init__(
	  inputPriorityBlock)

       self.priority = inputPriorityBlock.priority;
       self.typeDoc = PLANDED_PRIORITY_TIME_BLOCKS_TYPE;

    def getJson(self):
       return self.headerOfJson() + """
		  \"priority\":\"""" + str(self.priority) + """\",""" + """
		  \"type\":\"""" + self.typeDoc + """\" """ + """
	    """ + self.footerOfJson();

    # writes OutputPriorityBlocks to database
    def writeInDatabase(self):
	doc = self.getJson();
	database = Couch(SERVERDB_NAME, SERVERDB_PORT);
	database.saveDoc(DATABASE_NAME, doc);


# Class represents model of OutputBlock for Scheduler
class SchedulerOutputDataModel:
    def __init__(self, outputDeadlineBlocks, outputPriorityBlocks):
       self.outputDeadlineBlocks = outputDeadlineBlocks;
       self.outputPriorityBlocks = outputPriorityBlocks;

    # write planned tasks to database
    def writeInDatabase(self):

       for deadlineBlockI in self.outputDeadlineBlocks:
	   deadlineBlockI.writeInDatabase();

       for priorityBlockI in self.outputPriorityBlocks:
	   priorityBlockI.writeInDatabase();

    # remove planned tasks from database
    def removeRecordsInDatabase(self):
        database = Couch(SERVERDB_NAME, SERVERDB_PORT);

        planedBlocksStr = database.openDoc(DATABASE_NAME,
	    LINK_ID_OF_PLANDED_TIME_BLOCKS);
        planedBlocks = json.loads(planedBlocksStr);

	planedBlocksCount = planedBlocks['total_rows'];
	planedBlocksValues = planedBlocks['rows'];

	for i in range(planedBlocksCount):
	  planedBlockId = planedBlocksValues[i]['value'][0];
	  planedBlockRev = planedBlocksValues[i]['value'][1];
	  
	  planedBlockIdPlusRev = planedBlockId + "?rev=" + planedBlockRev;
	  database.deleteDoc(DATABASE_NAME, planedBlockIdPlusRev);


# Public global function
# This function starts sheduler
def shedule(startSchedulingDate):

	inputDataModel = SchedulerInputDataModel();

	scheduler = Scheduler(inputDataModel, startSchedulingDate, EVENT_MAX);
	scheduler.go();

	outputModel = scheduler.getOutputDataModel();
	outputModel.removeRecordsInDatabase();
	outputModel.writeInDatabase();

# Public global function
# This function returns data
def data():
        database = Couch(SERVERDB_NAME, SERVERDB_PORT);
        planedBlocksStr = database.openDoc(DATABASE_NAME,
	    LINK_PLANDED_TIME_BLOCKS);
        planedBlocks = json.loads(planedBlocksStr);

	planedBlocksCount = planedBlocks['total_rows'];
	planedBlocksValues = planedBlocks['rows'];

#	outputFile = open(SCHEDULER_OUTPUT_FILEJS, 'w');
#	outputFile.write("var data = [\n");
        output = "var data = [\n";
   
	for i in range(planedBlocksCount):
	    planedBlockVaulueI = planedBlocksValues[i]['value'];
	    startDateI = planedBlockVaulueI["startDate"];
	    startEventI = planedBlockVaulueI["startEvent"];
	    eventsCountI = planedBlockVaulueI["eventsCount"];
	    timePartCountI = planedBlockVaulueI["timePartCount"];
            priorityI = planedBlockVaulueI["priority"];
            typeI = planedBlockVaulueI["type"];

	    outputI = "{event:" + startEventI + ", ";
	    outputI += "hour:"  + "\"" + startDateI + "\"" + ", ";
	    outputI += "value:" + priorityI +  ", ";
	    outputI += "height:" + eventsCountI + ", ";
	    outputI += "width:" + "\"" + timePartCountI + "\"" + ", ";
	    outputI += "type:" + "\"" + typeI + "\"" + "}";

	    if i < (planedBlocksCount -1):
	      outputI += ",";
    
#	    outputFile.write(outputI + "\n");
            output += outputI + "\n";
#	outputFile.write("];");
	return output + "];";

# Class represents Scheduler for planning tasks
class Scheduler:

    def __init__(self, inputDataModel, startSchedulingDate, eventsNumber):
	self.inputDataModel = inputDataModel;
	self.startSchedulingDate = startSchedulingDate;

	deadlines = inputDataModel.getDeadlines();
	self.deadlines = deadlines;
	space = TimeSpace(startSchedulingDate, deadlines[0], eventsNumber);
	self.deadlineSpaces = [space];

        for deadlineIndex in range(len(deadlines) -1):
            start = deadlines[deadlineIndex];
            end = deadlines[deadlineIndex +1];
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

