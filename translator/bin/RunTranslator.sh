#!/bin/bash

HOST_ADDRESS=$(hostname)":5984"
DEST_DB_NAME="translator_dest_db"

curl -X DELETE http://$HOST_ADDRESS/$DEST_DB_NAME
/afs/cern.ch/user/j/jskripka/scheduler/translator/bin//CreateDestDb.sh
python /afs/cern.ch/user/j/jskripka/scheduler/translator/Translator.py
