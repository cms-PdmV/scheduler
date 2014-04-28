Scheduler
========

CMS PdmV cheduler service

How to run service in SLE6:

1) Download the source code
 a) source code stored on GitHub
    https://github.com/cms-PdmV/scheduler

2) Run database
 a) Run couchDB (install)

 b) Create databases, views, generate data from source database. Source database and other configurations can be changed at /scheduler/translator/Config.py file.
    To generate database and data run:
        bash ./scheduler/translator/bin/RunTranslator.sh

3) Run Web server
 a) Modify Config.py at /scheduler/Config.py

 b) Run cherrypy (install)

 c) Run web server
    python Root.py

