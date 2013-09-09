
from datetime import date, datetime, time, timedelta

import Config
from Config import *


INSERT_TYPE_RB = "RightBottom";
INSERT_TYPE_LT = "LeftTop";
INSERT_TYPE_LB = "LeftBottom";

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
    def startX(self):
        return self.startXposition;

    # Public function
    def endX(self):
        return self.startXposition + self.width;

    # Public functiondeadlineSpaces
    def startY(self):
        return self.startYposition;

    # Public function
    def endY(self):
        return self.startYposition + self.height;

    # Public function
    def getTopNeighbors(self, startX, endX):
        return self.getHorizontalNeighborsBetween(startX, endX,
	    self.topNeighbors);

    # Public function
    def getDownNeighbors(self, startX, endX):
        return self.getHorizontalNeighborsBetween(startX, endX,
	    self.downNeighbors);

    # Public function
    def getLeftNeighbors(self, startY, endY):
        return self.getVerticalNeighborsBetween(startY, endY,
	    self.leftNeighbors);

    # Public function
    def getRightNeighbors(self, startY, endY):
        return self.getVerticalNeighborsBetween(startY, endY,
	    self.rightNeighbors);

    # Private function
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
    def divideHorizontal(self, y, insertType):
        if not self.isFree:
	  print "Error - tried to horizontal divide full block.";
      
        isBetween = self.startY() < y and y < self.endY();
        if not isBetween:
	    print "self.startY():" + str(self.startY());
	    print "y:" + str(y);
	    print "self.endY():" + str(self.endY());
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
        
        if (insertType == INSERT_TYPE_RB or insertType == INSERT_TYPE_LT):
	  self.space.freeIntervals.insert(index, newBottom);
	  self.space.freeIntervals.insert(index +1, newTop);
	elif (insertType == INSERT_TYPE_LB):
	  self.space.freeIntervals.insert(index, newTop);
	  self.space.freeIntervals.insert(index +1, newBottom);
	else:
	  print "Chyba";
	  
        return [newBottom, newTop];

    # Public function
    def divideVertical(self, x, insertType):
        if not self.isFree:
	  print "Error - tried to vertical divide full block.";
	  
        isBetween = self.startX() < x and x < self.endX();
        if not isBetween:
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
	  while index < len(self.space.freeIntervals):
	      interval = self.space.freeIntervals[index];
	      
	      if interval.endX() < newLeft.endX():
		  break;

	      isIntervalEqual = interval.endX() == newLeft.endX();
	      isIntervalGreater = interval.startY() > newLeft.startY();
	      if isIntervalEqual and isIntervalGreater:
		  break;

	      index +=1;
	  self.space.freeIntervals.insert(index, newLeft);insertType
	  
	elif (insertType == INSERT_TYPE_LB):
	  self.space.freeIntervals.insert(index, newLeft);
	  while index >= 0:
	      interval = self.space.freeIntervals[index];
	      
	      if interval.startX() > newRight.startX():
		  break;

	      isIntervalEqual = interval.startX() == newRight.startX();
	      isIntervalLess = interval.startY() < newRight.startY();
	      if isIntervalEqual and isIntervalLess:
		  break;

	      index -=1;
	  self.space.freeIntervals.insert(index, newRight);

	else:
	  print "chyba";
	  
    # Private function
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
    def insertValueBeforeValue(self, valueToInsert, insertedValue, array):
        if not(insertedValue in array):
            return;
        if valueToInsert in array:
            return;
        index = array.index(insertedValue);
        array.insert(index, valueToInsert);

    # Private function
    def removeIntervalAtNeighbors(self, interval):
        for topNeighborI in self.topNeighbors:
            neighbors = topNeighborI.downNeighbors;
            neighbors.remove(interval);

        for downNeighborI in self.downNeighbors:
            neighbors = downNeighborI.topNeighbors;
	    neighbors.remove(interval);
        for leftNeighborI in self.leftNeighbors:
            neighbors = leftNeighborI.rightNeighbors;
            neighbors.remove(interval);

        for rightNeighborI in self.rightNeighbors:
            neighbors = rightNeighborI.leftNeighbors;
            neighbors.remove(interval);

    # Private function
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
    def joinWithLeftNeighbor(self, interval):
        rightSize = interval.height == self.height;
        rightPosition = interval.endX() == self.startX();
        rightInput = rightSize and rightPosition;

        if not rightInput:
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
    def addRelationshipsOfNeighbors(self, neighbors, neighborsToAdd):
        for neighborIndex in range(len(neighborsToAdd)):
            if neighborIndex == 0:
                last = neighbors[len(neighbors) -1]
                first = neighborsToAdd[0];                
                if last == first:
                    continue;                    
            neighborI = neighborsToAdd[neighborIndex];
            neighbors.append(neighborI);

    # Public function
    def equals(self, interval):
        sameStartX = self.startX() == interval.startX();
        sameStartY = self.startY() == interval.startY();
        sameEndX = self.endX() == interval.endX();
        sameEndY = self.endY() == interval.endY();

        return sameStartX and sameStartY and sameEndX and sameEndY;
      
 
    # Private function
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
            upperDividedNeighbor = btNeighbors[1];
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
            upperDividedNeighbor = btNeighbors[1];
            upperDividedNeighbor.leftCut2();
            
    # Private function
    def joinWithRightFreeNeighbor(self):
        rightNeighbor = self.rightNeighbors[0]; 
        if (not rightNeighbor.isFree):
            return None;

        return self.join(rightNeighbor);

    # Private function
    def rJoinTopNeighbors(self):        
        i = 0;
        while True:
            if i == len(self.topNeighbors) -1:
                break;

            topNeighborI = self.topNeighbors[i];

            joined = topNeighborI.joinWithRightFreeNeighbor();
            if (joined != None):
                i = i + 1;

    def getWidthSpace(self, x, y, insertType):
	if (insertType == INSERT_TYPE_RB):
	    return x -self.startX();
	if (insertType == INSERT_TYPE_LT):
	    return self.endX() -x;
	if (insertType == INSERT_TYPE_LB):
	    return self.endX() -x;

    def getHeightSpace(self, x, y, insertType):
	if (insertType == INSERT_TYPE_RB):
	    return self.endY() -y;
	if (insertType == INSERT_TYPE_LT):
	    return y -self.startY();
	if (insertType == INSERT_TYPE_LB):
	    return self.endY() -y;

    def getHorizontalNeighbors(self, insertType):
	if (insertType == INSERT_TYPE_RB):
	    return self.leftNeighbors;
	if (insertType == INSERT_TYPE_LT or insertType == INSERT_TYPE_LB):
	    return self.rightNeighbors;

    def getVerticalNeighbors(self, insertType):
	if (insertType == INSERT_TYPE_RB or insertType == INSERT_TYPE_LB):
	    return self.topNeighbors;
	if (insertType == INSERT_TYPE_LT):
	    return self.downNeighbors;

    def getHorizontalIndex(self, insertType):
	if (insertType == INSERT_TYPE_RB):
	  return len(self.leftNeighbors) -1;
	if (insertType == INSERT_TYPE_LT):
	  return 0;
	if (insertType == INSERT_TYPE_LB):
	  return len(self.rightNeighbors) -1;

    def getVerticalIndex(self, insertType):
	if (insertType == INSERT_TYPE_RB):
	    return len(self.topNeighbors) -1;
	if (insertType == INSERT_TYPE_LT or insertType == INSERT_TYPE_LB):
	    return 0;
      
    def getNewX(self, insertType):
	if (insertType == INSERT_TYPE_RB):
	  return self.startX();
	if (insertType == INSERT_TYPE_LT or insertType == INSERT_TYPE_LB):
	  return self.endX();
      
    def getNewY(self, insertType):
	if (insertType == INSERT_TYPE_RB or insertType == INSERT_TYPE_LB):
	  return self.endY();
	if (insertType == INSERT_TYPE_LT):
	  return self.startY();


    def getHorizontalNeighbor(self, y, insertType):
	hNeighbors = self.getHorizontalNeighbors(insertType);
	hIndex = self.getHorizontalIndex(insertType);
	if hNeighbors == []:
	  return None;

	fromZerotoSize = hIndex == 0;
	if fromZerotoSize:
	  while hIndex < len(hNeighbors):
	    hNeighborI = hNeighbors[hIndex];
	    hIndex = hIndex +1;
	    if (hNeighborI.startY() <= y) and (y < hNeighborI.endY()):
	      return hNeighborI;
	else:
	  while hIndex >= 0:
	    hNeighborI = hNeighbors[hIndex];
	    hIndex = hIndex -1;
	    if (hNeighborI.startY() < y) and (y <= hNeighborI.endY()):
	      return hNeighborI;

	return None;

    def getVerticalNeighbor(self, x, insertType):
	vNeighbors = self.getVerticalNeighbors(insertType);
	vIndex = self.getVerticalIndex(insertType);
	if vNeighbors == []:
	  return None;

	fromZerotoSize = vIndex == 0;
	if fromZerotoSize:
	  while vIndex < len(vNeighbors):
	    vNeighborI = vNeighbors[vIndex];
	    vIndex = vIndex +1;
	    if (vNeighborI.startX() <= x) and (x < vNeighborI.endX()):
	      return vNeighborI;
	else:
	  while vIndex >= 0:
	    vNeighborI = vNeighbors[vIndex];
	    vIndex = vIndex -1;
	    if (vNeighborI.startX() < x) and (x <= vNeighborI.endX()):
	      return vNeighborI;

	return None;

    # Private function
    def couldBeInserted(self, width, height, x, y, insertType):

	if (not self.isFree):
	  return False;

	widthSpace = self.getWidthSpace(x, y, insertType);
	heightSpace = self.getHeightSpace(x, y, insertType);

	if (widthSpace >= width and heightSpace >= height):
	  return True;

	if (widthSpace < width and heightSpace < height):
            widthLeftIns = width -widthSpace;
            hightLeftIns = heightSpace;

	    hNeighbor = self.getHorizontalNeighbor(y, insertType);
	    if (hNeighbor == None):
	      return False;

	    xNew = self.getNewX(insertType);
            leftInserted = hNeighbor.couldBeInserted(widthLeftIns,
                hightLeftIns, xNew, y, insertType);


            widthTopIns = width;
            hightTopIns = height -heightSpace;

	    vNeighbor = self.getVerticalNeighbor(x, insertType);
	    if (vNeighbor == None):
	      return False;

	    yNew = self.getNewY(insertType);
            topInserted = vNeighbor.couldBeInserted(widthTopIns,
                hightTopIns, x, yNew, insertType);

	    return leftInserted and topInserted;


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
            lrI = interval.divideVertical(planedEndX, insertType);
            interval = lrI[0];

	if not (planedStartX == interval.startX()):
            lrI = interval.divideVertical(planedStartX, insertType);
            interval = lrI[1];

        if not (planedTopY == interval.endY()):
            btI = interval.divideHorizontal(planedTopY, insertType);
            interval = btI[0];

        if not (planedDownY == interval.startY()):            
            btI = interval.divideHorizontal(planedDownY, insertType);
            interval = btI[1];

        return interval;


    # Private function
    def inserting(self, width, height, x, y, insertType):
	
	widthSpace = self.getWidthSpace(x, y, insertType);
	heightSpace = self.getHeightSpace(x, y, insertType);
  	
        if (widthSpace >= width and heightSpace >= height):
          return self.insertingSmaller(width, height, x, y, insertType);

        selfInterval = self;
        leftInserted = None;
        topInserted = None;

        if (widthSpace < width) and (heightSpace < height):
            widthLeftIns = width -widthSpace;
            hightLeftIns = heightSpace;
      
	    hNeighbor = self.getHorizontalNeighbor(y, insertType);
	    xNew = self.getNewX(insertType);
            leftInserted = hNeighbor.inserting(widthLeftIns, hightLeftIns,
		xNew, y, insertType);

            widthTopIns = width;
            hightTopIns = height -heightSpace;

	    vNeighbor = self.getVerticalNeighbor(x, insertType);
	    yNew = self.getNewY(insertType);
            topInserted = vNeighbor.inserting(widthTopIns, hightTopIns,
		x, yNew, insertType);

	if (widthSpace < width) and (heightSpace >= height):
            widthLeftIns = width -widthSpace;
            hightLeftIns = height;
            
	    hNeighbor = self.getHorizontalNeighbor(y, insertType);
	    xNew = self.getNewX(insertType);
            leftInserted = hNeighbor.inserting(widthLeftIns, hightLeftIns,
		xNew, y, insertType);

	    widthTopIns = widthSpace;
	    hightTopIns = height;
	    selfInterval = self.insertingSmaller(widthTopIns, hightTopIns,
		x, y, insertType);
	      
	if (widthSpace >= width) and (heightSpace < height):
            widthTopIns = width;
            hightTopIns = height -heightSpace;

	    vNeighbor = self.getVerticalNeighbor(x, insertType);
	    yNew = self.getNewY(insertType);
            topInserted = vNeighbor.inserting(widthTopIns, hightTopIns,
		x, yNew, insertType);

	    widthLeftIns = width;
	    hightLeftIns = heightSpace;
	    selfInterval = self.insertingSmaller(widthLeftIns, hightLeftIns,
		x, y, insertType);
  
        bottomInserted = selfInterval.join(leftInserted);
        inserted = bottomInserted.join(topInserted);
        return inserted;


    # Public function
    def insertRightBottom(self, width, height, dataObject):
	
        couldBeInserted = self.couldBeInserted(width, height, self.endX(),
	    self.startY(), INSERT_TYPE_RB);
        if not couldBeInserted :
            return None;

        inserted = self.inserting(width, height, self.endX(), self.startY(),
	    INSERT_TYPE_RB);        
        if (inserted == None):
	    print "error insertRightBottom";
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
    def insertLeftTop(self, width, height, dataObject):
        
        couldBeInserted = self.couldBeInserted(width, height, self.startX(),
	    self.endY(), INSERT_TYPE_LT);
        if not couldBeInserted :
            return None;

        inserted = self.inserting(width, height, self.startX(), self.endY(),
	    INSERT_TYPE_LT);        
        if (inserted == None):
	    print "insertLeftTop";
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
    def insertLeftBottom(self, width, height, dataObject):
        couldBeInserted = self.couldBeInserted(width, height, self.startX(),
	    self.startY(), INSERT_TYPE_LB);
        if not couldBeInserted :
            return None;

        inserted = self.inserting(width, height, self.startX(), self.startY(),
	    INSERT_TYPE_LB);        
        if (inserted == None):
	    print "insertLeftBottom";
            return None;
#TODO:
#        inserted.rightCut(inserted.endY());
#        inserted.rJoinTopNeighbors();

        self.space.freeIntervals.remove(inserted);
        self.space.addedPriorityIntervals.append(inserted);
        inserted.isFree = False;
        inserted.dataObject = dataObject;
        
        return inserted;


    def printBlock(self):
        print "StartX: " + str(self.startX());
        print "StartY: " + str(self.startY());
        print "EndX: " + str(self.endX());
        print "EndY: " + str(self.endY());
        print "TopNeighbors:" + str(len(self.topNeighbors));
        print "DownNeighbors:" + str(len(self.downNeighbors));
        print "LeftNeighbors:" + str(len(self.leftNeighbors));
        print "RightNeighbors:" + str(len(self.rightNeighbors));


class Space:
    def __init__(self, width, height, zeroX, zeroY):
	interval = Interval(width, height, zeroX, zeroY, self);
	self.freeIntervals = [interval];
	self.addedDeadlineIntervals = [];
	self.addedPriorityIntervals = [];

    # Public function
    def insertRightBottom(self, width, height, dataObject):
        for intervalI in self.freeIntervals:
            inserted = intervalI.insertRightBottom(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
	        self.test();
                return True;
        return False;

    # Public function
    def insertLeftTop(self, width, height, dataObject):
        self.test();
        for indexI in range(len(self.freeIntervals)):
	    intervalI = self.freeIntervals[len(self.freeIntervals) -1 -indexI];

            inserted = intervalI.insertLeftTop(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
	        self.test();
                return True;
        return False;

    # Public function
    def insertLeftBottom(self, width, height, dataObject):
        self.test();
        self.sort();
        for indexI in range(len(self.freeIntervals)):
	    intervalI = self.freeIntervals[indexI];
            inserted = intervalI.insertLeftBottom(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
                return True;
        return False;

    # Private function
    def transformation(self):
	self.sort();

        for addedIntervalI in self.addedDeadlineIntervals:
            addedIntervalI.leftCut();
        for addedIntervalI in self.addedDeadlineIntervals:
            addedIntervalI.leftCut2();
            
    # Private function
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

    def test(self):
      if not DEBUG_MODE:
	return;
	
      print "TEST";
      for freeIntervalI in self.freeIntervals:
	for leftNeighborI in freeIntervalI.leftNeighbors:
	  if not (freeIntervalI in leftNeighborI.rightNeighbors):
	    print "Chyba";
	for rightNeighborI in freeIntervalI.rightNeighbors:
	  if not (freeIntervalI in rightNeighborI.leftNeighbors):
	    print "Chyba";
	for topNeighborI in freeIntervalI.topNeighbors:
	  if not (freeIntervalI in topNeighborI.downNeighbors):
	    print "Chyba";
	for downNeighborI in freeIntervalI.downNeighbors:
	  if not (freeIntervalI in downNeighborI.topNeighbors):
	    print "Chyba";	    
	    
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


class TimeSpace:
    def __init__(self, startDate, endDate, eventsNumber):
        width = endDate -startDate;
        height = eventsNumber;
        zeroX = timedelta(minutes=0);
        zeroY = 0;
        self.space = Space(width, height, zeroX, zeroY);
        self.startDate = startDate;

    def insertRightBottom(self, inputDeadlineBlockModel):
        eventsCount = inputDeadlineBlockModel.eventsCount;
        timePartCount = inputDeadlineBlockModel.timePartCount;
        
        return self.space.insertRightBottom(timePartCount, eventsCount,
	    inputDeadlineBlockModel);

    def insertLeftTop(self, inputPriorityBlockModel):
        eventsCount = inputPriorityBlockModel.eventsCount;
        timePartCount = inputPriorityBlockModel.timePartCount;
        
        return self.space.insertLeftTop(timePartCount, eventsCount,
	    inputPriorityBlockModel);

    def insertLeftBottom(self, inputPriorityBlockModel):
        eventsCount = inputPriorityBlockModel.eventsCount;
        timePartCount = inputPriorityBlockModel.timePartCount;

        return self.space.insertLeftBottom(timePartCount, eventsCount,
	    inputPriorityBlockModel);

    # Private function
    def transformation(self):
	self.space.transformation();

    def getFreeIntervals(self):
        return self.space.freeIntervals;
        
    def getDeadlineIntervals(self):
        return self.space.addedDeadlineIntervals;

    def getPriorityIntervals(self):
        return self.space.addedPriorityIntervals;
        
    def printFreeIntervals(self):
        self.space.printFreeIntervals(); 
