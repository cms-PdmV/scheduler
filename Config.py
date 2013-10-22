###############################################################################
###                       CHERRYPY CONFIGURATION                            ###
###############################################################################
import socket
SERVER_NAME = 'http://'+socket.gethostname()+':80/';


###############################################################################
###                       COUCHDB CONFIGURATION                             ###
###############################################################################

SERVERDB_NAME = 'localhost';
SERVERDB_PORT = '5984';
DATABASE_NAME = 'cern_cms_sheduller2';

LINK_SORTED_DEADLINE_TIME_BLOCKS = '_design/deadline_time_blocks/_view/sorted';
LINK_SORTED_PRIORITY_TIME_BLOCKS = '_design/priority_time_blocks/_view/sorted';

LINK_ID_OF_PLANDED_TIME_BLOCKS = '_design/planed_time_blocks/_view/ids';
LINK_PLANDED_TIME_BLOCKS = '_design/planed_time_blocks/_view/all';

PLANDED_DEADLINE_TIME_BLOCKS_TYPE = "planedDeadlineBlock";
PLANDED_PRIORITY_TIME_BLOCKS_TYPE = "planedPriorityBlock";



###############################################################################
###                       SCHEDULER CONFIGURATION                           ###
###############################################################################

EVENT_MAX = 1000;

#SCHEDULER_OUTPUT_FILEJS = './javaScript/d3jsTimeTableData.js';

DEBUG_MODE = False;
