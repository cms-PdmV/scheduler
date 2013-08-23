class Authentication(object):
    ANONYM = "anonym";
  
    def __init__(self):
      self.name = self.ANONYM;
      
    def check(self, name, password):
      if (name == "sbalcar"):
	  self.name = name;
	  return True;
	  
    def authorizationTimeTable(self):
      if (self.name == self.ANONYM):
	return False;
      else:
	return True;

authentication = Authentication();
