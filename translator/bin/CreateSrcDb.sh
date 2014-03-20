#!/bin/bash

HOST_ADDRESS=$(hostname)":5984"
SRC_DB_NAME="translator_src_db"

curl -X PUT http://$HOST_ADDRESS/$SRC_DB_NAME
python /afs/cern.ch/user/j/jskripka/scheduler/translator/db/InsertDataFromJSON.py $HOST_ADDRESS $SRC_DB_NAME
