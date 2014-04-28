import socket

SRC_DB_NAME = "https://cms-pdmv-mcm.cern.ch/search?db_name=requests&page=-1"
DEST_HOST_NAME = socket.gethostname()
DEST_PORT = 80
DEST_DB_PORT = 5984
DEST_DB_NAME = "translator_dest_db"

WIDTH_CONST = 28800
MIN_PRIORITY = 1000
