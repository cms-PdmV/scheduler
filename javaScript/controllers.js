var schedulerModule = angular.module('schedulerModule', ['angularFileUpload']);

schedulerModule.controller('Scheduler', function ($scope, $http, $upload) {
	var currentDate = new Date();

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
	$scope.helpUploadFlag = false;

//------checks for change in data then changes other data---------
	$scope.$watch('[startDate, endDate]', function() {
		if ($scope.requests != ""){
			redraw($scope);
			$scope.loadingFlag = false;
		}
	}, true);

	$scope.$watch('startDate', function() {
		var startDateCurrent = setParsedDate($scope.startDate);
		startDateCurrent.setDate(startDateCurrent.getDate() + 1);
		$scope.datesEnd = generateDatesArray(startDateCurrent);
	});

	$scope.$watch('endDate', function() {
		var endDateCurrent = setParsedDate($scope.endDate);
		var dateNow = new Date();
		var array = new Array();
		var count = 0;

		while (dateNow.getStringDate() != endDateCurrent.getStringDate()){
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
			method: "GET",
			url: "data?keywords=" + $scope.keywords + "&slots=" + $scope.slots,
		}).success(function(data, status, headers, config) {
			$scope.requests = data;
			$scope.requestFields = data.fields;
			redraw($scope);
			$scope.loadingFlag = false;
		}).error(function(data, status, headers, config) {
			console.log("error");
		});
	};

	$scope.onFileSelect = function($files) {
		$scope.uploadError = false;
		$scope.uploadErrorMsg = "";
    	for (var i = 0; i < $files.length; i++) {
      		var file = $files[i];
      		$scope.upload = $upload.upload({
        		url: 'upload',
        		file: file,
      		}).progress(function(evt) {
        		console.log('percent: ' + parseInt(100.0 * evt.loaded / evt.total));
      		}).success(function(data, status, headers, config) {
      			if (data != "success"){
        			$scope.uploadError = true;
        			$scope.uploadErrorMsg = data;
        		}else{
        			$scope.schedule();
        		}
      		});
    	}
  	};

  	$scope.onClickBadRequests = function() {
  		if ($scope.brequestsFlag){
  			$scope.brequestsFlag = false;
  		}else{
  			$scope.brequestsFlag = true;
  		}
  	}

  	$scope.helpUpload = function() {
  		if ($scope.helpUploadFlag){
  			$scope.helpUploadFlag = false;
  		}else{
  			$scope.helpUploadFlag = true;
  		}
  	}

});

redraw = function(scope){
	// Point to Run Javascript
	removeTable();

	dataModel = new SchedulerDataModelClass();
	dataModel.initialization(scope.startDate, scope.endDate, scope.requests);
	drawTimeTable();
}

generateDatesArray = function(date){
	var array = new Array();

	for (var i = 0; i < 90; i++){
		array[i] = date.getStringDate();
		date.setDate(date.getDate() + 1);
	}

	return array;
}

setParsedDate = function(stringDate){
	var resultDate = new Date();

	date = stringDate.split("-");
	resultDate.setFullYear(parseInt(date[0]));
	resultDate.setMonth(parseInt(date[1])-1);
	resultDate.setDate(parseInt(date[2]));

	return resultDate;
}

Date.prototype.getStringDate = function () {
     var seperator = "-";
       var day = ((this.getDate() < 10)?"0":"") + (this.getDate());
       var year = this.getFullYear();
       var month = (((this.getMonth()+1) < 10)?"0":"") + (this.getMonth()+1);
  return year + seperator + month + seperator +day;
 }
