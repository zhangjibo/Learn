define([], function () {
    // controller
    return ['$rootScope', '$scope','$interval', '$state', '$stateParams','dataFactory','T','$sce', function ($rootScope, $scope, $interval,$state, $stateParams,dataFactory,T,$sce) {
        $scope.mailReg=/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;//邮箱正则验证
        $scope.phoneReg=/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;//手机号正则
        $scope.mailBox='';//邮箱
        $scope.password='';//密码
		$scope.icon1=$sce.trustAsHtml('&#xe605;');
		$scope.icon2=$sce.trustAsHtml('&#x1006;');
		$scope.z_flag2=true;
		$scope.z_flag4=true;
        $scope.canLoginIn=false;//登陆 按钮 disabled控制
        $scope.info_email=$rootScope.info_email;
        $scope.toEnter = function($event){
        	var event = window.$event || $event;
        	if(event.keyCode == 13){
        		if(!$scope.mailBox){
        			layer.msg(T.T('enter_account'),{icon:2,time:1000});
        			return false;
        		};
        		if(!$scope.password){
        			layer.msg(T.T('enter_password'),{icon:2,time:1000});
        			return false;
        		}
        		$scope.loginIn()
        	}
        };
        $scope.GetRequest=function(url) {

            var url = url; //获取url中"?"符后的字串
            var theRequest = new Object();
            if(url) {
                if (url.indexOf("?") != -1) {
                    var index = url.indexOf("?") + 1;
                    var str = url.substr(index);
                    strs = str.split("&");
                    for (var i = 0; i < strs.length; i++) {
                        theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
                    }
                }
            }

            return theRequest;
        }
        $scope.changeURLArg=function(url, arg, arg_val) {
            var pattern = arg + '=([^&]*)';
            var replaceText = arg + '=' + arg_val;
            if (url.match(pattern)) {
              var tmp = '/(' + arg + '=)([^&]*)/gi';
              tmp = url.replace(eval(tmp), replaceText);
              return tmp;
            } else {
              if (url.match('[\?]')) {
                return url + '&' + replaceText;
              } else {
                return url + '?' + replaceText;
              }
            }
            return url + '\n' + arg + '\n' + arg_val;
          }
        
        //点击去注册
        $scope.toSignUp = function(){
        	$state.go("sign-up", {fromstate : $state.current.name});
        };
        //回到页面默认滚动条为0;
        $('html,body').scrollTop(0);
        //底部log图片显示
		$('.q_footer_log').removeClass('ng-hide');
		$('#mailBox').trigger('click').focus();
		//获取联系邮箱
        dataFactory.getlist('index/websiteAnnotation', 'POST', {}).then(
            function (data) {
                if (data.code == 200) {
                    var _data = data.data;
                    $scope.contactEmail = _data.contact_info.email;
                }
            }
        );
        //登录
        $scope.loginIn=function($event){
        	var event = window.$event || $event; 
			$scope.z_flag2=!($scope.mailReg.test($scope.mailBox) || $scope.phoneReg.test($scope.mailBox))?false:true;
			$scope.z_flag4=$scope.password==''?false:true;	
            if($scope.z_flag2&&$scope.z_flag4){
            	var indexLog = layer.load(16, {shade: [0.3,'#000'], offset: 'auto'});
                dataFactory.getlist('/Login/login','POST',{
                    username:$scope.mailBox,
                    password:$scope.password
                }).then(function(data){
                	layer.close(indexLog);
                    if(data.code==200){
                        $scope.canLoginIn=true;
                        localStorage.setItem("quserNames", "");
                        
                        localStorage.setItem("rootData",JSON.stringify( data.data ));
                        $rootScope.rootData.isLogin=true;
                        $rootScope.rootData.email=data.data.email;
                        $rootScope.rootData.username=data.data.username;
                        
                        $rootScope.rootData.avatar=data.data.avatar;
                        $rootScope.rootData.chatId=data.data.chatId;
 						$rootScope.rootData.token=data.data.token;
						$(".js_icon_arrow_bt").removeClass("icon_cur");
						$rootScope.isShowLogOut = false;	
						var mobile = data.data.mobile;
						sessionStorage.setItem('_mobile',mobile)
						
                        var chat_href = $rootScope.chat_href_noLog;
                        if (chat_href && $scope.GetRequest(chat_href).token) {
                            $rootScope.chat_href=$scope.changeURLArg(chat_href,'token',$rootScope.rootData.token); 
                          }else{
                            $rootScope.chat_href = chat_href + "&token="+ $rootScope.rootData.token;
                          }
                       
                        
                        
						localStorage.setItem("chat_href", $rootScope.chat_href);

						if( $stateParams["fromstate"] != "login" && $stateParams["fromstate"] != "sign-up"){
                            if($stateParams["fromstate"]=="myorder.buyers_order_detail"||$stateParams["fromstate"]=="legal.sell"||$stateParams["fromstate"]=="myorder.sellers_order_detail"){
//                              $state.go('home',{reload: true});
								$state.go('home').then(function(){
	                            	$rootScope.rootData.isLogin = true
	                            });
                            }else{
//                              $state.go($stateParams["fromstate"],{reload: true});
                            	$state.go($stateParams["fromstate"]).then(function(){
	                            	$rootScope.rootData.isLogin = true
	                            });
                            }
						}else{
                            $state.go('home').then(function(){
                            	$rootScope.rootData.isLogin = true
                            });
						}
                    }else{
                        $scope.z_flag_tip=data.error;  
                    }
                },function(data){
                    $scope.canLoginIn=true;//禁用登陆按钮，防止多次请求
                });
            }
            $scope.z_flag_tip=($scope.z_flag2&&$scope.z_flag4)==false?T.T('login_incorrect'):'';
            $scope.canLoginIn=false;//重新启用登陆按钮
       };
    }];
});
