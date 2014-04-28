from Config import *

class DataParser(object):

	def transformTimeEvent(self, time_event):
		minutes = time_event / 60
		result_minutes = int(minutes) % 60
		hours = int(minutes) / 60
		result_hours = int(hours) % 24
		result_days = int(hours) / 24
		result = "days="+str(result_days)+", hours="+str(result_hours)+", minutes="+str(result_minutes)
		return result

	def calculatePriority(self, priority):
		result = priority
		if(result < 0):
			result = 0
		return int(result)

	def parseField(self, field):
		try:
			if(field < 1 or field == None ):
				result = None
			elif(isinstance(field, int) or isinstance(field, float)):
				result = field
			else:
				resultStr = field.replace(" ","")
				if(resultStr == ""):
					return None
				result = int(resultStr)
			return result
		except ValueError:
			return None
