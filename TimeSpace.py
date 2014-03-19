
from datetime import date, datetime, time, timedelta

import Config
from Config import *


# Constants represent type of insert i-th task to
# timetable in actual deadline-space
INSERT_TYPE_RB = "RightBottom";
INSERT_TYPE_LT = "LeftTop";
INSERT_TYPE_LB = "LeftBottom";

# Index of the left part of interval in returned array
# array = interval.divideVertical(planedEndX, insertType)
DIVIDED_LEFT_INDEX = 0;
DIVIDED_RIGHT_INDEX = 1;
DIVIDED_BOTTOM_INDEX = 0;
DIVIDED_TOP_INDEX = 1;


# Class represents one 2D interval (rectangle) in timetable
class Interval:

    def __init__(self, width, height, startXposition, startYposition, space):
        self.topNeighbors = [];
        self.downNeighbors = [];
        self.leftNeighbors = [];
        self.rightNeighbors = [];
        self.width = width;
        self.height = height;
        self.startXposition = startXposition;
        self.startYposition = startYposition;
        self.isFree = True;
        self.dataObject = None;
        self.space = space;
        self.insertCounter = 0;

#       Order of neighbors in internal representation
#  A
#  |      -------->
#  |      |
#  |      |
#  |      v
#  |____________________>
#
    # Public function
    # Returns startX position of interval
    def startX(self):
        return self.startXposition;

    # Public function
    # Returns endX position of interval
    def endX(self):
        return self.startXposition + self.width;

    # Public function
    # Returns startY position of interval
    def startY(self):
        return self.startYposition;

    # Public function
    # Returns endY position of interval
    def endY(self):
        return self.startYposition + self.height;

    # Public function
    # Returns top neighbors between startX, endX
    def getTopNeighbors(self, startX, endX):
        return self.getHorizontalNeighborsBetween(startX, endX,
	    self.topNeighbors);

    # Public function
    # Returns down neighbors between startX, endX
    def getDownNeighbors(self, startX, endX):
        return self.getHorizontalNeighborsBetween(startX, endX,
	    self.downNeighbors);

    # Public function
    # Returns left neighbors between startY, endY
    def getLeftNeighbors(self, startY, endY):
        return self.getVerticalNeighborsBetween(startY, endY,
	    self.leftNeighbors);

    # Public function
    # Returns right neighbors between startY, endY
    def getRightNeighbors(self, startY, endY):
        return self.getVerticalNeighborsBetween(startY, endY,
	    self.rightNeighbors);

    # Private function
    # Returns horizontal neighbors between startX, endX
    def getHorizontalNeighborsBetween(self, startX, endX, neighbors):
        neighborsBetween = [];
        for neighborI in neighbors:
            startXBetween = (startX < neighborI.startX() and
		neighborI.startX() < endX);
            endXBetween = (startX < neighborI.endX() and
		neighborI.endX() < endX);
            blockAround = (neighborI.startX() <= startX and
		endX <= neighborI.endX());

            if (startXBetween or endXBetween or blockAround):
                neighborsBetween.append(neighborI);

        return neighborsBetween;

    # Private function
    # Returns vertical neighbors between startY, endY
    def getVerticalNeighborsBetween(self, startY, endY, neighbors):
        neighborsBetween = [];

        for neighborI in neighbors:
            startYBetween = (startY < neighborI.startY() and
		neighborI.startY() < endY);
            endYBetween = (startY < neighborI.endY() and
		neighborI.endY() < endY);
            blockAround = (neighborI.startY() <= startY and
		endY <= neighborI.endY());

            if (startYBetween or endYBetween or blockAround):
                neighborsBetween.append(neighborI);

        return neighborsBetween;

    # Public function
    # Divides horizontal interval by y coordinates
    def divideHorizontal(self, y, insertType):
        if not self.isFree:
	  print "Error - Program tried divide full block horizontaly.";

        isBetween = self.startY() < y and y < self.endY();
        if not isBetween:
	    print "Error - Horizontal division outside given area";
	    print " self.startY():" + str(self.startY());
	    print " y:" + str(y);
	    print " self.endY():" + str(self.endY());
            return None;

        widthTop = self.width;
        heightTop = self.endY() - y;
        startXpositionTop = self.startX();
        startYpositionTop = y;
        newTop = Interval(widthTop, heightTop, startXpositionTop,
	    startYpositionTop, self.space);

        widthBottom = self.width;
        heightBottom = y - self.startY();
        startXpositionBottom = self.startX();
        startYpositionBottom = self.startY();
        newBottom = Interval(widthBottom, heightBottom, startXpositionBottom,
	    startYpositionBottom, self.space);

        newTop.topNeighbors = self.topNeighbors;
        newTop.downNeighbors = [newBottom];
        newTop.leftNeighbors = self.getLeftNeighbors(y, self.endY());
        newTop.rightNeighbors = self.getRightNeighbors(y, self.endY());

        newBottom.topNeighbors = [newTop];
        newBottom.downNeighbors = self.downNeighbors;
        newBottom.leftNeighbors = self.getLeftNeighbors(self.startY(), y);
        newBottom.rightNeighbors = self.getRightNeighbors(self.startY(), y);

        newTop.insertNewIntervalAfterOldIntervalAtNeighbors(newTop, self);
        newBottom.insertNewIntervalAfterOldIntervalAtNeighbors(newBottom,
	    self);
        self.removeIntervalAtNeighbors(self);

        index = self.space.freeIntervals.index(self);
        self.space.freeIntervals.remove(self);

	if (insertType == INSERT_TYPE_RB):
	  self.space.freeIntervals.insert(index, newBottom);
	  self.space.freeIntervals.insert(index +1, newTop);
	elif (insertType == INSERT_TYPE_LB):
	  self.space.freeIntervals.insert(index, newBottom);
	  self.space.freeIntervals.insert(index +1, newTop);
	else:
	  print "Error - Undefined insertType";

        return [newBottom, newTop];

    # Public function
    # Divides vertical interval by x coordinates
    def divideVertical(self, x, insertType):
        if not self.isFree:
	    print "Error - Program tried divide full block verticaly.";

        isBetween = self.startX() <= x and x <= self.endX();
        if not isBetween:
	    print "Error - Vertical division outside given area";
	    print " self.startX():" + str(self.startX());
	    print " x:" + str(x);
	    print " self.endX():" + str(self.endX());
            return None;

        widthLeft = x - self.startX();
        heightLeft = self.height;
        startXpositionLeft = self.startX();
        startYpositionLeft = self.startY();
        newLeft = Interval(widthLeft, heightLeft, startXpositionLeft,
	    startYpositionLeft, self.space);

        widthRight = self.endX() - x;
        heightRight = self.height;
        startXpositionRight = x;
        startYpositionRight = self.startY();
        newRight = Interval(widthRight, heightRight, startXpositionRight,
	    startYpositionRight, self.space);

        newLeft.topNeighbors = self.getTopNeighbors(self.startX(), x);
        newLeft.downNeighbors = self.getDownNeighbors(self.startX(), x);
        newLeft.leftNeighbors = self.leftNeighbors;
        newLeft.rightNeighbors = [newRight];

        newRight.topNeighbors = self.getTopNeighbors(x, self.endX());
        newRight.downNeighbors = self.getDownNeighbors(x, self.endX());
        newRight.leftNeighbors = [newLeft];
        newRight.rightNeighbors =  self.rightNeighbors;

        newLeft.insertNewIntervalAfterOldIntervalAtNeighbors(newLeft, self);
        newRight.insertNewIntervalAfterOldIntervalAtNeighbors(newRight, self);
        self.removeIntervalAtNeighbors(self);

	self.insertSortLedtPart(newLeft, newRight, insertType);

        return [newLeft, newRight];

    # Private function
    def insertSortLedtPart(self, newLeft, newRight, insertType):

        index = self.space.freeIntervals.index(self);
        self.space.freeIntervals.remove(self);

	if (insertType == INSERT_TYPE_RB):
	   self.space.freeIntervals.insert(index, newRight);
	elif (insertType == INSERT_TYPE_LB):
	   self.space.freeIntervals.insert(index, newLeft);
	else:
	  print "Error - Undefined insertType";

	indexF = index;
        if (insertType == INSERT_TYPE_RB):
	   while indexF < len(self.space.freeIntervals):
	      interval = self.space.freeIntervals[indexF];

	      isIntervalXEqual = interval.endX() == newLeft.endX();
	      isIntervalXLess = interval.endX() < newLeft.endX();
	      isIntervalYGreater = interval.startY() > newLeft.startY();
	      if isIntervalXLess:
		  break;
	      if isIntervalXEqual and isIntervalYGreater:
		  break;
	      indexF +=1;

    	elif (insertType == INSERT_TYPE_LB):
	   while indexF < len(self.space.freeIntervals):
	      interval = self.space.freeIntervals[indexF];

	      isIntervalXEqual = interval.startX() == newRight.startX();
	      isIntervalXLess = interval.startX() < newRight.startX();
	      isIntervalYLess = interval.startY() > newRight.startY();
	      if not isIntervalXLess:
		  break;
	      if isIntervalXEqual and (not isIntervalYLess):
		  break;
	      indexF +=1;

	else:
	   print "Error - Undefined insertType";

	if (insertType == INSERT_TYPE_RB):
	  self.space.freeIntervals.insert(indexF, newLeft);
	elif (insertType == INSERT_TYPE_LB):
	   self.space.freeIntervals.insert(indexF, newRight);
	else:
	  print "Error - Undefined insertType";

    # Private function
    # Inserts pointer to new interval after pointer of old interval in each neighbor
    def insertNewIntervalAfterOldIntervalAtNeighbors(self, newInterval,
	oldInterval):
        for topNeighborI in self.topNeighbors:
            neighbors = topNeighborI.downNeighbors;
            self.insertValueBeforeValue(newInterval, oldInterval, neighbors);

        for downNeighborI in self.downNeighbors:
            neighbors = downNeighborI.topNeighbors;
            self.insertValueBeforeValue(newInterval, oldInterval, neighbors);

        for leftNeighborI in self.leftNeighbors:
            neighbors = leftNeighborI.rightNeighbors;
            self.insertValueBeforeValue(newInterval, oldInterval, neighbors);

        for rightNeighborI in self.rightNeighbors:
            neighbors = rightNeighborI.leftNeighbors;
            self.insertValueBeforeValue(newInterval, oldInterval, neighbors);

    # Private function
    # Inserts pointer to new interval before pointer of old interval in each neighbor
    def insertValueBeforeValue(self, valueToInsert, insertedValue, array):
        if not(insertedValue in array):
            return;
        if valueToInsert in array:
            return;
        index = array.index(insertedValue);
        array.insert(index, valueToInsert);

    # Private function
    # Remove pointers to this interval from each neighbors intervals
    def removeIntervalAtNeighbors(self, interval):
        for topNeighborI in self.topNeighbors:
            neighbors = topNeighborI.downNeighbors;
            if interval in neighbors:
              neighbors.remove(interval);

        for downNeighborI in self.downNeighbors:
            neighbors = downNeighborI.topNeighbors;
            if interval in neighbors:
	      neighbors.remove(interval);
        for leftNeighborI in self.leftNeighbors:
            neighbors = leftNeighborI.rightNeighbors;
            if interval in neighbors:
              neighbors.remove(interval);

        for rightNeighborI in self.rightNeighbors:
            neighbors = rightNeighborI.leftNeighbors;
            if interval in neighbors:
              neighbors.remove(interval);

    # Private function
    # Join self with interval
    def join(self, interval):

        if (interval == None):
            return self;

        for intervalI in self.leftNeighbors:
            if intervalI == interval:
                return self.joinWithLeftNeighbor(interval);

        for intervalI in self.rightNeighbors:
            if intervalI == interval:
                return interval.joinWithLeftNeighbor(self);

        for intervalI in self.topNeighbors:
            if intervalI == interval:
                return self.joinWithTopNeighbor(interval);

        for intervalI in self.downNeighbors:
            if intervalI == interval:
                return interval.joinWithTopNeighbor(self);


    # Private function
    # Join self with left neighbor interval
    def joinWithLeftNeighbor(self, interval):
        rightSize = interval.height == self.height;
        rightPosition = interval.endX() == self.startX();
        rightInput = rightSize and rightPosition;

	if not rightInput:
	    print "Error - Incorrect interval to left join";
	    print "self:";
	    self.printBlock();
	    print "interval:";
	    interval.printBlock();
	    return None;

        self.width += interval.width;
        self.startXposition = interval.startXposition;
        self.startYposition = interval.startYposition;

        interval.insertNewIntervalAfterOldIntervalAtNeighbors(self, interval);
        interval.removeIntervalAtNeighbors(interval);
        self.space.freeIntervals.remove(interval);

        self.leftNeighbors = interval.leftNeighbors;
        self.addRelationshipsOfNeighbors(self.topNeighbors,
	    interval.topNeighbors);
        self.addRelationshipsOfNeighbors(self.downNeighbors,
	    interval.downNeighbors);

        return self;

    # Private function
    # Join self with top neighbor interval
    def joinWithTopNeighbor(self, interval):
        rightSize = self.width == interval.width;
        rightPosition = (self.endY() == interval.startY() and
	    self.startX() == interval.startX());

        rightInput = rightSize and rightPosition;
        if not rightInput:
            return None;

        self.height += interval.height;

        interval.insertNewIntervalAfterOldIntervalAtNeighbors(self, interval);
        interval.removeIntervalAtNeighbors(interval);
        self.space.freeIntervals.remove(interval);

        self.topNeighbors = interval.topNeighbors;
        self.addRelationshipsOfNeighbors(self.leftNeighbors,
	    interval.leftNeighbors);
        self.addRelationshipsOfNeighbors(self.rightNeighbors,
	    interval.rightNeighbors);

        return self;

    # Private function
    # Merge neighbors by joining
    def addRelationshipsOfNeighbors(self, neighbors, neighborsToAdd):
        for neighborIndex in range(len(neighborsToAdd)):
            if neighborIndex == 0:
                last = neighbors[len(neighbors) -1]
                first = neighborsToAdd[0];
                if last == first:
                    continue;
            neighborI = neighborsToAdd[neighborIndex];
            neighbors.append(neighborI);

    # Private function
    # Cut free intervals by endY - start in actual interval
    def leftCut(self):
        if self.leftNeighbors == []:
           return;

        mostTopNeighbor = self.leftNeighbors[0];

	yToDivide = self.endY();
	if mostTopNeighbor.endY() == yToDivide:
	    mostTopNeighbor.leftCut();
            return;

        if mostTopNeighbor.isFree:
            btNeighbors = mostTopNeighbor.divideHorizontal(yToDivide,
		INSERT_TYPE_LB);
            upperDividedNeighbor = btNeighbors[DIVIDED_TOP_INDEX];
            upperDividedNeighbor.leftCut();

    # Private function
    def leftCut2(self):
        if self.leftNeighbors == []:
           return;

        size = len(self.leftNeighbors);
        mostDownNeighbor = self.leftNeighbors[size -1];

	yToDivide = self.startY();
        if mostDownNeighbor.startY() == yToDivide:
	    mostDownNeighbor.leftCut2();
            return;

        if mostDownNeighbor.isFree:
            btNeighbors = mostDownNeighbor.divideHorizontal(yToDivide,
		INSERT_TYPE_LB);
            upperDividedNeighbor = btNeighbors[DIVIDED_TOP_INDEX];
            upperDividedNeighbor.leftCut2();

    # Private function calling from inserting
    # Returns free width space from point [x, y], dependes on type of inserting
    def getWidthSpace(self, x, y, insertType):
	if (insertType == INSERT_TYPE_RB):
	    return x -self.startX();
	if (insertType == INSERT_TYPE_LT):
	    return self.endX() -x;
	if (insertType == INSERT_TYPE_LB):
	    return self.endX() -x;

    # Private function calling from inserting
    # Returns free height space from point [x, y], dependes on type of inserting
    def getHeightSpace(self, x, y, insertType):
	if (insertType == INSERT_TYPE_RB):
	    return self.endY() -y;
	if (insertType == INSERT_TYPE_LT):
	    return y -self.startY();
	if (insertType == INSERT_TYPE_LB):
	    return self.endY() -y;

    # Private function calling from inserting
    # Returns horizontal (left or right) neighbors, dependes on type of inserting
    def getHorizontalNeighbors(self, insertType):
	if (insertType == INSERT_TYPE_RB):
	    return self.leftNeighbors;
	if (insertType == INSERT_TYPE_LT or insertType == INSERT_TYPE_LB):
	    return self.rightNeighbors;

    # Private function calling from inserting
    # Returns vertical (top or down) neighbors, dependes on type of inserting
    def getVerticalNeighbors(self, insertType):
	if (insertType == INSERT_TYPE_RB or insertType == INSERT_TYPE_LB):
	    return self.topNeighbors;
	if (insertType == INSERT_TYPE_LT):
	    return self.downNeighbors;

    # Private function calling from inserting
    # Returns X next position for recursive inserting
    def getNewX(self, insertType):
	if (insertType == INSERT_TYPE_RB):
	  return self.startX();
	if (insertType == INSERT_TYPE_LT or insertType == INSERT_TYPE_LB):
	  return self.endX();

    # Private function calling from inserting
    # Returns Y next position for recursive inserting
    def getNewY(self, insertType):
	if (insertType == INSERT_TYPE_RB or insertType == INSERT_TYPE_LB):
	  return self.endY();
	if (insertType == INSERT_TYPE_LT):
	  return self.startY();

    # Private function
    # Returns neighbor which contains y
    def getHorizontalNeighbor(self, y, insertType):
	hNeighbors = self.getHorizontalNeighbors(insertType);

	index = 0;
	while index < len(hNeighbors):
	  firstIndex = 0;
	  lastIndex = len(hNeighbors) -1;
	  neighborS = hNeighbors[firstIndex +index];
	  neighborE = hNeighbors[lastIndex -index];

	  if (insertType == INSERT_TYPE_LB) or (insertType == INSERT_TYPE_RB):
	    if (neighborS.startY() <= y) and (y < neighborS.endY()):
	      return neighborS;
	    if (neighborE.startY() <= y) and (y < neighborE.endY()):
	      return neighborE;

	  if (insertType == INSERT_TYPE_LT):
	    if (neighborS.startY() < y) and (y <= neighborS.endY()):
	      return neighborS;
	    if (neighborE.startY() < y) and (y <= neighborE.endY()):
	      return neighborE;
	  index = index +1;

	return None;

    # Private function
    # Returns neighbor which contains x
    def getVerticalNeighbor(self, x, insertType):
	vNeighbors = self.getVerticalNeighbors(insertType);

	index = 0;
	while index < len(vNeighbors):
	  firstIndex = 0;
	  lastIndex = len(vNeighbors) -1;
	  neighborS = vNeighbors[firstIndex +index];
	  neighborE = vNeighbors[lastIndex -index];

	  if (insertType == INSERT_TYPE_LT or insertType == INSERT_TYPE_LB):
	    if (neighborS.startX() <= x) and (x < neighborS.endX()):
	      return neighborS;
	    if (neighborE.startX() <= x) and (x < neighborE.endX()):
	      return neighborE;
	  if (insertType == INSERT_TYPE_RB):
	    if (neighborS.startX() < x) and (x <= neighborS.endX()):
	      return neighborS;
	    if (neighborE.startX() < x) and (x <= neighborE.endX()):
	      return neighborE;

	  index = index +1;

	return None;

    # Private function
    # Test of free place in timetable to insert
    def couldBeInserted(self, width, height, x, y, insertType):
	if (not self.isFree):
	  return False;

	widthSpace = self.getWidthSpace(x, y, insertType);
	heightSpace = self.getHeightSpace(x, y, insertType);

	if (widthSpace >= width and heightSpace >= height):
	  return True;

	if (widthSpace < width and heightSpace < height):
            widthLeftOrRightIns = width -widthSpace;
            hightLeftOrRightIns = heightSpace;
	    hNeighbor = self.getHorizontalNeighbor(y, insertType);
	    if (hNeighbor == None):
	      return False;
	    xNew = self.getNewX(insertType);
            leftOrRightInserted = hNeighbor.couldBeInserted(widthLeftOrRightIns,
                hightLeftOrRightIns, xNew, y, insertType);

            widthTopIns = width;
            hightTopIns = height -heightSpace;
	    vNeighbor = self.getVerticalNeighbor(x, insertType);
	    if (vNeighbor == None):
	      return False;
	    yNew = self.getNewY(insertType);
            bottomOrTopInserted = vNeighbor.couldBeInserted(widthTopIns,
                hightTopIns, x, yNew, insertType);

	    return leftOrRightInserted and bottomOrTopInserted;


	if (widthSpace < width) and (heightSpace >= height):
            widthLeftIns = width -widthSpace;
            hightLeftIns = height;

	    hNeighbor = self.getHorizontalNeighbor(y, insertType);
	    if (hNeighbor == None):
	      return False;

	    xNew = self.getNewX(insertType);
            return hNeighbor.couldBeInserted(widthLeftIns,
                hightLeftIns, xNew, y, insertType);

	if (widthSpace >= width) and (heightSpace < height):
            widthTopIns = width;
            hightTopIns = height -heightSpace;

	    vNeighbor = self.getVerticalNeighbor(x, insertType);
	    if (vNeighbor == None):
	      return False;
	    yNew = self.getNewY(insertType);
            return vNeighbor.couldBeInserted(widthTopIns,
                hightTopIns, x, yNew, insertType);

	return False;


    # Private function
    # Insert task into bigger interval
    def insertingSmaller(self, width, height, x, y, insertType):

	widthSpace = self.getWidthSpace(x, y, insertType);
	heightSpace = self.getHeightSpace(x, y, insertType);

        goodHight = heightSpace >= height;
        goodWidth = widthSpace >= width;
        goodInput = goodHight and goodWidth;

        if (not goodInput):
            return None;

        if (insertType == INSERT_TYPE_RB):
	    planedStartX = x -width;
	    planedEndX = x;
	    planedTopY = y +height;
	    planedDownY = y;
        if (insertType == INSERT_TYPE_LT):
	    planedStartX = x;
	    planedEndX = x +width;
	    planedTopY = y;
	    planedDownY = y -height;
        if (insertType == INSERT_TYPE_LB):
	    planedStartX = x;
	    planedEndX = x +width;
	    planedTopY = y +height;
	    planedDownY = y;

	interval = self;
        if not (planedEndX == interval.endX()):
            lrInterval = interval.divideVertical(planedEndX, insertType);
            interval = lrInterval[DIVIDED_LEFT_INDEX];

	if not (planedStartX == interval.startX()):
            lrInterval = interval.divideVertical(planedStartX, insertType);
            interval = lrInterval[DIVIDED_RIGHT_INDEX];

        if not (planedTopY == interval.endY()):
            btInterval = interval.divideHorizontal(planedTopY, insertType);
            interval = btInterval[DIVIDED_BOTTOM_INDEX];

        if not (planedDownY == interval.startY()):
            btInterval = interval.divideHorizontal(planedDownY, insertType);
            interval = btInterval[DIVIDED_TOP_INDEX];

        return interval;


    # Private function
    # Insert task at x, y which have to be inside in this interval
    def inserting(self, width, height, x, y, insertType):

	widthSpace = self.getWidthSpace(x, y, insertType);
	heightSpace = self.getHeightSpace(x, y, insertType);

        if (widthSpace >= width and heightSpace >= height):
          return self.insertingSmaller(width, height, x, y, insertType);

        selfInserted = self;
        leftOrRightInserted = None;
        topOrBottomInserted = None;

        if (widthSpace < width) and (heightSpace < height):
            widthLeftOrRightIns = width -widthSpace;
            hightLeftOrRightIns = heightSpace;
	    hNeighbor = self.getHorizontalNeighbor(y, insertType);
	    xNew = self.getNewX(insertType);
            leftOrRightInserted = hNeighbor.inserting(widthLeftOrRightIns,
                hightLeftOrRightIns, xNew, y, insertType);

            widthBottomOrTopIns = width;
            hightBottomOrTopIns = height -heightSpace;
	    vNeighbor = self.getVerticalNeighbor(x, insertType);
	    yNew = self.getNewY(insertType);
            topOrBottomInserted = vNeighbor.inserting(widthBottomOrTopIns,
                hightBottomOrTopIns, x, yNew, insertType);

	    widthSelfIns = widthSpace;
	    hightSelfIns = heightSpace;
	    selfInserted = self.insertingSmaller(widthSelfIns, hightSelfIns,
		x, y, insertType);

	if (widthSpace < width) and (heightSpace >= height):
            widthLeftOrRightIns = width -widthSpace;
            hightLeftOrRightIns = height;
	    hNeighbor = self.getHorizontalNeighbor(y, insertType);
	    xNew = self.getNewX(insertType);
            leftOrRightInserted = hNeighbor.inserting(widthLeftOrRightIns,
                hightLeftOrRightIns, xNew, y, insertType);

	    widthSelfIns = widthSpace;
	    hightSelfIns = height;
	    selfInserted = self.insertingSmaller(widthSelfIns, hightSelfIns,
		x, y, insertType);

	if (widthSpace >= width) and (heightSpace < height):
            widthBottomOrTopIns = width;
            hightBottomOrTopIns = height -heightSpace;
	    vNeighbor = self.getVerticalNeighbor(x, insertType);
	    yNew = self.getNewY(insertType);
            topOrBottomInserted = vNeighbor.inserting(widthBottomOrTopIns,
                hightBottomOrTopIns, x, yNew, insertType);

	    widthSelfIns = width;
	    hightSelfIns = heightSpace;
	    selfInserted = self.insertingSmaller(widthSelfIns, hightSelfIns,
		x, y, insertType);

        bottomInserted = selfInserted.join(leftOrRightInserted);
        return bottomInserted.join(topOrBottomInserted);


    # Public function
    # Insert one dataObject into Right Bottom corner
    def insertRightBottom(self, width, height, dataObject):

        couldBeInserted = self.couldBeInserted(width, height, self.endX(),
	    self.startY(), INSERT_TYPE_RB);
        if not couldBeInserted :
            return None;

        inserted = self.inserting(width, height, self.endX(), self.startY(),
	    INSERT_TYPE_RB);
        if (inserted == None):
	    print "Error - InsertRightBottom";
            return None;
#TODO:
#        inserted.rightCut(inserted.endY());
#        inserted.rJoinTopNeighbors();

        self.space.freeIntervals.remove(inserted);
        self.space.addedDeadlineIntervals.append(inserted);
        inserted.isFree = False;
        inserted.dataObject = dataObject;

        return inserted;

    # Public function
    # Insert one dataObject into Left Top corner
    def insertLeftTop(self, width, height, dataObject):

        couldBeInserted = self.couldBeInserted(width, height, self.startX(),
	    self.endY(), INSERT_TYPE_LT);
        if not couldBeInserted :
            return None;

        inserted = self.inserting(width, height, self.startX(), self.endY(),
	    INSERT_TYPE_LT);
        if (inserted == None):
	    print "Error - InsertLeftTop";
            return None;
#TODO:
#        inserted.rightCut(inserted.endY());
#        inserted.rJoinTopNeighbors();

        self.space.freeIntervals.remove(inserted);
        self.space.addedPriorityIntervals.append(inserted);
        inserted.isFree = False;
        inserted.dataObject = dataObject;

        return inserted;


    # Public function
    # Insert one dataObject into Left Bottom corner
    def insertLeftBottom(self, width, height, dataObject):
        couldBeInserted = self.couldBeInserted(width, height, self.startX(),
	    self.startY(), INSERT_TYPE_LB);
        if not couldBeInserted :
            return None;

        inserted = self.inserting(width, height, self.startX(), self.startY(),
	    INSERT_TYPE_LB);
        if (inserted == None):
	    print "Error - InsertLeftBottom";
            return None;
#TODO:
#        Make at right down cornor a cut down

        self.space.freeIntervals.remove(inserted);
        self.space.addedPriorityIntervals.append(inserted);
        inserted.isFree = False;
        inserted.dataObject = dataObject;

        return inserted;

    # Public function
    # Print information about this blocks
    def printBlock(self):
        print "StartX: " + str(self.startX());
        print "StartY: " + str(self.startY());
        print "EndX: " + str(self.endX());
        print "EndY: " + str(self.endY());
        print "TopNeighbors:" + str(len(self.topNeighbors));
        print "DownNeighbors:" + str(len(self.downNeighbors));
        print "LeftNeighbors:" + str(len(self.leftNeighbors));
        print "RightNeighbors:" + str(len(self.rightNeighbors));


# Class represents one 2D deadline-space in timetable
# deadline-space = part of timetable between two deadlines
class Space:
    def __init__(self, width, height, zeroX, zeroY):
	interval = Interval(width, height, zeroX, zeroY, self);
	self.freeIntervals = [interval];
	self.addedDeadlineIntervals = [];
	self.addedPriorityIntervals = [];

    # Public function
    # Insert one dataObject into Right Bottom corner
    def insertRightBottom(self, width, height, dataObject):
        for intervalI in self.freeIntervals:
            inserted = intervalI.insertRightBottom(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
	        self.test();
                return True;
        return False;

    # Public function
    # Insert one dataObject into Left Top corner
    def insertLeftTop(self, width, height, dataObject):
        self.test();
        for indexI in range(len(self.freeIntervals)):
	    indexLast = len(self.freeIntervals) -1;
	    intervalI = self.freeIntervals[indexLast -indexI];

            inserted = intervalI.insertLeftTop(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
	        self.test();
                return True;
        return False;

    # Public function
    # Insert one dataObject into Left Bottom corner
    def insertLeftBottom(self, width, height, dataObject):
        self.test();
#        self.sort();
        for indexI in range(len(self.freeIntervals)):
	    intervalI = self.freeIntervals[indexI];
            inserted = intervalI.insertLeftBottom(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
                return True;
        return False;

    # Private function
    # Transformation between left-bottom and right-bottom insert
    def transformation(self):
	self.sort();

        for addedIntervalI in self.addedDeadlineIntervals:
            addedIntervalI.leftCut();
        for addedIntervalI in self.addedDeadlineIntervals:
            addedIntervalI.leftCut2();

    # Private function
    # Sorting free intervals for right-bottom insert
    def sort(self):
        freeIntervalsSorted = [];
        while self.freeIntervals != []:
	  smallest = self.freeIntervals[0];
	  for freeIntervalI in self.freeIntervals:
	    lessX = freeIntervalI.startX() < smallest.startX();
	    equalX = freeIntervalI.startX() == smallest.startX();
	    lessY = freeIntervalI.startY() < smallest.startY();
	    if lessX:
	      smallest = freeIntervalI;
	    if (equalX and lessY):
	      smallest = freeIntervalI;
	  freeIntervalsSorted.append(smallest);
	  self.freeIntervals.remove(smallest);

	self.freeIntervals = freeIntervalsSorted;


    # Private function
    # Tests Pointers between intervals
    def test(self):
      if not DEBUG_MODE:
	return;

      print "TEST";
      for freeIntervalI in self.freeIntervals:
	for leftNeighborI in freeIntervalI.leftNeighbors:
	  if not (freeIntervalI in leftNeighborI.rightNeighbors):
	    print "Error";
	for rightNeighborI in freeIntervalI.rightNeighbors:
	  if not (freeIntervalI in rightNeighborI.leftNeighbors):
	    print "Error";
	for topNeighborI in freeIntervalI.topNeighbors:
	  if not (freeIntervalI in topNeighborI.downNeighbors):
	    print "Error";
	for downNeighborI in freeIntervalI.downNeighbors:
	  if not (freeIntervalI in downNeighborI.topNeighbors):
	    print "Error";

    # Public function
    # Print all intervals in timetable
    def printFreeIntervals(self):
        print "----------BlocksFree----------------------------";
        i = 0;
        for freeIntervalIndex in range(len(self.freeIntervals)):
            freeIntervalI = self.freeIntervals[freeIntervalIndex];
            print "BlockFree: " +str(i);
            freeIntervalI.printBlock();
            i +=1;
	return;
        print "----------DeadlineIntervals---------------------";
        j = 0;
        for addedIntervalIndex in range(len(self.addedDeadlineIntervals)):
            addedIntervalI = self.addedDeadlineIntervals[addedIntervalIndex];
            print "DeadlineInterval: " +str(j);
            addedIntervalI.printBlock();
            j +=1;

        print "----------PriorityIntervals---------------------";
        j = 0;
        for addedIntervalIndex in range(len(self.addedPriorityIntervals)):
            addedIntervalI = self.addedPriorityIntervals[addedIntervalIndex];
            print "PriorityInterval: " +str(j);
            addedIntervalI.printBlock();
            j +=1;


# Class represents one 2D deadline-space in timetable
# deadline-space = part of timetable between two deadlines
# This class is only wrapper of class Space
class TimeSpace:
    def __init__(self, startDate, endDate, eventsNumber):
        width = endDate -startDate;
        height = eventsNumber;
        zeroX = timedelta(minutes=0);
        zeroY = 0;
        self.space = Space(width, height, zeroX, zeroY);
        self.startDate = startDate;

    # Public function
    # Insert one dataObject into Right Bottom corner
    def insertRightBottom(self, inputDeadlineBlockModel):
        eventsCount = inputDeadlineBlockModel.eventsCount;
        timePartCount = inputDeadlineBlockModel.timePartCount;

        return self.space.insertRightBottom(timePartCount, eventsCount,
	    inputDeadlineBlockModel);

    # Public function
    # Insert one dataObject into Left Top corner
    def insertLeftTop(self, inputPriorityBlockModel):
        eventsCount = inputPriorityBlockModel.eventsCount;
        timePartCount = inputPriorityBlockModel.timePartCount;

        return self.space.insertLeftTop(timePartCount, eventsCount,
	    inputPriorityBlockModel);

    # Public function
    # Insert one dataObject into Left Bottom corner
    def insertLeftBottom(self, inputPriorityBlockModel):
        eventsCount = inputPriorityBlockModel.eventsCount;
        timePartCount = inputPriorityBlockModel.timePartCount;

        return self.space.insertLeftBottom(timePartCount, eventsCount,
	    inputPriorityBlockModel);

    # Public function
    # Transformation between left-bottom and right-bottom insert
    def transformation(self):
	self.space.transformation();

    # Public function
    # Returns deadline intervals at timetable
    def getDeadlineIntervals(self):
        return self.space.addedDeadlineIntervals;

    # Public function
    # Returns priority intervals at timetable
    def getPriorityIntervals(self):
        return self.space.addedPriorityIntervals;

    # Public function
    # Returns free intervals at timetable
    def getFreeIntervals(self):
        return self.space.freeIntervals;

    # Public function
    # Prints free intervals at timetable
    def printFreeIntervals(self):
        self.space.printFreeIntervals();

