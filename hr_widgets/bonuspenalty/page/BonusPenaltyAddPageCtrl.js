angular.module('${menuCode}')
.filter('to_trusted', ['$sce', function ($sce) {
	return function (text) {
	    return $sce.trustAsHtml(text);
	};
}])
.controller("${widgetCode}Ctrl",function($scope,AppKit){
	
	$scope.info = {"userName":"","bpType":"selected","bpDate": "","bpMonry":"","bpDesc":""};
	
	$scope.saveInfo = function(){
		alert(JSON.stringify($scope.info));
		var url = "/aeaihr/services/BonusPenalty/rest/add-pun-info";
		AppKit.postJsonApi(url,JSON.stringify($scope.info)).then(function(response){
			AppKit.successPopup();
//			if ("success" == response.data){
//				$scope.loadData();
//				AppKit.successPopup();				
//			}else{
//				AppKit.errorPopup();
//			}
		});
	}
});