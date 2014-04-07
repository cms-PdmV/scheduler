#!/usr/bin/python
import cherrypy
import sys
import csv
import StringIO
import urllib2
from Scheduler import *
from os import listdir
from os.path import isfile, join
from CustomRequestHandler import CustomRequestHandler

class Root(object):

    def index(self, **parameters):
        return open(os.path.join('', 'html', 'index.html'))
    index.exposed = True

    def data(self, **parameters):
        parameters['source'] = self.getSources()
        return data(parameters)
    data.exposed = True

    def upload(self, **uploadedFile):
        string_data = uploadedFile['file'].fullvalue()
        return self.validateAndTransform(string_data)
    upload.exposed = True

    def uploadAndSave(self, **uploadedData):
        self.saveIntoFile(uploadedData['filename'], uploadedData['file'].fullvalue())
        return self.validateAndTransform(uploadedData['file'].fullvalue())
    uploadAndSave.exposed = True

    def uploadFromUrl(self, **urlData):
        try:
            data = urllib2.urlopen(urlData['urlName'])
            self.saveIntoFile(urlData['filename'], data.read())
            return self.validateAndTransform(data.read())
        except ValueError:
            return "fail"
    uploadFromUrl.exposed = True

    def saveIntoFile(self, filename, filedata):
        if not os.path.exists(CSV_FOLDER_NAME):
            os.makedirs(CSV_FOLDER_NAME)
        with open(CSV_FOLDER_NAME + '/' + filename, 'wb') as cvsfile:
            cvsfile.write(filedata)
        cvsfile.closed

    def getUploadedFileList(self):
        if not os.path.exists(CSV_FOLDER_NAME):
            os.makedirs(CSV_FOLDER_NAME)
        onlyfiles = [ f for f in listdir(CSV_FOLDER_NAME + '/') if isfile(join(CSV_FOLDER_NAME + '/',f)) ]
        return ';'.join(onlyfiles)
    getUploadedFileList.exposed = True

    def deleteFile(self, **fileData):
        os.remove(CSV_FOLDER_NAME + '/' + fileData['filename'])
    deleteFile.exposed = True

    def getSources(self):
        with open(SOURCE_CONFIG, 'rb') as srcFile:
            dataString = srcFile.read()
        srcFile.closed
        return dataString
    getSources.exposed = True

    def setSources(self, **configData):
        with open(SOURCE_CONFIG, 'wb') as srcFile:
            srcFile.write(str(configData['data']))
        srcFile.closed
    setSources.exposed = True

    def validateAndTransform(self, data):
        input_file = csv.reader(StringIO.StringIO(data), csv.excel)
        handler = CustomRequestHandler()
        return handler.main(input_file)

if __name__ == '__main__':
    cherrypy.quickstart(Root(), '/', 'TimeTable.conf')
