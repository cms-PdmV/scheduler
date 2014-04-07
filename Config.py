###############################################################################
###                       CHERRYPY CONFIGURATION                            ###
###############################################################################
import socket
SERVER_NAME = 'http://'+socket.gethostname()+':80/'


###############################################################################
###                       COUCHDB CONFIGURATION                             ###
###############################################################################

SERVERDB_NAME = socket.gethostname()
SERVERDB_PORT = '5984'
DATABASE_NAME = 'translator_dest_db'

CSV_FOLDER_NAME = 'csvData'
SOURCE_CONFIG = "SourceConfig"

LINK_SORTED_DEADLINE_TIME_BLOCKS = '_design/deadline_time_blocks/_view/sorted'
LINK_SORTED_PRIORITY_TIME_BLOCKS = '_design/priority_time_blocks/_view/sorted'

PLANDED_DEADLINE_TIME_BLOCKS_TYPE = "planedDeadlineBlock"
PLANDED_PRIORITY_TIME_BLOCKS_TYPE = "planedPriorityBlock"

###############################################################################
###                       SCHEDULER CONFIGURATION                           ###
###############################################################################

EVENT_MAX = 86487
DEBUG_MODE = False
