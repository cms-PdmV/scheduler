#!/bin/bash
export HOST_ADDRESS=$(hostname)":5984"
./CERNCMSShedullerDatabaseGenerator1.bat
./CERNCMSShedullerDatabaseGenerator2.bat
./CERNCMSShedullerDatabaseGenerator3.bat
./CERNCMSShedullerDatabaseGenerator4.bat
./CERNCMSShedullerDatabaseGenerator5.bat