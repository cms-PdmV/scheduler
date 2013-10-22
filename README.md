cheduler
========

CMS PdmV cheduler service

How to run service:

1) Run database
 a) Run couchDB (install)
    bash $ couchDB

 b) Create test databases and insert there generated data.
    bash $./couchDB/CERNCMSShedullerDatabaseGenerator{1-5}.bat

 c) Insert to each databases all Views which is described in file:
    CERNCMSShedullerDatabase.txt
     
    http://127.0.0.1:5984/_utils/ ->  View -> Temporaty wiev.. ->
    -> copy Map, Reduce function from file -> save

1) Run Web server
 a) Modife Config.py

 b) Run cherrypy (install)
    bash $ python Root.py

