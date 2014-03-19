import httplib, json

class Couch:
    """Basic wrapper class for operations on a couchDB"""

    def __init__(self, host, port=5984, options=None):
        self.host = host
        self.port = port

    def connect(self):
        return httplib.HTTPConnection(self.host, self.port) # No close()

    # Database operations
    def createDb(self, dbName):
        """Creates a new database on the server"""
        result = self.put(''.join(['/',dbName,'/']), "")
        return result

    def deleteDb(self, dbName):
        """Deletes the database on the server"""
        result = self.delete(''.join(['/',dbName,'/']))
        return result

    def listDb(self):
        """List the databases on the server"""
        result = self.get('/_all_dbs')
        return result

    def infoDb(self, dbName):
        """Returns info about the couchDB"""
        result = self.get(''.join(['/', dbName, '/']))
        return result

    # Document operations
    def listDoc(self, dbName):
        """List all documents in a given database"""
        result = self.get(''.join(['/', dbName, '/', '_all_docs']))
        return result

    def openDoc(self, dbName, docId):
        """Open a document in a given database"""
        result = self.get(''.join(['/', dbName, '/', docId,]))
        return result

    def saveDoc(self, dbName, body, docId=None):
        """Save/create a document to/in a given database"""
        if docId:
            result = self.put(''.join(['/', dbName, '/', docId]), body)
        else:
            result = self.post(''.join(['/', dbName, '/']), body)
        return result

    def deleteDoc(self, dbName, docId):     
        # XXX Crashed if resource is non-existent; not so for DELETE on db. Bug?
        # XXX Does not work any more, on has to specify an revid 
        #     Either do html head to get the recten revid or provide it as parameter
        result = self.delete(''.join(['/', dbName, '/', docId]))
        return result

    # Basic http methods
    def get(self, uri):
        connection = self.connect()
        headers = {"Accept": "application/json"}
        connection.request("GET", uri, None, headers)
        return connection.getresponse()

    def post(self, uri, body):
        connection = self.connect()
        headers = {"Content-type": "application/json"}
        connection.request('POST', uri, body, headers)
        return connection.getresponse()

    def put(self, uri, body):
        connection = self.connect()
        if len(body) > 0:
            headers = {"Content-type": "application/json"}
            connection.request("PUT", uri, body, headers)
        else:
            connection.request("PUT", uri, body)
        return connection.getresponse()

    def delete(self, uri):
        connection = self.connect()
        connection.request("DELETE", uri)
        return connection.getresponse()

    def getAllDocs(self, dbName):
         result = self.get(''.join(['/', dbName, '/_all_docs?include_docs=true']))
         return json.loads(result.read())