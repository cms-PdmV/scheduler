/*global angular:false, Scheduler:false */

var schedulerModule = angular.module("schedulerModule", ["angularFileUpload"]);
var dataModel;

schedulerModule.controller("Scheduler", function($scope, $http, $upload) {
    "use strict";

    var generateDatesArray = function(date) {
        var array = [];

        for (var i = 0; i < 90; i++) {
            array[i] = date.getStringDate();
            date.setDate(date.getDate() + 1);
        }

        return array;
    };

    //--------initialize default value---------------------------------
    var currentDate = new Date();
    var configData = [];
    var mcmName = "mcm";

    $scope.keywords = "";
    $scope.slots = "";
    $scope.requestFields = "";
    $scope.requests = "";
    $scope.startDate = currentDate.getStringDate();
    $scope.datesStart = generateDatesArray(currentDate);
    $scope.endDate = currentDate.getStringDate();
    $scope.loadingFlag = true;
    $scope.brequestsFlag = false;
    $scope.uploadError = false;
    $scope.uploadErrorMsg = "";
    $scope.customDates = false;
    $scope.tempCsvData = [];
    $scope.checkAll = false;
    $scope.checkAllText = "Select All";
    $scope.mcm = true;
    $scope.uploadSaveLabel = "";
    $scope.labelUrl = "";
    $scope.fileUrl = "";
    $scope.fileList = [];

    //--------non variable initialization----------------------------
    $http({
        url: "getSources",
    }).success(function(data) {
        configData = data.split(",");

        if (configData[0] == mcmName) {
            var mcmState = (configData[1] === "true");
            $scope.mcm = mcmState;
        }
        getFileList();
    });

    var getFileList = function() {
        $http({
            url: "getUploadedFileList",
        }).success(function(data) {
            var fileListArray = data.split(";");

            for (var index in fileListArray) {
                var fileCnfgIndex = configData.indexOf(fileListArray[index]);

                if (fileCnfgIndex >= 0) {
                    var boolVal = (configData[fileCnfgIndex + 1] === "true");
                    addFileToList(fileListArray[index], boolVal);
                } else {
                    addFileToList(fileListArray[index], true);
                }
            }
        });
    };

    //------checks for change in data then changes other data---------
    $scope.$watch("checkAll", function(newValue, oldValue) {
        if (newValue != oldValue) {
            var state = true;

            if ($scope.checkAll) {
                $scope.checkAllText = "Deselect All";
            } else {
                $scope.checkAllText = "Select All";
                state = false;
            }
            $scope.mcm = state;

            for (var index in $scope.fileList) {
                $scope.fileList[index].state = state;
            }
            $scope.saveConfig();
        }
    });

    $scope.$watch("[startDate, endDate]", function() {
        if ($scope.requests !== "") {
            redraw();
            $scope.loadingFlag = false;
        }
    }, true);

    $scope.$watch("startDate", function() {
        var startDateCurrent = setParsedDate($scope.startDate);
        startDateCurrent.setDate(startDateCurrent.getDate() + 1);
        $scope.datesEnd = generateDatesArray(startDateCurrent);
    });

    $scope.$watch("endDate", function() {
        var endDateCurrent = setParsedDate($scope.endDate);
        var dateNow = new Date();
        var array = [];
        var count = 0;

        while (dateNow.getStringDate() != endDateCurrent.getStringDate()) {
            array[count] = dateNow.getStringDate();
            dateNow.setDate(dateNow.getDate() + 1);
            count++;
        }

        $scope.datesStart = array;
    });
    //-----------------------------------------------------------------
    $scope.schedule = function() {
        $scope.loadingFlag = true;
        $http({
            url: "data?keywords=" + $scope.keywords + "&slots=" + $scope.slots + "&tempCsv=" + $scope.tempCsvData,
        }).success(function(data) {
            $scope.requests = data;
            $scope.requestFields = data.fields;
            redraw();
            $scope.loadingFlag = false;
            $scope.customDates = true;
        });
    };

    $scope.onFileSelect = function($files) {
        $scope.uploadError = false;
        $scope.uploadErrorMsg = "";
        var file = $files[0];

        if (file.type != "text/csv") {
            $scope.uploadError = true;
            $scope.uploadErrorMsg = "File must be in CSV file format.";
            return;
        }

        $scope.upload = $upload.upload({
            url: "upload",
            file: file,
        }).success(function(data) {
            var json = "[" + data.toString() + "]";

            if (!validateJson(json, data)) {
                return;
            }
            $scope.tempCsvData = json;
            $scope.schedule();
        });
    };

    $scope.onFileSelectToSave = function($files) {
        $scope.uploadError = false;
        $scope.uploadErrorMsg = "";
        var file = $files[0];

        if (isEmptyError($scope.uploadSaveLabel, "Label cannot be empty.")) {
            return;
        }

        if (file.type != "text/csv") {
            $scope.uploadError = true;
            $scope.uploadErrorMsg = "File must be in CSV file format.";
            return;
        }

        $scope.upload = $upload.upload({
            url: "uploadAndSave?filename=" + $scope.uploadSaveLabel,
            file: file,
        }).success(function(data) {
            var json = "[" + data.toString() + "]";

            if (!validateJson(json, data)) {
                return;
            }
            $scope.schedule();
            addFileToList($scope.uploadSaveLabel, true);
        });
    };

    $scope.uploadFromUrl = function() {
        $scope.uploadError = false;
        $scope.uploadErrorMsg = "";

        if (isEmptyError($scope.labelUrl, "Label cannot be empty.")) {
            return;
        }

        if (isEmptyError($scope.fileUrl, "Url cannot be empty.")) {
            return;
        }

        $http({
            url: "uploadFromUrl?urlName=" + $scope.fileUrl + "&filename=" + $scope.labelUrl,
        }).success(function(data) {

            if (data == "fail") {
                $scope.uploadErrorMsg = "Bad url - cannot retrieve data.";
                $scope.uploadError = true;
                return;
            }

            var json = "[" + data.toString() + "]";

            if (!validateJson(json, data)) {
                return;
            }
            $scope.schedule();

            addFileToList($scope.labelUrl, true);
        });
    };

    $scope.onClickBadRequests = function() {
        if ($scope.brequestsFlag) {
            $scope.brequestsFlag = false;
        } else {
            $scope.brequestsFlag = true;
        }
    };

    $scope.deleteFile = function(fileIndex) {
        $http({
            url: "deleteFile?filename=" + $scope.fileList[fileIndex].label,
        }).success(function() {
            $scope.fileList.splice([fileIndex], 1);
            $scope.saveConfig();
        });
    };

    $scope.fileListSave = function(fileIndex) {
        $scope.fileList[fileIndex].state = !$scope.fileList[fileIndex].state;
        $scope.saveConfig();
    };

    $scope.mcmChange = function() {
        $scope.mcm = !$scope.mcm;
        $scope.saveConfig();
    };

    $scope.saveConfig = function() {
        var configArray = [];
        configArray.push(mcmName);
        configArray.push($scope.mcm);

        for (var index in $scope.fileList) {
            configArray.push($scope.fileList[index].label);
            configArray.push($scope.fileList[index].state);
        }

        $http({
            url: "setSources?data=" + configArray.toString(),
        });
    };

    var addFileToList = function(filename, state) {
        var fileObject = {};
        fileObject.state = state;
        fileObject.label = filename;
        $scope.fileList.push(fileObject);
        $scope.saveConfig();
    };

    var isEmptyError = function(item, message) {
        if (item === "") {
            $scope.uploadErrorMsg = message;
            $scope.uploadError = true;
            return true;
        }
        return false;
    };

    var validateJson = function(json, data) {
        if (json.indexOf("{") < 0 && json.indexOf("}") < 0) {
            $scope.uploadError = true;
            $scope.uploadErrorMsg = data;
            return false;
        }
        return true;
    };

    var redraw = function() {
        // Point to Run Javascript
        var scheduler = new Scheduler.MainScheduler();
        scheduler.removeTableFunc();

        dataModel = new Scheduler.SchedulerDataModelClass();
        var result = dataModel.initialization($scope.startDate, $scope.endDate, $scope.requests, $scope.customDates);
        var endDateString = result.toString().split(" ");
        $scope.endDate = endDateString[0];
        scheduler.drawTimeTableFunc();
    };

    var setParsedDate = function(stringDate) {
        var resultDate = new Date();
        var date = stringDate.split("-");
        resultDate.setFullYear(parseInt(date[0]));
        resultDate.setMonth(parseInt(date[1]) - 1);
        resultDate.setDate(parseInt(date[2]));

        return resultDate;
    };

});

Date.prototype.getStringDate = function() {
    "use strict";
    var seperator = "-";
    var day = ((this.getDate() < 10) ? "0" : "") + (this.getDate());
    var year = this.getFullYear();
    var month = (((this.getMonth() + 1) < 10) ? "0" : "") + (this.getMonth() + 1);
    return year + seperator + month + seperator + day;
};
