class Authentication(object):
    ANONYM = "anonym";
  
    def __init__(self):
      self.USER_NAME = self.ANONYM;
      
    def check(self, name, password):
      if (name == "sbalcar"):
	  self.USER_NAME = name;
	  return True;

    def logOut(self):
      self.USER_NAME = self.ANONYM;
	  
    def authorizationTimeTable(self):
      if (self.USER_NAME == self.ANONYM):
	return False;
      else:
	return True;

authentication = Authentication();
