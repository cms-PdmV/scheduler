#!/usr/bin/python
# -*- coding: iso-8859-15 -*-

import cherrypy
import sys

import os
#from datetime import datetime
#import httplib, simplejson  # http://cheeseshop.python.org/pypi/simplejson
                            # Here only used for prettyprinting
#import json      
#import urllib2

import Authentication
from Authentication import *

import HTMLPagesGenerator
from HTMLPagesGenerator import *

import Scheduler
from Scheduler import *


class Stop(object):
    def index(self):
        return """STOPING""" + sys.exit()
    index.exposed = True


class WelcomePage(object):
    
    def index(self):
	return open(os.path.join('', 'html', 'welcome.html'));
    index.exposed = True


class LogInPage(object):

    def index(self, username=None, password=None):
	
	isLogged = authentication.check(username, password);

	if (isLogged):
           raise cherrypy.HTTPRedirect(SERVER_NAME + "timeTable/");
	else:
	  authentication.logOut();
	  generator = HTMLPagesGenerator();
	  return generator.generateLogInForm();
	  
    index.exposed = True


class TimeTablePage(object):

    def index(self):

	if not (authentication.authorizationTimeTable()):
           raise cherrypy.HTTPRedirect(SERVER_NAME + "logIn/");

	startDateStr = "2014-01-01 00:00:00";
	startDateFormat = "%Y-%m-%d %H:%M:%S";
	startSchedulingDate = datetime.strptime(startDateStr, startDateFormat);

	ATTEMPS = 1;
	measurement = "c(";
	for i in range(ATTEMPS):
	  timeBefore = datetime.now();
	  shedule(startSchedulingDate);  
	  timeAfter = datetime.now();

	  diffTime = timeAfter - timeBefore;
	  microseconds = diffTime.microseconds + 1000000*diffTime.seconds;
	  measurement += str(microseconds/1000);
	  if i != (ATTEMPS -1):
	     measurement += ", ";
	measurement += ")";

        print "Measurement:";	
	print measurement;

        generator = HTMLPagesGenerator();
        return generator.generateTimeTable();
    index.exposed = True

    def data(self):
	if not (authentication.authorizationTimeTable()):
           return "var data = [];";

        return data();
    data.exposed = True



class Root(object):

    stop = Stop();

    welcome = WelcomePage();
    logIn = LogInPage();
    timeTable = TimeTablePage();

    def __init__(self):
      generator = HTMLPagesGenerator();
      generator.generate();

    def index(self):
        return self.welcome.index();
    index.exposed = True

    def default(self):
        return "Page not Found!";
    default.exposed = True



if __name__ == '__main__':
  cherrypy.quickstart(Root(), '/', 'TimeTable.conf')
