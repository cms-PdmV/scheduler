###############################################################################
###                       CHERRYPY CONFIGURATION                            ###
###############################################################################

SERVER_NAME = 'http://127.0.0.1:8080/';


###############################################################################
###                       COUCHDB CONFIGURATION                             ###
###############################################################################

SERVERDB_NAME = 'localhost';
SERVERDB_PORT = '5984';
DATABASE_NAME = 'cern_cms_sheduller4';

LINK_SORTED_DEADLINE_TIME_BLOCKS = '_design/deadline_time_blocks/_view/sorted';
LINK_SORTED_PRIORITY_TIME_BLOCKS = '_design/priority_time_blocks/_view/sorted';

LINK_ID_OF_PLANDED_TIME_BLOCKS = '_design/planedBlocks/_view/ids';
LINK_PLANDED_TIME_BLOCKS = '_design/planedBlocks/_view/all';



###############################################################################
###                       SCHEDULER CONFIGURATION                           ###
###############################################################################

EVENT_MAX = 1000;

SCHEDULER_OUTPUT_FILEJS = './javaScript/d3jsTimeTableData.js';