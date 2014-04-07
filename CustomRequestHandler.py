from Couch import *
from Config import *
from datetime import datetime
import httplib2
import requests
import urllib2
import os
from translator.DataParser import DataParser

WIDTH_CONST = 28800

class CustomRequestHandler(DataParser):

	def __init__(self):
		self.couchDest = Couch(SERVERDB_NAME, SERVERDB_PORT)

	def insertDocToDb(self, doc):
		return self.couchDest.saveDoc(DATABASE_NAME, doc)

	def main(self, requestFile):
		docArray = []
		line1 = requestFile.next()
		column = self.getColumnNames(line1)
		result = self.isDataMissing(column)

		if (result != "ok"):
			return result

		enumeratedDict = self.enumerateList(column)

		for index, row in enumerate(requestFile):
			try:
				resultJSON = self.getSingleDoc(index, row, enumeratedDict)

				if (not isinstance(resultJSON, dict)):
					return resultJSON

				docArray.append(json.dumps(resultJSON))
			except IndexError:
				result = "Failed at " + str(index+1) + " data line, lacking data."
				return result
		return json.dumps(docArray)

	def getSingleDoc(self, index, row, enumeratedDict):
		eventsIndex = enumeratedDict['events']
		timeIndex = enumeratedDict['time']
		priorityIndex = enumeratedDict['priority']
		authorIndex = enumeratedDict['author']
		groupsIndex = enumeratedDict['groups']
		statusIndex = enumeratedDict['status']
		prepidIndex = enumeratedDict['prepid']
		energyIndex = enumeratedDict['energy']
		pwgIndex = enumeratedDict['pwg']
		memberIndex = enumeratedDict['member of campaign']
		typeIndex = enumeratedDict['type']

		if ("deadline" in enumeratedDict):
			deadlineIndex = enumeratedDict['deadline']

		resultJSON = {}

		parsedTotalEvents = self.parseField(row[eventsIndex].strip())
		parsedTimeEvent = self.parseField(row[timeIndex].strip())
		parsedPriority = self.parseField(row[priorityIndex].strip())
		timePartCount = WIDTH_CONST

		if(parsedTotalEvents == None or parsedTimeEvent == None):
			return "Wrong values of 'event' or 'time' at " + str(index) + " row." + str(parsedTotalEvents) + str(parsedTimeEvent)

		if(parsedTotalEvents > timePartCount):
			resultJSON["timePartCount"] = self.transformTimeEvent(timePartCount)
			resultJSON["eventsCount"] = int(parsedTotalEvents * parsedTimeEvent / timePartCount)
		else:
			return str(parsedTotalEvents) + " 'events' is too low must be atleast " + str(WIDTH_CONST)

		if (parsedPriority == None):
			parsedPriority = 1

		resultJSON["autor"] = row[authorIndex]
		resultJSON["groups"] = row[groupsIndex]
		keywordsJSON = {}
		keywordsJSON["status"] = row[statusIndex]
		keywordsJSON["prepid"] = row[prepidIndex]
		keywordsJSON["energy"] = row[energyIndex]
		keywordsJSON["pwg"] = row[pwgIndex]
		keywordsJSON["member_of_campaign"] = row[memberIndex]
		keywordsJSON["type"] = row[typeIndex]
		resultJSON["keyWords"] = keywordsJSON

		if (parsedPriority > 10):
			parsedPriority = self.calculatePriority(parsedPriority)

		resultJSON["priority"] = parsedPriority

		if("deadline" in enumeratedDict and row[deadlineIndex].strip() != ""):
			resultJSON["type"] = "deadlineBlock"
			resultJSON["deadline"] = row[deadlineIndex].strip()
		else:
			resultJSON["type"] = "priorityBlock"

		return resultJSON

	def getColumnNames(self, line):
		column = []
		for count in range(len(line)):
			column.append(line[count])
		return column

	def isDataMissing(self, data):
		keys = ["author","events","groups","priority","time", "status", "prepid", "energy", "pwg", "member of campaign", "type"]
		for key in keys:
			if (key not in data):
				return "'" + key + "'" + " data is missing."
		return "ok"

	def enumerateList(self, list):
		keys = ["author","events","groups","keywords","priority","deadline","time", "status", "prepid", "energy", "pwg", "member of campaign", "type"]
		enumeratedDict = {}

		for index, item in enumerate(list):
			for key in keys:
				if (key == item):
					enumeratedDict[key] = index

		return enumeratedDict
