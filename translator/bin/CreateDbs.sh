#!/bin/bash

export HOST_ADDRESS=$(hostname)":5984"
export SRC_DB_NAME="translator_src_db"
export DEST_DB_NAME="translator_dest_db"

curl -X PUT http://$HOST_ADDRESS/$DEST_DB_NAME
curl -X PUT http://$HOST_ADDRESS/$DEST_DB_NAME/_design/deadline_time_blocks -d @/afs/cern.ch/user/j/jskripka/scheduler/translator/db/views/deadline_time_blocks.json
curl -X PUT http://$HOST_ADDRESS/$DEST_DB_NAME/_design/priority_time_blocks -d @/afs/cern.ch/user/j/jskripka/scheduler/translator/db/views/priority_time_blocks.json

curl -X PUT http://$HOST_ADDRESS/$SRC_DB_NAME
python /afs/cern.ch/user/j/jskripka/scheduler/translator/db/InsertDataFromJSON.py $HOST_ADDRESS $SRC_DB_NAME
