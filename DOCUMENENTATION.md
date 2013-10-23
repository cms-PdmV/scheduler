Brief documentation:

README file
 - includes instructions how to run the service

Root.py
 - crossroads for individual websites

Scheduler.py
 - arranges transform input tasks retrieved from a database
 - is calling insert tasks into the timetable
 - writes the planned timetable into the database 

Timetable.py
 - represents a data structure for timetable

HTMLPagesGenerator.py
 - generates websides from static HTML
 - each webside is generated as a string which is returned to Root.py

Authentication.py
 - verifies whether the user is entitled to see the webside

JavaScript - d3jsTimeTable.js
 - represents the clients data model
 - position recounting
 - HTML5 timetable visualization
