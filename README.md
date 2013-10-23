cheduler
========

CMS PdmV cheduler service

How to run service:

1) Download the source code
 a) source code stored on GitHub
    https://github.com/cms-PdmV/cheduler

2) Run database
 a) Run couchDB (install)
    bash $ couchDB

 b) Create test databases and insert there generated data.
    bash $./couchDB/CERNCMSShedullerDatabaseGenerator{1-5}.bat

 c) Insert to each databases all Views which is described in file:
    CERNCMSShedullerDatabase.txt
     
    http://127.0.0.1:5984/_utils/ ->  View -> Temporaty wiev.. ->
    -> copy Map, Reduce function from file -> save

3) Run Web server
 a) Modife Config.py

 b) Run cherrypy (install)
    bash $ python Root.py

