//注册事件 
function addUser(){
    	   $.ajax({
                   type: "POST",//方法类型
                   dataType: "json",//预期服务器返回的数据类型
                   url: "../user/addUser",
                   data: $('#registForm').serialize(),
                   success: function (result) {
                       if (result.errCode == "0") {
                           alert("注册成功，请登陆");
                           showLogin();
                       }else{
                    	   alert("失败");
                       }
                       ;
                   },
                   error : function() {
                       alert("异常！");
                   }
           });
}
//登录
function loginIn(){
	 $.ajax({
         type: "POST",//方法类型
         dataType: "json",//预期服务器返回的数据类型
         url: "../user/login",
         data: $('#loginForm').serialize(),
         success: function (result) {
             if (result.errCode == "0") {
                 alert("登陆成功");
                 showLogin();
             }else{
          	   alert(result.errMsg);
             }
             ;
         },
         error : function() {
             alert("异常！");
         }
     });	
}
function showLogin() {
    if($("#signup-show").css("display")=='block'){
        $("#signup-show").css("display","none");
    }
    if($("#login-show").css("display")=='none'){
        $("#login-show").css("display","block");
    }else{
        $("#login-show").css("display","none");
    }
}
function showSignup() {
    if($("#login-show").css("display")=='block'){
        $("#login-show").css("display","none");
    }
    if($("#signup-show").css("display")=='none'){
        $("#signup-show").css("display","block");
    }else{
        $("#signup-show").css("display","none");
    }
}
function ChangeName() {
    if($("#changeName").css("display")=='none'){
        $("#changeName").css("display","block");
    }else{
        $("#changeName").css("display","none");
    }
}
