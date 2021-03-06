from Couch import *
from Config import *
from datetime import datetime
import httplib2
import requests
import urllib2
import os
from DataParser import DataParser

class Translator(DataParser):

    def __init__(self):
        self.couchDest = Couch(DEST_HOST_NAME, DEST_DB_PORT)

    def insertDocToDb(self, doc):
        return self.couchDest.saveDoc(DEST_DB_NAME, doc)

    def parseDateTime(self, date, time):
        dateModified = "20" + date
        return datetime.strptime(dateModified + time, "%Y%m%d%H%M%S")

    def totalSeconds(self, td):
        return float((td.microseconds +
                      (td.seconds + td.days * 24 * 3600) * 10**6)) / 10**6

    def getKeywords(self, doc):
        resultList = {}
        if "energy" in doc and doc["energy"]:
            resultList["energy"] = str(doc["energy"])
        if "type" in doc and doc["type"]:
            resultList["type"] = str(doc["type"])
        if "pwg" in doc and doc["pwg"]:
            resultList["pwg"] = str(doc["pwg"])
        if "member_of_campaign" in doc and doc["member_of_campaign"]:
            resultList["member_of_campaign"] = str(doc["member_of_campaign"])
        if "status" in doc and doc["status"]:
            resultList["status"] = str(doc["status"])
        if "tags" in doc and doc["tags"]:
            resultList["tags"] = str(doc["tags"])
        if "prepid" in doc and doc["prepid"]:
            resultList["prepid"] = str(doc["prepid"])

        return resultList

    def getWidth(self, doc, parsedTotalEvents, parsedCompletedEvents):
        timePartCount = WIDTH_CONST

        for reqmgrName in doc["reqmgr_name"]:
            reqmgrContent = reqmgrName["content"]

            if ("pdmv_submission_date" in reqmgrName["content"]):
                reqSubmisDate = reqmgrContent["pdmv_submission_date"]
                reqSubmisTime = reqmgrContent["pdmv_submission_time"]
                period = datetime.now() - self.parseDateTime(reqSubmisDate, reqSubmisTime)
                ratio = parsedCompletedEvents  / self.totalSeconds(period)
                timePartCount = parsedTotalEvents * ratio

        return timePartCount

    #required fields:
    #autor, deadline, eventsCount, groups, keyWords, priority, timePartCount, type
    def transformDoc(self, doc):
        if(doc["status"] == "done"):
            return None

        parsedTotalEvents = self.parseField(doc["total_events"])
        parsedTimeEvent = self.parseField(doc["time_event"])
        parsedCompletedEvents = self.parseField(doc["completed_events"])

        if(parsedTotalEvents == None or parsedTimeEvent == None):
            return None

        if(parsedCompletedEvents != None and parsedCompletedEvents < parsedTotalEvents):
            parsedTotalEvents = parsedTotalEvents - parsedCompletedEvents
            timePartCount = self.getWidth(doc, parsedTotalEvents, parsedCompletedEvents)
        else:
            timePartCount = WIDTH_CONST

        resultJSON = {}

        if(parsedTotalEvents > timePartCount):
            resultJSON["timePartCount"] = self.transformTimeEvent(timePartCount)
            resultJSON["eventsCount"] = int(parsedTotalEvents * parsedTimeEvent / timePartCount)
        else:
            return None

        priority = self.parseField(doc["priority"])

        if (priority == None or priority < MIN_PRIORITY):
            return None

        resultJSON["groups"] = ""
        resultJSON["keyWords"] = self.getKeywords(doc)
        resultJSON["priority"] = self.calculatePriority(priority)

        resultJSON["keyWords"]["total events"] = parsedTotalEvents

        if("deadline" in doc and doc["deadline"]):
            resultJSON["type"] = "deadlineBlock"
            resultJSON["deadline"] = doc["deadline"]
        else:
            resultJSON["type"] = "priorityBlock"

        return json.dumps(resultJSON)

    def index(self):
        content = requests.get(SRC_DB_NAME, verify=False)
        content = content.json()
        listOfDocs = content['results']

        for doc in listOfDocs:
            transformedDoc = self.transformDoc(doc)

            if transformedDoc is not None:
                self.insertDocToDb(transformedDoc)

translate = Translator()
translate.index()
