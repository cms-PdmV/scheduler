/*global $:false, jQuery:false, d3:false, dataModel:false */

//namespace
var Scheduler = Scheduler || {};

// DateDifferenceClass represents date difference
Scheduler.DateDifferenceClass = function(dateDifferenceString) {
    "use strict";

    // function parse string to this instance of DateDifferenceClass
    this.parse = function(dateDifferenceString) {
        var dayStartIndex =
            dateDifferenceString.indexOf("days=") + "days=".length;
        var dayEndIndex =
            dateDifferenceString.indexOf(", hours=");
        this.days =
            dateDifferenceString.substring(dayStartIndex, dayEndIndex);

        var hourStartIndex =
            dateDifferenceString.indexOf("hours=") + "hours=".length;
        var hourEndIndex =
            dateDifferenceString.indexOf(", minutes=");
        this.hours =
            dateDifferenceString.substring(hourStartIndex, hourEndIndex);

        var minuteStartIndex =
            dateDifferenceString.indexOf("minutes=") + "minutes=".length;
        var minuteEndIndex =
            dateDifferenceString.indexOf(", seconds=");
        this.minutes =
            dateDifferenceString.substring(minuteStartIndex, minuteEndIndex);

        var secondStartIndex =
            dateDifferenceString.indexOf("seconds=") + "seconds=".length;
        var secondEndIndex = dateDifferenceString.length;
        this.seconds =
            dateDifferenceString.substring(secondStartIndex, secondEndIndex);
    };

    // function is doing plus date difference
    this.plusDifference = function(dateDifferenceToPlus) {
        var dateDiff = dateDifferenceToPlus;

        var daysSum = parseInt(this.days) + parseInt(dateDiff.days);
        var hoursSum = parseInt(this.hours) + parseInt(dateDiff.hours);
        var minutesSum = parseInt(this.minutes) + parseInt(dateDiff.minutes);
        var secondsSum = parseInt(this.seconds) + parseInt(dateDiff.seconds);

        var seconds = this.getSeconds(daysSum, hoursSum,
            minutesSum, secondsSum);
        var dateString = this.secondsToString(seconds);

        return new Scheduler.DateDifferenceClass(dateString);
    };

    // function is doing minus this date difference
    this.minusDifference = function(dateDifferenceToMinus) {
        var dateDiff = dateDifferenceToMinus;

        var daysDiff = parseInt(this.days) - parseInt(dateDiff.days);
        var hoursDiff = parseInt(this.hours) - parseInt(dateDiff.hours);
        var minutesDiff = parseInt(this.minutes) - parseInt(dateDiff.minutes);
        var secondsDiff = parseInt(this.seconds) - parseInt(dateDiff.seconds);

        var seconds = this.getSeconds(daysDiff, hoursDiff,
            minutesDiff, secondsDiff);
        var dateString = this.secondsToString(seconds);

        return new Scheduler.DateDifferenceClass(dateString);
    };

    // function is doing divide this date by date difference
    this.divideDifference = function(intToDivision) {
        var secondsAll = this.getSeconds(this.days, this.hours, this.minutes, this.seconds);
        var secondsPart = Math.floor(secondsAll / intToDivision);
        var dateString = this.secondsToString(secondsPart);

        return new Scheduler.DateDifferenceClass(dateString);
    };

    // function returns secounds
    this.getSeconds = function(days, hours, minutes, seconds) {
        seconds = 60 * 60 * 24 * parseInt(days) + 60 * 60 * parseInt(hours) + 60 * parseInt(minutes) + parseInt(seconds);

        return seconds;
    };

    this.toString = function() {
        var resultString = "days=" + this.days + ", hours=" + this.hours + ", " + "minutes=" + this.minutes + ", seconds=" + this.seconds;

        return resultString;
    };

    // function returns string from seconds-value
    this.secondsToString = function(secondsAll) {
        var daysR = Math.floor(secondsAll / 60 / 60 / 24);
        var hoursR = Math.floor(secondsAll / 60 / 60 - daysR * 24);
        var minutesR = Math.floor(secondsAll / 60 - 24 * 60 * daysR - 60 * hoursR);
        var secondsR = Math.floor(secondsAll - 24 * 60 * 60 * daysR - 60 * 60 * hoursR - 60 * minutesR);
        var dateString = "days=" + daysR + ", hours=" + hoursR + ", " +
            "minutes=" + minutesR + ", seconds=" + secondsR;

        return dateString;
    };

    this.getSecondsSum = function() {
        var seconds = 60 * 60 * 24 * parseInt(this.days) + 60 * 60 * parseInt(this.hours) + 60 * parseInt(this.minutes) + parseInt(this.seconds);

        return seconds;
    };

    this.parse(dateDifferenceString);
};



// DateClass represents date
Scheduler.DateClass = function(dateString) {
    "use strict";

    this.stringToDate = function(dateString) {
        var reggie = /(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2})/;
        var dateArray = reggie.exec(dateString);
        var dateObject = new Date(
            (+dateArray[1]), (+dateArray[2]) - 1, // Careful, month starts at 0!
            (+dateArray[3]), (+dateArray[4]), (+dateArray[5]), (+dateArray[6])
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

    this.toLabel = function() {
        var dateStr = this.padStr(this.date.getFullYear()) + "-" +
            this.padStr(1 + this.date.getMonth()) + "-" +
            this.padStr(this.date.getDate()) + " " +
            this.padStr(this.date.getHours()) + ":" +
            this.padStr(this.date.getMinutes());
        return dateStr;
    };


    // function returns DateDifferenceClass between dateMinuend, dateSubtrahend
    this.getDifference = function(dateMinuend, dateSubtrahend) {
        var dateM = dateMinuend.date;
        var dateS = dateSubtrahend.date;

        var minuend = Date.UTC(dateM.getFullYear(),
            dateM.getMonth(), dateM.getDate());
        var subtrahend = Date.UTC(dateS.getFullYear(),
            dateS.getMonth(), dateS.getDate());

        var diffDateMs = Math.abs(minuend - subtrahend);
        var days = Math.floor(diffDateMs / 1000 / 60 / 60 / 24);

        var diffTimeMs = dateM.getTime() - dateS.getTime();

        var hours = Math.floor(diffTimeMs / 1000 / 60 / 60 - days * 24);
        var minutes = Math.floor(diffTimeMs / 1000 / 60 - 24 * 60 * days - 60 * hours);
        var seconds = Math.floor(diffTimeMs / 1000 - 24 * 60 * 60 * days - 60 * 60 * hours - 60 * minutes);

        var dateDifferenceString = "days=" + days + ", hours=" + hours + ", minutes=" + minutes + ", seconds=" + seconds;

        return new Scheduler.DateDifferenceClass(dateDifferenceString);
    };

    // function returns the difference of DateDifferenceClass
    this.minusDate = function(dateSubtrahend) {
        return this.getDifference(this, dateSubtrahend);
    };

    // function returns the date as the sum of this instance with given DateDifference
    this.plusDifference = function(dateDifference) {
        var daysPlus = dateDifference.days;
        var hoursPlus = dateDifference.hours;
        var minutesPlus = dateDifference.minutes;
        var secondsPlus = dateDifference.seconds;

        var dateString = this.toString();
        var dateResult = new Scheduler.DateClass(dateString);

        var daysValue = parseInt(daysPlus) * 24 * 60 * 60 * 1000;
        dateResult.date.setTime(dateResult.date.getTime() + daysValue);

        var hoursValue = parseInt(hoursPlus) * 60 * 60 * 1000;
        dateResult.date.setTime(dateResult.date.getTime() + hoursValue);

        var minutesValue = parseInt(minutesPlus) * 60 * 1000;
        dateResult.date.setTime(dateResult.date.getTime() + minutesValue);

        var secondsValue = parseInt(secondsPlus) * 1000;
        dateResult.date.setTime(dateResult.date.getTime() + secondsValue);

        return dateResult;
    };

    this.date = this.stringToDate(dateString);

};


var PRIORITY_TIME_BLOCK_TYPE = "planedPriorityBlock";
var DEADLINE_TIME_BLOCK_TYPE = "planedDeadlineBlock";

Scheduler.SchedulerDataModelClass = function() {
    "use strict";

    this.initialization = function(startDateInput, endDateInput, data, customDates) {
        this.totalWidth = 900;
        this.totalHeight = 530;

        this.dataSource = data.fields;
        var eventMax = data.eventMax;

        this.startEvent = 0;

        if (eventMax > 0) {
            this.endEvent = eventMax;
        } else {
            this.endEvent = 86487;
        }

        if (!customDates) {
            this.setStartEndDates(endDateInput);
        } else {
            var endDateString = endDateInput + " " + "00:00:00";
            var startDateString = startDateInput + " " + "00:00:00";
            this.startDate = new Scheduler.DateClass(startDateString);
            this.endDate = new Scheduler.DateClass(endDateString);
        }

        this.recount();
        return this.endDate
    };

    this.setStartEndDates = function(endDateInput) {
        var currentDate = new Date();
        var endDate = new Date();
        var startDateString = currentDate.getStringDate() + " " + currentDate.timeNow();
        var endDateString;

        endDate = this.getLastDeadline();

        var currentDay = endDate.getDate();
        endDate.setDate(currentDay + 1);

        if (endDate !== undefined) {
            endDateString = endDate.getStringDate() + " " + endDate.timeNow();
        } else {
            endDateString = endDateInput + " " + "00:00:00";
        }

        this.startDate = new Scheduler.DateClass(startDateString);
        this.endDate = new Scheduler.DateClass(endDateString);
    };

    // For todays date;
    Date.prototype.getStringDate = function() {
        var seperator = "-";
        var day = ((this.getDate() < 10) ? "0" : "") + (this.getDate());
        var year = this.getFullYear();
        var month = (((this.getMonth() + 1) < 10) ? "0" : "") + (this.getMonth() + 1);
        return year + seperator + month + seperator + day;
    };

    // For the time now
    Date.prototype.timeNow = function() {
        var seperator = ":";
        var hours = ((this.getHours() < 10) ? "0" : "") + this.getHours();
        var minutes = ((this.getMinutes() < 10) ? "0" : "") + this.getMinutes();
        var seconds = ((this.getSeconds() < 10) ? "0" : "") + this.getSeconds();
        return hours + seperator + minutes + seperator + seconds;
    };

    this.getLastDeadline = function() {
        var allStringDates = [];
        var deadlines = 0;

        for (var blockIndex = 0; blockIndex < this.dataSource.length; blockIndex++) {
            var timeBlockI = this.getTimeBlock(blockIndex);
            var dateHour = timeBlockI.hour;
            allStringDates[deadlines] = dateHour;
            deadlines++;
        }
        return this.parseAndCompareDates(allStringDates);
    };

    this.parseAndCompareDates = function(dates) {
        var lastDate = new Date();

        if (dates.length == 1) {
            return this.setParsedDate(dates[0]);
        }

        if (dates.length > 1) {
            var tempDate = new Date();
            lastDate = this.setParsedDate(dates[0]);

            for (var count = 0; count < dates.length; count++) {
                tempDate = this.setParsedDate(dates[count]);

                if (lastDate.getTime() < tempDate.getTime()) {
                    lastDate = tempDate;
                }
            }
        }
        return lastDate;
    };

    this.setParsedDate = function(stringDate) {
        var resultDate = new Date();
        var dateHourParts = stringDate.split(" ");

        if (dateHourParts.length > 1) {
            var date = dateHourParts[0].split("-");
            var time = dateHourParts[1].split(":");

            resultDate.setFullYear(parseInt(date[0]));
            resultDate.setMonth(parseInt(date[1]) - 1);
            resultDate.setDate(parseInt(date[2]));
            resultDate.setHours(parseInt(time[0]));
            resultDate.setMinutes(parseInt(time[1]));
            resultDate.setSeconds(parseInt(time[2]));
        }
        return resultDate;
    };

    this.getTimeBlock = function(blockIndex) {
        var timeBlockSourceI = this.dataSource[blockIndex];
        return jQuery.extend(true, {}, timeBlockSourceI);
    };

    this.recount = function() {
        this.margin = {
            top: 120,
            right: 40,
            bottom: 100,
            left: 60
        };
        this.width = this.totalWidth - this.margin.left - this.margin.right;
        this.height = this.totalHeight - this.margin.top - this.margin.bottom;
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
        var eventDiff = this.endEvent - this.startEvent;
        var eventPart = eventDiff / this.eventLabelsCount;
        this.events = [];
        var eventI = this.startEvent;

        for (var d = 0; d < this.eventLabelsCount; d++) {
            eventI = Math.round(eventI + eventPart);
            this.events.push("" + eventI);
        }

        this.getOverlapedTimeBlocks();
    };

    // Function returns only blocks which are inside of showed space
    this.getOverlapedTimeBlocks = function() {
        this.planedBlocks = [];
        this.planedPriorityBlocks = [];
        this.planedDeadlineBlocks = [];

        for (var blockIndex = 0; blockIndex < this.dataSource.length; blockIndex++) {

            var timeBlockSourceI = this.dataSource[blockIndex];
            var timeBlockI = jQuery.extend(true, {}, timeBlockSourceI);
            var keywords = timeBlockI.keywords;
            var typeB = timeBlockI.type;

            timeBlockI = $.extend({}, timeBlockI, keywords);

            if (typeB == PRIORITY_TIME_BLOCK_TYPE) {
                this.planedPriorityBlocks.push(timeBlockI);
            } else
            if (typeB == DEADLINE_TIME_BLOCK_TYPE) {
                this.planedDeadlineBlocks.push(timeBlockI);
            }
            this.planedBlocks.push(timeBlockI);
        }
    };

    // Function returns size in pixels from differentDate
    this.getRecountedDifferentDate = function(differentDate) {
        var diffDate = this.endDate.minusDate(this.startDate);
        var diffSecond = diffDate.getSecondsSum();

        var pixelsTakeOneSecond = this.width / diffSecond;

        var result = differentDate.getSecondsSum() * pixelsTakeOneSecond;
        return result;
    };

    // Function returns size in pixels from differentEvent
    this.getRecountedDifferentEvent = function(differentEvent) {
        var diffEvent = this.endEvent - this.startEvent;

        var pixelsTakeOneEvent = this.height / diffEvent;

        var result = differentEvent * pixelsTakeOneEvent;
        return result;
    };

    // Function returns X position in pixels from dateTimeX
    this.getRecountedX = function(dateTimeX) {
        var diffDate = this.endDate.minusDate(this.startDate);
        var diffSecond = diffDate.getSecondsSum();

        var pixelsTakeOneSecond = this.width / diffSecond;

        var countedDiffDate = dateTimeX.minusDate(this.startDate);
        var result = countedDiffDate.getSecondsSum() * pixelsTakeOneSecond;
        return result;
    };

    // Function returns Y position in pixels from numEventsY
    this.getRecountedY = function(numEventsY) {
        var diffEvent = this.endEvent - this.startEvent;

        var pixelsTakeOneEvent = this.height / diffEvent;

        var result = (numEventsY - this.startEvent) * pixelsTakeOneEvent;
        return result;
    };

    // Function returns Events LabelX
    this.getEventLabelX = function() {
        return 0;
    };

    // Function returns Events LabelY
    this.getEventLabelY = function(numberOfLabel) {
        var labelHeight = this.height / this.eventLabelsCount;
        return numberOfLabel * labelHeight;
    };

    // Function returns Dates LabelX
    this.getDateLabelX = function(numberOfLabel) {
        var labelWidth = this.width / this.dateLabelsCount;
        return numberOfLabel * labelWidth + 0.65 * this.margin.left;
    };

    // Function returns Dates LabelY
    this.getDateLabelY = function() {
        return -30;
    };

    // Function returns X pixels position of TimeBlock
    this.getTimeBlockX = function(d) {
        var date = new Scheduler.DateClass(d.hour);
        return this.getRecountedX(date);
    };

    // Function returns X pixels position of TimeBlock
    this.getTimeBlockY = function(d) {
        return this.getRecountedY(d.event);
    };

    // Function returns width pixels of TimeBlock
    this.getTimeBlockWidth = function(d) {
        var diffDate = new Scheduler.DateDifferenceClass(d.width);
        return this.getRecountedDifferentDate(diffDate);
    };

    // Function returns height pixels of TimeBlock
    this.getTimeBlockHeight = function(d) {
        return this.getRecountedDifferentEvent(d.height);
    };

    // Function returns type of TimeBlock
    this.getTimeBlockType = function(d) {
        return d.type;
    };

    // Function returns X-positin in pixels of Element
    this.getLegendElementX = function(numberOfElement) {
        return this.getLegendElementWidth() * numberOfElement;
    };

    // Function returns Y-positin in pixels of Element
    this.getLegendElementY = function() {
        return dataModel.height;
    };

    // Function returns width in pixels of Element
    this.getLegendElementWidth = function() {
        return this.width / 12;
    };

    // Function returns height in pixels of Element
    this.getLegendElementHeight = function() {
        return this.width / 48;
    };

};

Scheduler.MainScheduler = function() {
    "use strict";

    var eventListener = new Scheduler.EventListeners();

    var drawColorButtons = function(colorDiv, colorButtonList) {
        var colorBtnArray = d3.keys(colorButtonList);
        var colorButtonValues = d3.values(colorButtonList);

        for (var index = 0; index < colorBtnArray.length; index++) {
            var colorButton = colorDiv.append("input")
                .attr("class", "colorButton")
                .attr("type", "button")
                .attr("value", colorBtnArray[index])
                .attr("onClick", "Scheduler.MainScheduler().recolor(" + "\"" + colorButtonValues[index] + "\"" + ")");

            if (fieldType == colorButtonValues[index]) {
                colorButton.style("background-color", "#38764C");
                colorButton.style("color", "#FFFFFF");
            }
        }
    };

    var fieldType = "value";
    // function draws timetable to canvas
    var drawTimeTable = function() {
        //--------------initialize variables-------------------------------
        var customColors = {};
        var baseColor = 12826523;
        var colorIncrement = 30003;
        var labelSpaces = 20;
        var durationForCalc = 1500;
        var durationTotal = 2000;
        var labelDuration = 1000;
        var labelDelay = 500;
        var labelDivWidth = 210;
        var labelDivHeigth = 500;
        var labelColorWidth = 15;
        var labelColorHeight = 15;
        var schedulerWidth = dataModel.width + dataModel.margin.left + dataModel.margin.right;
        var schedulerHeight = dataModel.height + dataModel.margin.top + dataModel.margin.bottom;
        var titleX = 320;
        var titleY = -92;

        var colorButtonList = {};
        colorButtonList.Priority = "value";
        colorButtonList.Energy = "energy";
        colorButtonList.Pwg = "pwg";
        colorButtonList["Member of Campaign"] = "member_of_campaign";
        colorButtonList.Type = "type";
        colorButtonList.Status = "status";
        colorButtonList.Tags = "tags";
        colorButtonList.Prepid = "prepid";
        colorButtonList.Source = "source";

        //-------------visualize scheduler--------------------------------
        var svg = d3.select("#chart").append("svg")
            .attr("id", "chartDrawing")
            .attr("width", schedulerWidth)
            .attr("height", schedulerHeight)
            .append("g")
            .attr("transform", "translate(" + dataModel.margin.left + "," + dataModel.margin.top + ")");

        svg.append("text")
            .attr("class", "title")
            .text("Requests schedule")
            .attr("x", titleX)
            .attr("y", titleY);

        svg.append("defs")
            .append("pattern")
            .attr("id", "diagonalHatch")
            .attr("patternUnits", "userSpaceOnUse")
            .attr("width", 4)
            .attr("height", 4)
            .append("path")
            .attr("d", "M-1,1 l2,-2 M0,4 l4,-4 M3,5 l2,-2")
            .attr("stroke", "#000000")
            .attr("stroke-width", 0.2);

        var eventLabels = svg.selectAll(".dayLabel")
            .data(dataModel.events)
            .enter().append("text")
            .text(function(d) {
                return d;
            })
            .attr("x", function(d, i) {
                return dataModel.getEventLabelX(i);
            })
            .attr("y", 500)
            .style("text-anchor", "end")
            .attr("transform", "translate(-6," + dataModel.width / 24 / 1.5 + ")")
            .attr("class", function(d, i) {
                return ((i >= 0 && i <= 100) ? "dayLabel mono axis axis-workweek" : "dayLabel mono axis");
            });

        eventLabels
            .transition()
            .duration(labelDuration)
            .delay(labelDelay)
            .ease("elastic")
            .attr("y", function(d, i) {
                return dataModel.getEventLabelY(dataModel.events.length - 1 - i);
            });

        var timeLabels = svg.selectAll(".timeLabel")
            .data(dataModel.dateLabels)
            .enter().append("text")
            .text(function(d) {
                return d;
            })
            .attr("x", function(d, i) {
                return dataModel.getDateLabelX(i);
            })
            .attr("y", 320)
            .style("text-anchor", "middle")
            .attr("transform", function(d, i) {
                return "rotate(-30, " + (dataModel.getDateLabelX(i)) + "," + (dataModel.getDateLabelY(i)) + ")";
            })
            .attr("class", function(d, i) {
                return ((i >= 0 && i <= 100) ? "timeLabel mono axis axis-worktime" : "timeLabel mono axis");
            });

        timeLabels
            .transition()
            .duration(labelDuration)
            .delay(labelDelay)
            .ease("elastic")
            .attr("y", function(d, i) {
                return dataModel.getDateLabelY(i);
            });

        var svgGraph = svg.append("svg");

        var heatMap = svgGraph.selectAll(".hour")
            .data(dataModel.planedBlocks)
            .enter().append("rect")
            .attr("type", function(d) {
                return dataModel.getTimeBlockType(d);
            })
            .attr("x", function(d) {
                return dataModel.getTimeBlockX(d);
            })
            .attr("y", function(d) {
                return -dataModel.height - dataModel.getTimeBlockY(d) - dataModel.getTimeBlockHeight(d);
            })
            .attr("rx", 4)
            .attr("ry", 4)
            .attr("class", function() {
                return "bordered noSelected ";
            })
            .attr("width", function(d) {
                return dataModel.getTimeBlockWidth(d);
            })
            .attr("height", function(d) {
                return dataModel.getTimeBlockHeight(d);
            })
            .attr("value", function(d) {
                return d[fieldType];
            })
            .style("fill",
                function(d) {
                    var fieldKey = d[fieldType];

                    if (fieldKey in customColors) {
                        return customColors[fieldKey];
                    } else {
                        baseColor = getColor(baseColor);

                        customColors[fieldKey] = "#" + baseColor.toString(16);
                        return customColors[fieldKey];
                    }
                })
            .on("click", eventListener.rectangleClicked);

        //-----------------color labels (color and name)--------------------
        var colorLabelDiv = d3.select("#chart").append("div")
            .attr("id", "colorLabelDiv");

        colorLabelDiv.append("text")
            .attr("id", "colorLabels")
            .text("Color labels: ");

        var customColorLength = d3.entries(customColors).length;
        labelDivHeigth = (customColorLength) * labelColorHeight + (labelSpaces * customColorLength / 4);

        var labels = colorLabelDiv.append("svg")
            .attr("id", "labels")
            .attr("width", labelDivWidth)
            .attr("height", labelDivHeigth);

        var y = -labelSpaces;

        labels.selectAll("rect")
            .data(d3.entries(customColors))
            .enter()
            .append("rect")
            .attr("y", function() {
                return y += labelSpaces;
            })
            .attr("width", labelColorWidth)
            .attr("height", labelColorHeight)
            .attr("class", "singleColorLabel")
            .style("fill", function(d) {
                return customColors[d.key];
            });

        y = -labelSpaces / 3;

        labels.selectAll("text")
            .data(d3.entries(customColors))
            .enter()
            .append("text")
            .text(function(d) {
                return d.key.replace(/(u')*['\]\[{}]*/g, "");
            })
            .attr("x", labelSpaces)
            .attr("y", function() {
                return y += labelSpaces;
            })
            .attr("class", "colorTextLabel");

        //-----------------color buttons (color by something)---------------
        var colorDiv = d3.select("#chart").append("div")
            .attr("id", "colorDiv");

        colorDiv.append("text")
            .attr("id", "colorButtons")
            .text("Coloring options: ");

        drawColorButtons(colorDiv, colorButtonList);

        //----------legend to show different types of request------------
        var legend = svg
            .append("g")
            .attr("class", "legend");

        legend.append("rect")
            .attr("x", function() {
                return dataModel.getLegendElementX(0);
            })
            .attr("y", dataModel.height + 3 * dataModel.getLegendElementHeight())
            .attr("width", dataModel.getLegendElementWidth())
            .attr("height", dataModel.getLegendElementHeight())
            .attr("fill", "url(#diagonalHatch)")
            .style("stroke", "#000000");

        legend.append("text")
            .attr("class", "mono")
            .text("Priority blocks")
            .attr("x", dataModel.getLegendElementX(0))
            .attr("y", dataModel.height + 5 * dataModel.getLegendElementHeight());

        legend.append("rect")
            .attr("x", function() {
                return dataModel.getLegendElementX(2);
            })
            .attr("y", dataModel.height + 3 * dataModel.getLegendElementHeight())
            .attr("width", dataModel.getLegendElementWidth())
            .attr("height", dataModel.getLegendElementHeight())
            .attr("fill", "#FFFFFF")
            .style("stroke", "#000000");

        legend.append("text")
            .attr("class", "mono")
            .text("Deadline blocks")
            .attr("x", dataModel.getLegendElementX(2))
            .attr("y", dataModel.height + 5 * dataModel.getLegendElementHeight());

        //------scheduler animations and other graphic elements-------------
        var priorityBlocksHatch = svgGraph.selectAll(".hour2")
            .data(dataModel.planedPriorityBlocks)
            .enter().append("rect")
            .attr("type", PRIORITY_TIME_BLOCK_TYPE)
            .attr("x", function(d) {
                return dataModel.getTimeBlockX(d);
            })
            .attr("y", 500)
            .attr("rx", 4)
            .attr("ry", 4)
            .attr("width", function(d) {
                return dataModel.getTimeBlockWidth(d);
            })
            .attr("height", function(d) {
                return dataModel.getTimeBlockHeight(d);
            })
            .attr("value", function(d) {
                return d[fieldType];
            })
            .attr("class", function() {
                return "bordered noSelected hatched ";
            })
            .attr("fill", "url(#diagonalHatch)")
            .on("click", eventListener.rectangleClicked);

        priorityBlocksHatch
            .transition()
            .duration(function(d) {
                return durationForCalc + 2 * (dataModel.height - dataModel.getTimeBlockY(d) - dataModel.getTimeBlockHeight(d));
            })
            .delay(function(d) {
                return durationForCalc + 2 * (dataModel.height - dataModel.getTimeBlockY(d) - dataModel.getTimeBlockHeight(d));
            })
            .attr("y", function(d) {
                return dataModel.height - dataModel.getTimeBlockY(d) - dataModel.getTimeBlockHeight(d);
            });

        d3.selectAll("rect").classed("selected", false);

        heatMap.transition().duration(durationTotal)
            .style("fill",
                function(d) {
                    var fieldValue = d[fieldType];
                    return customColors[fieldValue];
                });
        heatMap.append("title").text(function(d) {
            return d[fieldType];
        });

        heatMap
            .transition()
            .duration(function(d) {
                return durationForCalc + 2 * (dataModel.height - dataModel.getTimeBlockY(d) - dataModel.getTimeBlockHeight(d));
            })
            .delay(function(d) {
                return durationForCalc + 2 * (dataModel.height - dataModel.getTimeBlockY(d) - dataModel.getTimeBlockHeight(d));
            })
            .attr("y", function(d) {
                return dataModel.height - dataModel.getTimeBlockY(d) - dataModel.getTimeBlockHeight(d);
            });

        priorityBlocksHatch.append("title").text(function(d) {
            return d[fieldType];
        });
    };

    var getColor = function(colorDecimal) {
        var goldenRatio = 1.61803398875;
        var newColor = colorDecimal * goldenRatio;
        var maxColor = 16770215;
        var minColor = 2826523;

        //if new color above max color
        if (newColor > maxColor) {
            newColor = newColor - maxColor;
            newColor = newColor * goldenRatio;
        }

        if (newColor < minColor) {
            newColor = minColor + newColor;
        }

        return Math.round(newColor);
    };

    this.drawTimeTableFunc = function() {
        drawTimeTable();
    };

    //removes already drawn table
    var removeTable = function() {
        d3.select("#chartDrawing").remove();
        d3.select("#colorDiv").remove();
        d3.select("#colorLabelDiv").remove();
    };

    this.removeTableFunc = function() {
        removeTable();
    };

    this.recolor = function(colorByKey) {
        fieldType = colorByKey;
        removeTable();
        drawTimeTable();
    };

    return this;
};

Scheduler.EventListeners = function() {
    "use strict";

    var isSelected = false;
    var oldSelection;
    var oldColor;

    var removePopupMessage = function() {
        d3.select("#messageDiv").remove();

        if (oldSelection) {
            var oldRect = d3.select(oldSelection);
            repaintRect(oldRect);
        }
    };

    // Function handler - Click
    this.rectangleClicked = function(dIn) {
        isSelected = !isSelected;
        var selection;

        if (isSelected || oldSelection != this) {

            removePopupMessage();
            oldSelection = this;

            selection = d3.select(this);

            if (selection[0][0]["style"]["fill"] != "") {
                oldColor = selection[0][0]["style"]["fill"];
            } else {
                oldColor = "url(#diagonalHatch)";
            }

            selection.style("fill", "#FF0000");

            drawMsgOnClick(dIn);
        } else {
            removePopupMessage();

            selection = d3.select(this);
            repaintRect(selection);
        }
    };

    var drawMsgOnClick = function(dIn) {
        var xAxis = 10;
        var yAxis = 30;
        var yMargin = 20;
        var xMargin = 10;
        var keywords = dIn.keywords;

        d3.select("#clickMessage").append("div")
            .attr("id", "messageDiv")
            .on("click", removePopupMessage);

        d3.select("#messageDiv").append("input")
            .attr("id", "closeMessage")
            .attr("type", "button")
            .attr("value", "X")
            .on("click", removePopupMessage);

        var svg = d3.select("#messageDiv").append("svg")
            .attr("id", "clickMessageDrawing")
            .append("g");

        svg.append("text")
            .attr("class", "titleText")
            .text("Scheduled request information")
            .attr("x", xAxis)
            .attr("y", yAxis);

        svg.append("text")
            .attr("class", "regularText")
            .text("Value: " + dIn.value)
            .attr("x", xAxis += xMargin / 2)
            .attr("y", yAxis += yMargin);

        svg.append("text")
            .attr("class", "regularText")
            .text("EventStartNumber: " + dIn.event)
            .attr("x", xAxis)
            .attr("y", yAxis += yMargin);

        svg.append("text")
            .attr("class", "regularText")
            .text("EventStartDate: " + dIn.hour)
            .attr("x", xAxis)
            .attr("y", yAxis += yMargin);

        svg.append("text")
            .attr("class", "regularText")
            .text("Keywords: ")
            .attr("x", xAxis)
            .attr("y", yAxis += yMargin);


        xAxis += xMargin;

        for (var key in keywords) {
            svg.append("text")
                .attr("class", "sublistText")
                .text(key + " : " + keywords[key])
                .attr("x", xAxis)
                .attr("y", yAxis += yMargin);
        }

        xAxis -= xMargin;

        svg.append("text")
            .attr("class", "regularText")
            .text("Height: " + dIn.height)
            .attr("x", xAxis)
            .attr("y", yAxis += yMargin);

        svg.append("text")
            .attr("class", "regularText")
            .text("Width: " + dIn.width)
            .attr("x", xAxis)
            .attr("y", yAxis += yMargin);

        yAxis += yMargin;
        d3.select("#clickMessageDrawing").style("height", yAxis.toString() + "px");
    };

    var repaintRect = function(selection) {
        var typePos = selection.attr("type");
        var valuePos = selection.attr("value");
        selection.style("fill", oldColor);
    };

    return this;
};
