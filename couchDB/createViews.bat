#!/bin/bash

curl -X PUT http://$HOST_ADDRESS/$DB_NAME/_design/deadline_time_blocks -d @views/deadline_time_blocks.json
curl -X PUT http://$HOST_ADDRESS/$DB_NAME/_design/priority_time_blocks -d @views/priority_time_blocks.json
curl -X PUT http://$HOST_ADDRESS/$DB_NAME/_design/planed_time_blocks -d @views/planed_time_blocks.json
curl -X PUT http://$HOST_ADDRESS/$DB_NAME/_design/event_max -d @views/event_max.json
