#!/usr/bin/python
import cherrypy
import sys
import csv
import StringIO
from Scheduler import *
from CustomRequestHandler import CustomRequestHandler

class Root(object):

    def index(self, **parameters):

        # if parameters:
        #     self.runCalculations(parameters)
        # else:
        #     self.runCalculations()
        self.parametersQuery = parameters

        return open(os.path.join('', 'html', 'index.html'))
    index.exposed = True

    def data(self, **parameters):
        if parameters:
            return data(parameters)
        else:
            return data(self.parametersQuery)
    data.exposed = True

    # def runCalculations(self, parameters=None):
        # startDateFormat = "%Y-%m-%d %H:%M:%S";
        # currentdate = datetime.now().strftime(startDateFormat)
        # startSchedulingDate = datetime.strptime(currentdate, startDateFormat);
        # shedule(startSchedulingDate, parameters);

    def force(self):
        # self.runCalculations()
        return open(os.path.join('', 'html', 'index.html'))
    force.exposed = True

    def upload(self, **uploadedFile):
        string_data = uploadedFile['file'].fullvalue()
        input_file = csv.reader(StringIO.StringIO(string_data), csv.excel)
        handler = CustomRequestHandler()
        return handler.main(input_file)
    upload.exposed = True

if __name__ == '__main__':
    cherrypy.quickstart(Root(), '/', 'TimeTable.conf')
