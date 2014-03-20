import urllib2
import urllib
import json
import httplib
import sys

file_name = "../db/requests.json"
address = str(sys.argv[1])
db = "/"+str(sys.argv[2])

f = open(file_name, "r")
data = json.load(f)
f.close()

http = httplib.HTTPConnection(address)
header = {"Content-Type": "application/json"}

for value in data:
    http = httplib.HTTPConnection(address)
    http.request('POST', db, json.dumps(value), header)

response = http.getresponse()
print response.read()