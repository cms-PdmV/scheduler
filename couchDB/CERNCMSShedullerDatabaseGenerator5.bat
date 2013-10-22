#!/bin/bash

# This script is used to generate test database for the job scheduler on CMS detector at the LHC at CERN.

curl -X PUT http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "8", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "5", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "2", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "9", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "4", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "3", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "deadline": "2014-01-11 00:00:00", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-11 00:00:00", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-07 00:00:00", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "deadlineBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "deadline": "2014-01-03 00:00:00", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "0", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "0", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "5", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "5", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "7", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "7", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "2", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "5", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "1", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "7", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=2, minutes=30", "priority": "3", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "6", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "4", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group2]", "keyWords": "Bosons, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "6", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=2, minutes=30", "priority": "9", "groups": "[group2]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "30", "timePartCount": "days=0, hours=4, minutes=30", "priority": "2", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=4, minutes=30", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=3, minutes=45", "priority": "9", "groups": "[group1]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=4, minutes=30", "priority": "0", "groups": "[group1, group2]", "keyWords": "Bosons, Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "45", "timePartCount": "days=0, hours=3, minutes=45", "priority": "4", "groups": "[group1]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Bosons, Hadron"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1, group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Jean-Roch Vlimant", "eventsCount": "35", "timePartCount": "days=0, hours=4, minutes=30", "priority": "1", "groups": "[group1]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Rolf Heuer", "eventsCount": "20", "timePartCount": "days=0, hours=3, minutes=45", "priority": "3", "groups": "[group2]", "keyWords": "Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "30", "timePartCount": "days=0, hours=3, minutes=45", "priority": "5", "groups": "[group1, group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "1", "groups": "[group2]", "keyWords": "Hadron, Fermions"}' http://localhost:5984/cern_cms_sheduller5

curl -X POST -H "Content-Type: application/json" --data '{"type": "priorityBlock", "autor": "Giovanni Franzoni", "eventsCount": "40", "timePartCount": "days=0, hours=3, minutes=45", "priority": "8", "groups": "[group1, group2]", "keyWords": "Bosons"}' http://localhost:5984/cern_cms_sheduller5
