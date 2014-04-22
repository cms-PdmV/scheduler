#!/bin/bash

HOST_ADDRESS=$(hostname)":5984"
DEST_DB_NAME="translator_dest_db"

curl -X PUT http://$HOST_ADDRESS/$DEST_DB_NAME
curl -X PUT http://$HOST_ADDRESS/$DEST_DB_NAME/_design/deadline_time_blocks -d @/home/scheduler/translator/db/views/deadline_time_blocks.json
curl -X PUT http://$HOST_ADDRESS/$DEST_DB_NAME/_design/priority_time_blocks -d @/home/scheduler/translator/db/views/priority_time_blocks.json
