
#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;

int main ()
{
  string SERVERDB_NAME = "XXXXX VALUE XXXXX";
  string SERVERDB_PORT = "XXXXX VALUE XXXXX";
  string DATABASE_NAME = "XXXXX VALUE XXXXX";

  int DEADLINE_BLOCK_COUNT = 0;
  int PRIORITY_BLOCK_COUNT = 0;

  string OUTPUT_FILE = "XXXXX VALUE XXXXX";


  cout << "CERN - CMS Database generator" << endl;

  ofstream scriptFile;
  scriptFile.open (OUTPUT_FILE);

  string outputBash = "#!/bin/bash";
  scriptFile << outputBash << endl;
  string outputComment = "# This script is used to generate test database for the job scheduler on CMS detector at the LHC at CERN.";
  scriptFile << outputComment << endl;

  string url = "http://" + SERVERDB_NAME + ":" + SERVERDB_PORT;
  string curl = "curl -X";
  string createDatabase = curl + " PUT " + url;

  string outputCreateDatabase = createDatabase + "/" + DATABASE_NAME;
  scriptFile << outputCreateDatabase << endl;

  string insertToDatabase = curl + " POST -H \"Content-Type: application/json\" --data ";

  vector<string> autorsArray;
  autorsArray.push_back("Jean-Roch Vlimant");
  autorsArray.push_back("Giovanni Franzoni");
  autorsArray.push_back("Rolf Heuer");

  vector<string> eventsCountArray;
  eventsCountArray.push_back("20");
  eventsCountArray.push_back("30");
  eventsCountArray.push_back("35");
  eventsCountArray.push_back("40");
  eventsCountArray.push_back("45");

  vector<string> timePartCountArray;
  timePartCountArray.push_back("days=0, hours=2, minutes=30");
  timePartCountArray.push_back("days=0, hours=3, minutes=45");
  timePartCountArray.push_back("days=0, hours=4, minutes=30");

  vector<string> priorityArray;
  priorityArray.push_back("1");     priorityArray.push_back("2");
  priorityArray.push_back("3");     priorityArray.push_back("4");
  priorityArray.push_back("5");     priorityArray.push_back("6");
  priorityArray.push_back("7");     priorityArray.push_back("8");
  priorityArray.push_back("9");     priorityArray.push_back("10");

  vector<string> deadlineValArray;
  deadlineValArray.push_back("2014-01-03 00:00:00");
  deadlineValArray.push_back("2014-01-07 00:00:00");
  deadlineValArray.push_back("2014-01-11 00:00:00");

  vector<string> groupsArray;
  groupsArray.push_back("[group1]");
  groupsArray.push_back("[group2]");
  groupsArray.push_back("[group1, group2]");

  vector<string> keyWordsArray;
  keyWordsArray.push_back("Bosons, Hadron, Fermions");
  keyWordsArray.push_back("Bosons, Hadron");
  keyWordsArray.push_back("Bosons, Fermions");
  keyWordsArray.push_back("Hadron, Fermions");
  keyWordsArray.push_back("Bosons");
  keyWordsArray.push_back("Hadron");
  keyWordsArray.push_back("Fermions");


  for (int i = 0; i < DEADLINE_BLOCK_COUNT; i++) {

	  string typeVal = "deadlineBlock";
	  string autorVal = autorsArray[rand() % autorsArray.size()];
	  string eventsCountVal = eventsCountArray[rand() % eventsCountArray.size()];
	  string timePartCountVal = timePartCountArray[rand() % timePartCountArray.size()];
	  string priorityVal = priorityArray[rand() % priorityArray.size()];
	  string deadlineVal = deadlineValArray[rand() % deadlineValArray.size()];
	  string groupsVal = groupsArray[rand() % groupsArray.size()];
	  string keyWordsVal = keyWordsArray[rand() % keyWordsArray.size()];

	  string outputInsert = insertToDatabase +
		"'{" +
		  "\"type\": \"" + typeVal + "\", " +
		  "\"autor\": \"" + autorVal + "\", " +
  		  "\"eventsCount\": \"" + eventsCountVal + "\", " +
		  "\"timePartCount\": \"" + timePartCountVal + "\", " +
		  "\"deadline\": \"" + deadlineVal + "\", " +
		  "\"priority\": \"" + priorityVal + "\", " +
		  "\"groups\": \"" + groupsVal  + "\", " +
		  "\"keyWords\": \"" + keyWordsVal + "\"" +
		"}' " + url + "/" + DATABASE_NAME;

      scriptFile << outputInsert << endl;
  }

  for (int i = 0; i < PRIORITY_BLOCK_COUNT; i++) {

	  string typeVal = "priorityBlock";
	  string autorVal = autorsArray[rand() % autorsArray.size()];
	  string eventsCountVal = eventsCountArray[rand() % eventsCountArray.size()];
	  string timePartCountVal = timePartCountArray[rand() % timePartCountArray.size()];
	  string priorityVal = priorityArray[rand() % priorityArray.size()];
	  string deadlineVal = deadlineValArray[rand() % deadlineValArray.size()];
	  string groupsVal = groupsArray[rand() % groupsArray.size()];
	  string keyWordsVal = keyWordsArray[rand() % keyWordsArray.size()];

	  string outputInsert = insertToDatabase +
		"'{" +
		  "\"type\": \"" + typeVal + "\", " +
		  "\"autor\": \"" + autorVal + "\", " +
  		  "\"eventsCount\": \"" + eventsCountVal + "\", " +
		  "\"timePartCount\": \"" + timePartCountVal + "\", " +
		  "\"priority\": \"" + priorityVal + "\", " +
		  "\"groups\": \"" + groupsVal  + "\", " +
		  "\"keyWords\": \"" + keyWordsVal + "\"" +
		"}' " + url + "/" + DATABASE_NAME;

	  scriptFile << outputInsert << endl;
  }

  scriptFile.close();

  system("pause");
  return 0;
}



//#!/bin/bash
//# This script is used to generate test database for the job scheduler on CMS detector at the LHC at CERN.
 
//curl -X PUT http://localhost:5984/cern_pokus

//#curl -X POST http://localhost:5984/cern_pokus -d '{"type": "book", "author": "Jan Herout", "name": "Pascal pro zelenace"}'

//#curl -X POST http://localhost:5984/cern_pokus -d '{"type": "book", "author": "Jan Herout", "name": "C plus plus pro zelenace"}'

//curl -X POST -H "Content-Type: application/json" --data '{"type": "book", "author": "Jan Herout", "name": "Pascal pro zelenace"}' http://localhost:5984/cern_pokus

//curl -X POST -H "Content-Type: application/json" --data '{"type": "book", "author": "Jan Herout", "name": "C plus plus pro zelenace"}' http://localhost:5984/cern_pokus


//# Format databaze:
//# TimeBlock: deadlineTimeBlocks, priorityTimeBlocks

//# deadlineTimeBlocks
//# autor, eventsCount, timePartCount, deadline, priority, groups, keyWords

//# priorityTimeBlocks
//# autor, eventsCount, timePartCount, priority, groups, keyWords

//# lide