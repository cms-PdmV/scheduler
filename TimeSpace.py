
from datetime import date, datetime, time, timedelta


INSERT_TYPE_RB = "RightBottom";
INSERT_TYPE_LT = "LeftTop";

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

    # Public function            
    def startX(self):
        return self.startXposition;

    # Public function
    def endX(self):
        return self.startXposition + self.width;

    # Public function
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
    def divideHorizontal(self, y):
        isBetween = self.startY() < y and y < self.endY();
        if not isBetween:
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
        self.space.freeIntervals.insert(index, newBottom);
        self.space.freeIntervals.insert(index +1, newTop);
        
        return [newBottom, newTop];

    # Public function
    def divideVertical(self, x):
        if not self.isFree:
	  print "MEGAPRUSER";
	  
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
        newLeft.rightNeighbors.append(newRight);

        newRight.topNeighbors = self.getTopNeighbors(x, self.endX());
        newRight.downNeighbors = self.getDownNeighbors(x, self.endX());
        newRight.leftNeighbors.append(newLeft);
        newRight.rightNeighbors =  self.rightNeighbors;

        newLeft.insertNewIntervalAfterOldIntervalAtNeighbors(newLeft, self);
        newRight.insertNewIntervalAfterOldIntervalAtNeighbors(newRight, self);
        self.removeIntervalAtNeighbors(self);

        index = self.space.freeIntervals.index(self);
        self.space.freeIntervals.remove(self);
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
        self.space.freeIntervals.insert(index, newLeft);

        return [newLeft, newRight];

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
        if array.count(valueToInsert) == 1:
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

        self.hight += interval.height;

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
    def rightCut(self, y):
        if self.rightNeighbors == []:
            return;

        size = len(self.rightNeighbors);
        lastNeighbor = self.rightNeighbors[size -1];

        if lastNeighbor.endY() == y:
            return;

        if lastNeighbor.isFree:
            btNeighbors = lastNeighbor.divideHorizontal(y);
            bottom = btNeighbors[0];
            bottom.rightCut(y);

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


    # Private function
    def couldBeInserted(self, width, height, x, y, insertType):
	
        if (not self.isFree):
            return False;

	if (insertType == INSERT_TYPE_RB):
	    widthSpace = x -self.startX();
	    heightSpace = self.endY() -y;
	if (insertType == INSERT_TYPE_LT):
	    widthSpace = self.endX() -x;
	    heightSpace = y -self.startY();

        leftInserted = False;
        if (widthSpace < width):
            widthLeftIns = width -widthSpace;
            hightLeftIns = height;

	    if (insertType == INSERT_TYPE_RB):
		horizontalNeighbors = self.leftNeighbors;
		indexNeighbor = len(self.leftNeighbors) -1;
		xNew = self.startX();
	    if (insertType == INSERT_TYPE_LT):
		horizontalNeighbors = self.rightNeighbors;
		indexNeighbor = len(self.rightNeighbors) -1;
		xNew = self.endX();
            if len(horizontalNeighbors) == 0:
	      return False;

            neighbor = horizontalNeighbors[indexNeighbor];
            
            leftInserted = neighbor.couldBeInserted(widthLeftIns, hightLeftIns,
		xNew, y, insertType);
	else:
	    leftInserted = True;

        topInserted = False;
        if (heightSpace < height):
            widthTopIns = width;
            hightTopIns = height -heightSpace;
            
            if (insertType == INSERT_TYPE_RB):
		verticalNeighbors = self.topNeighbors;
		indexNeighbor = len(self.topNeighbors) -1;
		yNew = self.endY();
	    if (insertType == INSERT_TYPE_LT):
		verticalNeighbors = self.downNeighbors;
		indexNeighbor = 0;
		yNew = self.startY();

            if len(verticalNeighbors) == 0:
	      return False;

            neighbor = verticalNeighbors[indexNeighbor];
            topInserted = neighbor.couldBeInserted(widthTopIns, hightTopIns,
		x, yNew, insertType);
	else:
	    topInserted = True;

        return leftInserted and topInserted;


    # Private function
    def insertingSmaller(self, width, height, x, y, insertType):
        
	if (insertType == INSERT_TYPE_RB):
	    widthSpace = x -self.startX();
	    heightSpace = self.endY() -y;
	if (insertType == INSERT_TYPE_LT):
	    widthSpace = self.endX() -x;
	    heightSpace = y -self.startY();

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

	interval = self;
        if not (planedEndX == interval.endX()):
            lrI = interval.divideVertical(planedEndX);
            interval = lrI[0];

	if not (planedStartX == interval.startX()):
            lrI = interval.divideVertical(planedStartX);
            interval = lrI[1];

        if not (planedTopY == interval.endY()):
            btI = interval.divideHorizontal(planedTopY);
            interval = btI[0];

        if not (planedDownY == interval.startY()):            
            btI = interval.divideHorizontal(planedDownY);
            interval = btI[1];

        return interval;


    # Private function
    def inserting(self, width, height, x, y, insertType):
  
	if (insertType == INSERT_TYPE_RB):
	    widthSpace = x -self.startX();
	    heightSpace = self.endY() -y;
	if (insertType == INSERT_TYPE_LT):
	    widthSpace = self.endX() -x;
	    heightSpace = y -self.startY();
  
        if (widthSpace >= width and heightSpace >= height):
            return self.insertingSmaller(width, height, x, y, insertType);

        selfInterval = self;
        leftInserted = None;
        topInserted = None;
        
        if (widthSpace < width):
            widthLeftIns = width -widthSpace;
            hightLeftIns = height;

            if (insertType == INSERT_TYPE_RB):
		neighbor = self.leftNeighbors[len(self.leftNeighbors) -1];  #[0]; 
		xNew = self.startX();
	    if (insertType == INSERT_TYPE_LT):
		neighbor = self.rightNeighbors[0];   #[len(self.rightNeighbors) -1];
		xNew = self.endX();
      
            leftInserted = neighbor.inserting(widthLeftIns, hightLeftIns,
		xNew, y, insertType);
	else:
	    widthTopIns = width;
	    hightTopIns = heightSpace;

	    selfInterval = selfInterval.insertingSmaller(widthTopIns,
		hightTopIns, x, y, insertType);
            
        if (heightSpace < height):
            widthTopIns = width;
            hightTopIns = height -heightSpace;

            if (insertType == INSERT_TYPE_RB):
		neighbor = self.topNeighbors[len(self.topNeighbors) -1];
		yNew = self.endY();
	    if (insertType == INSERT_TYPE_LT):
		neighbor = self.downNeighbors[0];
		yNew = self.startY();

            topInserted = neighbor.inserting(widthTopIns, hightTopIns,
		x, yNew, insertType);
	else:
	    widthTopIns = widthSpace;
	    hightTopIns = height;
	    
	    selfInterval = selfInterval.insertingSmaller(widthTopIns,
		hightTopIns, x, y, insertType);

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
	
    def insertRightBottom(self, width, height, dataObject):
        for intervalI in self.freeIntervals:
            inserted = intervalI.insertRightBottom(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
                return True;
        return False;

    def insertLeftTop(self, width, height, dataObject):
        for indexI in range(len(self.freeIntervals)):
	    intervalI = self.freeIntervals[len(self.freeIntervals) -1 -indexI];

            inserted = intervalI.insertLeftTop(width, height, dataObject);
            isInserted = inserted != None;
            if isInserted:
                return True;
        return False;

    def printFreeIntervals(self):
        print "----------BlocksFree----------------------------";
        i = 0;
        for freeIntervalIndex in range(len(self.freeIntervals)):
            freeIntervalI = self.freeIntervals[freeIntervalIndex];
            print "BlockFree: " +str(i);
            freeIntervalI.printBlock();
            i +=1;

        print "----------DeadlineIntervals---------------------";
        j = 0;
        for addedIntervalIndex in range(len(self.addedDeadlineIntervals)):
            addedIntervalI = self.addedDeadlineIntervals[addedIntervalIndex];
            print "DeadlineInterval: " +str(j);
            addedIntervalI.printBlock();
            j +=1;
            
        print "----------PriorityIntervals---------------------";
        j = 0;
        for addedIntervalIndex in range(len(self.addedIntervals)):
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
        
        self.space.insertRightBottom(timePartCount, eventsCount,
	    inputDeadlineBlockModel);

    def insertLeftTop(self, inputPriorityBlockModel):
        eventsCount = inputPriorityBlockModel.eventsCount;
        timePartCount = inputPriorityBlockModel.timePartCount;
        
        self.space.insertLeftTop(timePartCount, eventsCount,
	    inputPriorityBlockModel);


    def getFreeIntervals(self):
        return self.space.freeIntervals;
        
    def getDeadlineIntervals(self):
        return self.space.addedDeadlineIntervals;

    def getPriorityIntervals(self):
        return self.space.addedPriorityIntervals;
        
    def printFreeIntervals(self):
        self.space.printFreeIntervals(); 
