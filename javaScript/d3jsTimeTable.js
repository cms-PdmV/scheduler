
var DateDifferenceClass = function(dateDifferenceString) {

  this.parse = function(dateDifferenceString) {

      var dayStartIndex =
	  dateDifferenceString.indexOf("days=") +"days=".length;
      var dayEndIndex =
	  dateDifferenceString.indexOf(", hours=");
      this.days =
	  dateDifferenceString.substring(dayStartIndex, dayEndIndex);

      var hourStartIndex =
	  dateDifferenceString.indexOf("hours=") +"hours=".length;
      var hourEndIndex =
	  dateDifferenceString.indexOf(", minutes=");
      this.hours =
	  dateDifferenceString.substring(hourStartIndex, hourEndIndex);

      var minuteStartIndex =
	  dateDifferenceString.indexOf("minutes=") +"minutes=".length;
      var minuteEndIndex =
	  dateDifferenceString.indexOf(", seconds=");
      this.minutes =
	  dateDifferenceString.substring(minuteStartIndex, minuteEndIndex);

      var secondStartIndex =
	  dateDifferenceString.indexOf("seconds=") +"seconds=".length;
      var secondEndIndex = dateDifferenceString.length;
      this.seconds =
	  dateDifferenceString.substring(secondStartIndex, secondEndIndex);
  };

  this.plusDifference = function(dateDifferenceToPlus) {
 
      var dateDiff = dateDifferenceToPlus;

      var daysSum = parseInt(this.days) +parseInt(dateDiff.days);
      var hoursSum = parseInt(this.hours) +parseInt(dateDiff.hours);
      var minutesSum = parseInt(this.minutes) +parseInt(dateDiff.minutes);
      var secondsSum = parseInt(this.seconds) +parseInt(dateDiff.seconds);

      var seconds = this.getSeconds(daysSum, hoursSum,
				    minutesSum, secondsSum);
      var dateString = this.secondsToString(seconds);

      return new DateDifferenceClass(dateString);
  };

  this.minusDifference = function(dateDifferenceToMinus) {

      var dateDiff = dateDifferenceToMinus;
      
      var daysDiff = parseInt(this.days) -parseInt(dateDiff.days);
      var hoursDiff = parseInt(this.hours) -parseInt(dateDiff.hours);
      var minutesDiff = parseInt(this.minutes) -parseInt(dateDiff.minutes);
      var secondsDiff = parseInt(this.seconds) -parseInt(dateDiff.seconds);

      var seconds = this.getSeconds(daysDiff, hoursDiff,
				    minutesDiff, secondsDiff);
      var dateString = this.secondsToString(seconds);

      return new DateDifferenceClass(dateString);
  };

  this.divideDifference = function(intToDivision) {
      var secondsAll = this.getSeconds(this.days, this.hours,
				       this.minutes, this.seconds);
      var secondsPart = Math.floor(secondsAll / intToDivision);
      var dateString = this.secondsToString(secondsPart);

      return new DateDifferenceClass(dateString);
  };

  this.getSeconds = function(days, hours, minutes, seconds) {
 
    var seconds = 60*60*24*parseInt(days) + 60*60*parseInt(hours) +
	60*parseInt(minutes) + parseInt(seconds);

    return seconds;
  };
  
  this.toString = function() {
    
    var resultString = "days=" + this.days + ", hours=" + this.hours + ", " +
	"minutes=" + this.minutes + ", seconds=" + this.seconds;

    return resultString;
  };
  
  this.secondsToString = function(secondsAll) {

      var daysR = Math.floor(secondsAll/60/60/24);    
      var hoursR = Math.floor(secondsAll/60/60 -daysR*24);
      var minutesR = Math.floor(secondsAll/60 -24*60*daysR -60*hoursR);
      var secondsR = Math.floor(secondsAll -24*60*60*daysR -60*60*hoursR
	  -60*minutesR);
      
      var dateString = "days=" + daysR + ", hours=" + hoursR + ", " +
	  "minutes=" + minutesR + ", seconds=" + secondsR;
      
      return dateString;
  };

  this.getSecondsSum = function() {
 
    var seconds = 60*60*24*parseInt(this.days) + 60*60*parseInt(this.hours) +
	60*parseInt(this.minutes) + parseInt(this.seconds);

    return seconds;
  };
  
  var nothing = this.parse(dateDifferenceString);
};




var DateClass = function(dateString) {

    this.stringToDate  = function(dateString) {
      var reggie = /(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2})/;
      var dateArray = reggie.exec(dateString); 
      var dateObject = new Date(
	  (+dateArray[1]),
	  (+dateArray[2])-1, // Careful, month starts at 0!
	  (+dateArray[3]),
	  (+dateArray[4]),
	  (+dateArray[5]),
	  (+dateArray[6])
      );

      return dateObject;
    };

    this.dateToString = function(date) {
      var dateStr = this.padStr(date.getFullYear()) + "-" +
	  this.padStr(1 + date.getMonth()) + "-" +
	  this.padStr(date.getDate()) + " " +
	  this.padStr(date.getHours()) + ":" +
	  this.padStr(date.getMinutes()) + ":" +
	  this.padStr(date.getSeconds());
      return dateStr;
    };
    
    this.padStr = function(i) {
	return (i < 10) ? "0" + i : "" + i;
    };

    this.toString = function() {
      return this.dateToString(this.date);
    };

    this.toLabel= function() {
       var dateStr = this.padStr(this.date.getFullYear()) + "-" +
	  this.padStr(1 + this.date.getMonth()) + "-" +
	  this.padStr(this.date.getDate()) + " " +
	  this.padStr(this.date.getHours()) + ":" +
	  this.padStr(this.date.getMinutes());
       return dateStr;
    };
    

    this.getDifference = function(dateMinuend, dateSubtrahend) {

      var dateM = dateMinuend.date;
      var dateS = dateSubtrahend.date;

      var minuend = Date.UTC(dateM.getFullYear(),
			     dateM.getMonth(), dateM.getDate());
      var subtrahend = Date.UTC(dateS.getFullYear(),
				dateS.getMonth(), dateS.getDate());

      var diffDateMs = Math.abs(minuend -subtrahend);
      var days = Math.floor(diffDateMs/1000/60/60/24);

      var diffTimeMs = dateM.getTime() -dateS.getTime();

      var hours = Math.floor(diffTimeMs/1000/60/60 -days*24);
      var minutes = Math.floor(diffTimeMs/1000/60 -24*60*days -60*hours);
      var seconds = Math.floor(diffTimeMs/1000 -24*60*60*days -60*60*hours
	  -60*minutes);

      var dateDifferenceString = "days=" + days + ", hours=" + hours +
	  ", minutes=" + minutes + ", seconds=" + seconds;

      return new DateDifferenceClass(dateDifferenceString);
   };

   this.minusDate = function(dateSubtrahend) {
      return this.getDifference(this, dateSubtrahend);
    };

   this.plusDifference = function(dateDifference) {
      
      var daysPlus = dateDifference.days;
      var hoursPlus = dateDifference.hours;
      var minutesPlus = dateDifference.minutes;
      var secondsPlus = dateDifference.seconds;
      
      var dateString = this.toString();
      var dateResult = new DateClass(dateString);
      
      var daysValue = parseInt(daysPlus)*24*60*60*1000;
      dateResult.date.setTime(dateResult.date.getTime() +daysValue);

      var hoursValue = parseInt(hoursPlus)*60*60*1000;
      dateResult.date.setTime(dateResult.date.getTime() +hoursValue);
      
      var minutesValue = parseInt(minutesPlus)*60*1000;
      dateResult.date.setTime(dateResult.date.getTime() +minutesValue);
      
      var secondsValue = parseInt(secondsPlus)*1000;
      dateResult.date.setTime(dateResult.date.getTime() +secondsValue); 

      return dateResult;
   };

   this.minusDifference = function(dateDifference) {

      var daysMinus = dateDifference.days;
      var hoursMinus = dateDifference.hours;
      var minutesMinus = dateDifference.minutes;
      var secondsMinus = dateDifference.seconds;

      var dateString = this.toString();
      var dateResult = new DateClass(dateString);

      var daysValue = parseInt(daysMinus)*24*60*60*1000;
      dateResult.date.setTime(dateResult.date.getTime() -daysValue);

      var hoursValue = parseInt(hoursMinus)*60*60*1000;
      dateResult.date.setTime(dateResult.date.getTime() -hoursValue); 

      var minutesValue = parseInt(minutesMinus)*60*1000;
      dateResult.date.setTime(dateResult.date.getTime() -minutesValue);
      
      var secondsValue = parseInt(secondsMinus)*1000;
      dateResult.date.setTime(dateResult.date.getTime() -secondsValue); 

      return dateResult;
   };

   this.isGreaterThanOrEqual = function(date) {
        if (this.date.getTime() >= date.date.getTime()) {
	  return true;
        }
        return false;
   };
   
   this.isLessThanOrEqual = function(date) {
        if (this.date.getTime() <= date.date.getTime()) {
	  return true;
        }
        return false;
   };

   this.date = this.stringToDate(dateString);

};


var PRIORITY_TIME_BLOCK_TYPE = 'planedPriorityBlock';
var DEADLINE_TIME_BLOCK_TYPE = 'planedDeadlineBlock';

var SchedulerDataModelClass = function() {

    this.initialization = function() {

      this.totalWidth = 1000;
      this.totalHeight = 530;

      var startDateString = "2014-01-01 00:00:00";
      var endDateString = "2014-01-11 12:00:00";
      this.startDate = new DateClass(startDateString);
      this.endDate = new DateClass(endDateString);
      
      this.startEvent = 0;
      this.endEvent = 1000;

      this.dataSource = data;

      this.recount();
    }

    this.recount = function() {

      this.margin = { top: 120, right: 40, bottom: 100, left: 60 };
      this.width = this.totalWidth -this.margin.left -this.margin.right;
      this.height = this.totalHeight -this.margin.top -this.margin.bottom;

      this.buckets = 9;

      this.colors = ["#ffffd9", "#ffffbf", "#f4fcbe", "#e2ffbf", "#c7e9b4",
          "#7fcdbb", "#63d9c6", "#41b6c4", "#1d91c0","#225ea8", "#253494"];

      this.dateLabelsCount = 24;
      var dateDiff = this.endDate.minusDate(this.startDate);
      var datePart = dateDiff.divideDifference(this.dateLabelsCount);

      this.dateLabels = [this.startDate.toLabel()];
      var dateI = this.startDate;
      for (var i = 1; i <= this.dateLabelsCount; i++) {
	 dateI = dateI.plusDifference(datePart);
	 this.dateLabels.push(dateI.toLabel());
      }

      this.eventLabelsCount = 10;
      var eventDiff = this.endEvent -this.startEvent;
      var eventPart = eventDiff / this.eventLabelsCount;
      
      this.events = [];
      var eventI = this.startEvent;
      for (var i = 0; i < this.eventLabelsCount; i++) {
	eventI = Math.round(eventI + eventPart);
	this.events.push('' + eventI + ' E ');
      }
      
      this.getOverlapedTimeBlocks();
    };

    // Function returns only blocks which are inside of showed space
    this.getOverlapedTimeBlocks = function() {

	this.planedBlocks = [];
	this.planedPriorityBlocks = [];
	this.planedDeadlineBlocks = [];

       for (var blockIndex = 0;
	    blockIndex < this.dataSource.length; blockIndex++) {

	  timeBlockSourceI = this.dataSource[blockIndex];
	  timeBlockI = jQuery.extend(true, {}, timeBlockSourceI);

	  dateHour = timeBlockI["hour"];
	  dateWidth = timeBlockI["width"];
	  numEvent = timeBlockI["event"];
	  numHeight = timeBlockI["height"];
	  typeB = timeBlockI["type"];

	  startDateI = new DateClass(dateHour);
	  diffDateI = new DateDifferenceClass(dateWidth);
	  endDateI = startDateI.plusDifference(diffDateI);
  
	  isStartDateOK1 = this.startDate.isLessThanOrEqual(endDateI);
	  isStartDateOK2 = this.endDate.isGreaterThanOrEqual(endDateI);
	  isEndDateOK1 = this.startDate.isLessThanOrEqual(startDateI);
	  isEndDateOK2 = this.endDate.isGreaterThanOrEqual(startDateI);
	  
	  isEndDateOK = isEndDateOK1 || isEndDateOK2;
	  isStartDateOK = isStartDateOK1 || isStartDateOK2;

	  isEndEventOK1 = this.startEvent <= numEvent + numHeight;
	  isEndEventOK2 = this.endEvent >= numEvent + numHeight;
	  isStartEventOK1 = this.startEvent <= numEvent;
	  isStartEventOK2 = this.endEvent >= numEvent;
	  	
	  isEndEventOK = isEndEventOK1 || isEndEventOK2;
	  isStartEventOK = isStartEventOK1 || isStartEventOK2;
	  
	  isPositionXOfBlockRight = isStartDateOK && isEndDateOK;
	  isPositionYOfBlockRight = isStartEventOK && isEndEventOK;
	  
	  if (isPositionXOfBlockRight && isPositionYOfBlockRight) {
	    
	      if (this.startEvent >= numEvent) {
   	         timeBlockI["event"] = this.startEvent;
   	         timeBlockI["height"] = numHeight -(this.startEvent -numEvent);
	      }

	      if (this.endEvent <= numEvent + numHeight) {
   	         timeBlockI["height"] = this.endEvent -numEvent;
	      }
	      
	      if (this.startDate.isGreaterThanOrEqual(startDateI)) {
   	         timeBlockI["hour"] = this.startDate.toString();

		 var diffToMinus = this.startDate.minusDate(startDateI);
	         var newWidth = diffDateI.minusDifference(diffToMinus);
		 timeBlockI["width"] = newWidth.toString();
	      }
	      
	      if (this.endDate.isLessThanOrEqual(endDateI)) {
		 var diffToMinus = endDateI.minusDate(this.endDate);
	         var newWidth = diffDateI.minusDifference(diffToMinus);
		 timeBlockI["width"] = newWidth.toString();
	      }


	      if (typeB == PRIORITY_TIME_BLOCK_TYPE) {
		  this.planedPriorityBlocks.push(timeBlockI);
	      } else if (typeB == DEADLINE_TIME_BLOCK_TYPE) {
		  this.planedDeadlineBlocks.push(timeBlockI);
	      } else { alert("Error:Bad input from database."); }
	      this.planedBlocks.push(timeBlockI);
	      
	  }
       }

    }

    this.getRecountedDifferentDate = function(differentDate) {
      var diffDate = this.endDate.minusDate(this.startDate);
      var diffSecond = diffDate.getSecondsSum();
      
      var pixelsTakeOneSecond = this.width / diffSecond;

      var result = differentDate.getSecondsSum() * pixelsTakeOneSecond;
      return result;
    }

    this.getRecountedDifferentEvent = function(differentEvent) {
      var diffEvent = this.endEvent -this.startEvent;
      
      var pixelsTakeOneEvent = this.height / diffEvent;
      
      var result = differentEvent * pixelsTakeOneEvent;
      return result;
    }
    
    this.getRecountedX = function(dateTimeX) {
      var diffDate = this.endDate.minusDate(this.startDate);
      var diffSecond = diffDate.getSecondsSum();
      
      var pixelsTakeOneSecond = this.width / diffSecond;

      var countedDiffDate = dateTimeX.minusDate(this.startDate);
      var result = countedDiffDate.getSecondsSum() * pixelsTakeOneSecond;
      return result;
    }
    this.getRecountedY = function(numEventsY) {
      var diffEvent = this.endEvent -this.startEvent;

      var pixelsTakeOneEvent = this.height / diffEvent;

      var result = (numEventsY -this.startEvent) * pixelsTakeOneEvent;
      return result;
    }

    this.getEventLabelX = function(numberOfLabel) {
      return 0;
    }
    this.getEventLabelY = function(numberOfLabel) {
      var labelHeight = this.height / this.eventLabelsCount;
      return numberOfLabel * labelHeight;
    }

    this.getDateLabelX = function(numberOfLabel) {
      var labelWidth = this.width / this.dateLabelsCount;
      return numberOfLabel * labelWidth +0.65*this.margin.left;
    }
    this.getDateLabelY = function(numberOfLabel) {
      return -30;
    }

    this.getTimeBlockX = function(d) {
      var date = new DateClass(d.hour);
      return this.getRecountedX(date);
    }
    this.getTimeBlockY = function(d) {
      return this.getRecountedY(d.event);
    }
    
    this.getTimeBlockWidth = function(d) {
      var diffDate = new DateDifferenceClass(d.width);
      return this.getRecountedDifferentDate(diffDate);
    }    
    this.getTimeBlockHeight = function(d) {
      return this.getRecountedDifferentEvent(d.height);
    }
    
    this.getTimeBlockType = function(d) {
      return d.type;
    }
    this.isPriorityTimeBlock = function(d) {
        return d.type == PRIORITY_TIME_BLOCK_TYPE;
    }

    this.getLegendElementX = function(numberOfElement) {
      return this.getLegendElementWidth() * numberOfElement;
    }
    this.getLegendElementY = function(numberOfElement) {
      return dataModel.height;
    }
    this.getLegendElementWidth = function() {
      return this.width / 12;
    }
    this.getLegendElementHeight = function() {
      return this.width / 48;
    }
    
    this.getBacgroundRectangles = function() {
      
      var diffDate = this.endDate.minusDate(this.startDate);
      var partDate = diffDate.divideDifference(3);

      var diffEvent = this.endEvent -this.startEvent;
      var partEvent = diffEvent / 3;
      
      var jsonObj = []; //declare object
      
      var newStartDate = this.startDate;
      for (var i = 0; i < 3; i++) {

	var newStartEvent = this.startEvent;
	for (var j = 0; j < 3; j++) {
	  
	  jsonObj.push({event: newStartEvent,
		hour: newStartDate.toString(),
		height: partEvent,
		width: partDate.toString()});
	  
	  newStartEvent = newStartEvent + partEvent;
	}
	
	newStartDate = newStartDate.plusDifference(partDate);
      }

      return jsonObj;
    }
    
    this.zoomIn = function(dateToZoom, eventToZoom) {
      var diffDate = this.endDate.minusDate(this.startDate);
      var partDate = diffDate.divideDifference(300);
      
      this.startDate = this.startDate.minusDifference(partDate);
      this.endDate = this.endDate.plusDifference(partDate);

      var diffEvent = this.endEvent -this.startEvent;
      var partEvent = diffEvent / 100;

//TODO: Rounding
      this.startEvent = Math.round(this.startEvent + partEvent);
      this.endEvent = Math.round(this.endEvent -partEvent);
      
      this.recount();
    }
    this.zoomOut = function(dateToZoom, eventToZoom) {
      var diffDate = this.endDate.minusDate(this.startDate);
      var partDate = diffDate.divideDifference(300);

      var diffEvent = this.endEvent -this.startEvent;
      var partEvent = diffEvent / 100;

      this.startDate = this.startDate.plusDifference(partDate);
      this.endDate = this.endDate.minusDifference(partDate);

//TODO: Rounding
      this.startEvent = this.startEvent -partEvent;
      this.endEvent = this.endEvent +partEvent;
      
      this.recount();
    }

    this.moveRight = function() {
      var diffDate = this.endDate.minusDate(this.startDate);
      var partDate = diffDate.divideDifference(300);

      var newStartDate = this.startDate.plusDifference(partDate);
      var newEndDate = this.endDate.plusDifference(partDate);
      
      this.startDate = newStartDate;
      this.endDate = newEndDate;
    }
    
    this.moveLeft = function() {
      var diffDate = this.endDate.minusDate(this.startDate);
      var partDate = diffDate.divideDifference(300);

      var newStartDate = this.startDate.minusDifference(partDate);
      var newEndDate = this.endDate.minusDifference(partDate);
       
      this.startDate = newStartDate;
      this.endDate = newEndDate;
      
    }

    this.moveDown = function() {
      this.startEvent -= 5;
      this.endEvent -= 5;
    }
    
    this.moveUp = function() {
      this.startEvent += 5;
      this.endEvent += 5;
    }

};

function createBlockId(event, hour, isDeadlineBlock) {
  
  var eventHour = event + "-" + hour;
  var eventHourId = eventHour.replace(":","-").replace(":","-").replace(" ","-");
  
  if (isDeadlineBlock) {
    eventHourId = "dB-" + eventHourId;
  } else {
    eventHourId = "pB-" + eventHourId;
  }
  
  return eventHourId;
};


function drawTimeTable() {
  var colorScale = d3.scale.quantile()
      .domain([0, d3.max(dataModel.planedBlocks, function (d) { return d.value; })])
      .range(dataModel.colors);

  var backgroundDragBehavior = d3.behavior.drag()	
      .origin(Object)
      .on("drag", backgroundDraged)
      .on('dragend', backgroundDragended);
      
  var svg = d3.select("#chart").append("svg")
      .attr("width", dataModel.width + dataModel.margin.left + dataModel.margin.right )
      .attr("height", dataModel.height + dataModel.margin.top + dataModel.margin.bottom )
      .append("g")
      .attr("transform", "translate(" + dataModel.margin.left + "," + dataModel.margin.top + ")");

  svg.append("text")
      .attr("class", "title")
      .text("Requests schedule")
      .attr("x", 320)
      .attr("y", -92 );

  svg.append("image")
    .attr("xlink:href", "../javaScript/cern.gif")
    .attr("x", -40)
    .attr("y", -110)
    .attr("width", 60)
    .attr("height", 60);

// http://stackoverflow.com/questions/17776641/fill-rect-with-pattern
  svg.append('defs')
    .append('pattern')
      .attr('id', 'diagonalHatch')
      .attr('patternUnits', 'userSpaceOnUse')
      .attr('width', 4)
      .attr('height', 4)
    .append('path')
      .attr('d', 'M-1,1 l2,-2 M0,4 l4,-4 M3,5 l2,-2')
      .attr('stroke', '#000000')
      .attr('stroke-width', 0.75);
    
    
  var eventLabels = svg.selectAll(".dayLabel")
      .data(dataModel.events)
      .enter().append("text")
	.text(function (d) { return d; })
	.attr("x", function (d, i) { return dataModel.getEventLabelX(i); })
	.attr("y", function (d, i) { return dataModel.getEventLabelY(dataModel.events.length -1 -i); })
	.style("text-anchor", "end")
	.attr("transform", "translate(-6," + dataModel.width / 24 / 1.5 + ")")
	.attr("class", function (d, i) { return ((i >= 0 && i <= 100) ? "dayLabel mono axis axis-workweek" : "dayLabel mono axis"); });

  var timeLabels = svg.selectAll(".timeLabel")
      .data(dataModel.dateLabels)
      .enter().append("text")
	.text(function(d) { return d; })
	.attr("x", function(d, i) { return dataModel.getDateLabelX(i); })
	.attr("y", function(d, i) { return dataModel.getDateLabelY(i); })
	.style("text-anchor", "middle")
	.attr("transform", function(d, i) { return "rotate(-30, " + (dataModel.getDateLabelX(i)) + "," + (dataModel.getDateLabelY(i)) + ")"; })
	.attr("class", function(d, i) { return ((i >= 0 && i <= 100) ? "timeLabel mono axis axis-worktime" : "timeLabel mono axis"); });

  var legend = svg.selectAll(".legend")
      .data([0].concat(colorScale.quantiles()), function(d) { return d; })
      .enter().append("g")
      .attr("class", "legend");

  legend.append("rect")
      .attr("x", function(d, i) { return dataModel.getLegendElementX(i); })
      .attr("y", function(d, i) { return dataModel.getLegendElementY(i); })
      .attr("width", function(d) { return dataModel.getLegendElementWidth(); })
      .attr("height", function(d) { return dataModel.getLegendElementHeight(); })
      .style("fill", function(d, i) { return dataModel.colors[i]; });

  legend.append("text")
      .attr("class", "mono")
      .text(function(d, i) { return "≥ " + i; })
      .attr("x", function(d, i) { return dataModel.getLegendElementX(i); })
      .attr("y", dataModel.height + 2*dataModel.getLegendElementHeight() );
    
  legend.append("rect")
      .attr("x", function(d) { return dataModel.getLegendElementX(0); })
      .attr("y", dataModel.height + 3*dataModel.getLegendElementHeight() )
      .attr("width", dataModel.getLegendElementWidth())
      .attr("height", dataModel.getLegendElementHeight() )
      .attr('fill', 'url(#diagonalHatch)')
      .style("stroke", "#000000");

  legend.append("text")
      .attr("class", "mono")
      .text("Priority values")
      .attr("x", dataModel.getLegendElementX(10.5) )
      .attr("y", dataModel.height + 3*dataModel.getLegendElementHeight() );

  legend.append("text")
      .attr("class", "mono")
      .text("Priority blocks")
      .attr("x", dataModel.getLegendElementX(0) )
      .attr("y", dataModel.height + 5*dataModel.getLegendElementHeight() );

  legend.append("rect")
      .attr("x", function(d) { return dataModel.getLegendElementX(2); })
      .attr("y", dataModel.height + 3*dataModel.getLegendElementHeight() )
      .attr("width", dataModel.getLegendElementWidth())
      .attr("height", dataModel.getLegendElementHeight() )
      .attr('fill', "#FFFFFF")
      .style("stroke", "#000000");

   legend.append("text")
      .attr("class", "mono")
      .text("Deadline blocks")
      .attr("x", dataModel.getLegendElementX(2) )
      .attr("y", dataModel.height + 5*dataModel.getLegendElementHeight() );

  //http://jsfiddle.net/RRCyq/2/
  //http://orangevolt.blogspot.ch/2013/04/d3js-how-to-create-simple-state-machine.html
  var rectangleDragBehavior = d3.behavior.drag()
      .origin(Object)
      .on("drag", rectangleDraged)
      .on("dragend", rectangleDragended);

  var backgroundMap = svg.selectAll(".hour")
      .data(dataModel.getBacgroundRectangles())
      .enter().append("rect")
      .attr("myID", function(d) { return -1; })
      .attr("x", function(d) { return dataModel.getTimeBlockX(d); })
      .attr("y", function(d) { return dataModel.height -dataModel.getTimeBlockY(d) -dataModel.getTimeBlockHeight(d); })
      .attr("width", function(d) { return  dataModel.getTimeBlockWidth(d); })
      .attr("height", function(d) { return dataModel.getTimeBlockHeight(d); })
      .attr("value", function(d, i) { return -1 })
      .style("fill", function(d, i) { return "#FFFFFF"; })
      .on("click", backgroundClicked).call(backgroundDragBehavior)
      .call(d3.behavior.zoom().on("zoom", rectangleZoom));

  var heatMap = svg.selectAll(".hour")
      .data(dataModel.planedBlocks)
      .enter().append("rect")
      .attr("myID", function(d) { return createBlockId(d.event, d.hour, true); })
      .attr("type", function(d) { return dataModel.getTimeBlockType(d); })
      .attr("x", function(d) { return dataModel.getTimeBlockX(d); })
      .attr("y", function(d) { return dataModel.height -dataModel.getTimeBlockY(d) -dataModel.getTimeBlockHeight(d); })
      .attr("rx", 4)
      .attr("ry", 4)
      .attr("class", function(d) { return "bordered noSelected " + createBlockId(d.event, d.hour, true); })
      .attr("width", function(d) { return  dataModel.getTimeBlockWidth(d); })
      .attr("height", function(d) { return dataModel.getTimeBlockHeight(d); })
      .attr("value", function(d) { return d.value; })
      .style("fill", function(d) { return dataModel.colors[d.value +1]; })
      .on("click", rectangleClicked).call(rectangleDragBehavior)
      .call(d3.behavior.zoom().on("zoom", rectangleZoom))

  var priorityBlocksHatch = svg.selectAll(".hour2")
      .data(dataModel.planedPriorityBlocks)
      .enter().append("rect")
      .attr("myID", function(d) { return createBlockId(d.event, d.hour, true); })
      .attr("type", PRIORITY_TIME_BLOCK_TYPE)
      .attr("x", function(d) { return dataModel.getTimeBlockX(d); })
      .attr("y", function(d) { return dataModel.height -dataModel.getTimeBlockY(d) -dataModel.getTimeBlockHeight(d); })
      .attr("rx", 4)
      .attr("ry", 4)
      .attr("width", function(d) { return  dataModel.getTimeBlockWidth(d); })
      .attr("height", function(d) { return dataModel.getTimeBlockHeight(d); })
      .attr("value", function(d) { return d.value; })
      .attr("class", function(d) { return "bordered noSelected hatched " + createBlockId(d.event, d.hour, true); })
      .attr('fill', 'url(#diagonalHatch)') 
      .on("click", rectangleClicked).call(rectangleDragBehavior)
      .call(d3.behavior.zoom().on("zoom", rectangleZoom));

  d3.selectAll('rect').classed("selected", false);

  heatMap.transition().duration(2000)
      .style("fill", function(d) { return dataModel.colors[d.value]; });
  heatMap.append("title").text(function(d) { return d.value; });
  priorityBlocksHatch.append("title").text(function(d) { return d.value; });

}


var isSelected = false;
function rectangleClicked(dIn) {

    isSelected = ! isSelected;
    if (isSelected) {
      selection = d3.select(this);
      selection.style("fill", "#FF0000");

      var outputString = "Value: " + dIn.value + "\n" +
      "EventStartNumber: " + dIn.event + "\n" +
      "EventStartDate: " + dIn.hour + "\n" +
      "Height: " + dIn.height + "\n" +
      "Width: " + dIn.width;

      alert(outputString);
    } else {
	selection = d3.select(this);
	var typePos = selection.attr('type');
	var valuePos = selection.attr('value');

	if (typePos == DEADLINE_TIME_BLOCK_TYPE) {
	  selection.style("fill", dataModel.colors[valuePos]);
	} else if (typePos == PRIORITY_TIME_BLOCK_TYPE) {
	  selection.style("fill", 'url(#diagonalHatch)');  
	}
    }
}


var isMoving = false;
function rectangleDraged(d) {
    
    isMoving = true;
    var m = d3.mouse(this);

    var heightPos = d3.select(this).attr('height');
    var widthPos = d3.select(this).attr('width');
    var valuePos = d3.select(this).attr('value');
    var myIDPos = d3.select(this).attr('myID');
    var typePos = d3.select(this).attr('type');
    
    var xPos = m[0] -(widthPos/2);
    var yPos = m[1] -(heightPos/2);

    var svg = d3.select("#chart").select("svg")
    var heatMap = d3.selectAll(".selected")
	.remove();

//    var movingBlock = d3.selectAll("." + myIDPos)
//       .remove();

    var rectangleDragBehavior = d3.behavior.drag()
        .origin(Object)
        .on("drag", rectangleDraged)
	.on('dragend', rectangleDragended);

    svg.append("rect")
	.attr("myID", myIDPos)
	.attr("type", typePos)
	.attr("x", xPos)
	.attr("y", yPos)
	.attr("height", heightPos)
	.attr("width", widthPos)
	.attr("rx", 4)
	.attr("ry", 4)
	.attr("class", function(d) { return "bordered moving " + myIDPos; })
	.classed("selected", true)
	.attr("value", valuePos)
	.style("fill", function(d) { return dataModel.colors[valuePos]; })
	.attr("transform", "translate(" + dataModel.margin.left  + "," + dataModel.margin.top + ")")
        .on("click", rectangleClicked).call(rectangleDragBehavior)
        .call(d3.behavior.zoom().on("zoom", rectangleZoom));

    if (typePos != PRIORITY_TIME_BLOCK_TYPE) {
      return;
    }
    
    svg.append("rect")
	.attr("myID", myIDPos)
	.attr("type", typePos)
	.attr("x", xPos)
	.attr("y", yPos)
	.attr("height", heightPos)
	.attr("width", widthPos)
	.attr("rx", 4)
	.attr("ry", 4)
	.attr("class", function(d) { return "bordered hatched moving " + myIDPos; })
	.classed("selected", true)
	.attr("value", valuePos)
        .attr('fill', 'url(#diagonalHatch)')      
	.attr("transform", "translate(" + dataModel.margin.left + "," + dataModel.margin.top + ")")
        .on("click", rectangleClicked).call(rectangleDragBehavior)
        .call(d3.behavior.zoom().on("zoom", rectangleZoom));

//    heatMap.transition().duration(1000)
//	.style("fill", function(d) { return colorScale(d.value +1); });
//    heatMap.append("title").text(function(d) { return d.value; });

}


function rectangleDragended() {

    if (isMoving) {
        var myID = d3.select(this).attr('myID');
	var movingBlock = d3.selectAll('.' + myID).remove();

	d3.selectAll('rect').classed("selected", false);
	isMoving = false;
    }
}

function rectangleZoom() {

  if (d3.event.sourceEvent.type=='mousewheel' || d3.event.sourceEvent.type=='DOMMouseScroll'){
  
      if (d3.event.sourceEvent.wheelDelta) {  /* IE/Opera. */
	  delta = event.wheelDelta/120;
	  
      } else if (event.detail) { /** Mozilla case. */
      /** In Mozilla, sign of delta is different than in IE.
	* Also, delta is multiple of 3.
	*/
          delta = -event.detail/3;
      }

      if (delta > 0) {
	dataModel.zoomIn();
	
      } else if (delta < 0) {
	dataModel.zoomOut();
      }
      
      dataModel.recount();
      d3.select("svg")
       .remove();
      drawTimeTable();

  }
}

var mousePositionX = 0;
var mousePositionY = 0;
function backgroundDraged() {
  
    var event = window.event;
    var posX = event.clientX;
    var posY = event.clientY;
        
    var diffX = Math.abs(mousePositionX -posX);
    var diffY = Math.abs(mousePositionY -posY);

    if (diffX > diffY) {
 
	if (posX > mousePositionX) {
	   dataModel.moveLeft();	
	} else {
	   dataModel.moveRight();
	}
    } else {
      
	if (posY > mousePositionY) {
	   dataModel.moveUp();	
	} else {   
	   dataModel.moveDown();
	}
    }

    mousePositionX = posX;
    mousePositionY = posY;
}

function backgroundDragended() {

      dataModel.recount();
      d3.select("svg")
       .remove();
      drawTimeTable();
}

function backgroundClicked(dIn) {
//    alert("backgroundClicked()");
}




var dataModel = new SchedulerDataModelClass();
dataModel.initialization();
drawTimeTable();
