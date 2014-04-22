#!/bin/bash

HOST_ADDRESS=$(hostname)":5984"
DEST_DB_NAME="translator_dest_db"

curl -X DELETE http://$HOST_ADDRESS/$DEST_DB_NAME
/home/scheduler/translator/bin/CreateDestDb.sh
python /home/scheduler/translator/Translator.py
