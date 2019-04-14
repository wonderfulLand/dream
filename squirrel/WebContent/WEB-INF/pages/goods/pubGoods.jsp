<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>发布商品</title>
<link rel="icon" href="<%=basePath%>img/logo.jpg" type="image/x-icon" />
<link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/userhome.css" />
<link rel="stylesheet" href="<%=basePath%>css/user.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
<!-- bootstrap -->
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- 图片上传即使预览插件 -->
<link rel="stylesheet" href="<%=basePath%>css/fileinput.min.css">
<script type="text/javascript" src="<%=basePath%>js/fileinput.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/zh.js"></script>
<style>
.container {
	padding-top: 10px
}
</style>
<script>
function goodsubmit(){
	var name=$("#name").val();
	var price=$("#price").val();
	var describle=$("#describle").val();
	var imgUrl=$("#imgUrl").val();
	if(!name){
		alert("商品名称不能为空");
		return;
		}
	if(!price){
		alert("商品价格不能为空");
		return;
		}
	if(!describle){
		alert("商描述不能为空");
		return;
		}	
	if(!imgUrl){
		alert("商请先再页面最下方上传图片");
		return;
		}	

	$.ajax({
	    type: "GET",//方法类型
	    dataType: "json",//预期服务器返回的数据类型
	    url: "<%=basePath%>goods/publishGoodsSubmit",
	    data: $('#goodsubmitForm').serialize(),
	    success: function (result) {
	        if (result.errorCode == "0") {
	        	alert("发布成功");
	        	location.reload();
	        }else{
	     	   alert("发送失败，错误信息:"+result.errorMsg+". 请联系管理员");
	        }
	        
	    },
	    error : function(jqXHR, textStatus, errorThrown) {
	      
	    }
	});
}


</script>
</head>
<body>
	<div class="pre-2" id="big_img">
		<img
			src="http://findfun.oss-cn-shanghai.aliyuncs.com/images/head_loading.gif"
			class="jcrop-preview jcrop_preview_s">
	</div>
	<div id="cover" style="min-height: 639px;">
		<div id="user_area">
			<div id="home_header">
				<a href="<%=basePath%>goods/homeGoods">
					<h1 class="logo"></h1>
				</a> <a href="<%=basePath%>user/home"> <img
					src="<%=basePath%>img/home_header.png" style="margin-left: 20px;">
				</a> <a href="<%=basePath%>user/home">
					<div class="home"></div>
				</a>
			</div>
			<!--  描述:左侧个人中心栏-->
			<div id="user_nav">
				<div class="user_info">
					<div class="head_img">
						<img src="<%=basePath%>img/photo.jpg">
					</div>
					<div class="big_headimg">
						<img src="">
					</div>
					<span class="name">${cur_user.username}</span>
					<hr>
					<!--   <span class="school">东华大学</span> -->
					<a class="btn"
						style="width: 98%; background-color: rgb(79, 190, 246); color: rgba(255, 255, 255, 1);"
						href="<%=basePath%>user/myPurse">我的钱包:￥${myPurse.balance}</a> <input
						type="hidden" value="${myPurse.recharge}" id="recharge" /> <input
						type="hidden" value="${myPurse.withdrawals}" id="withdrawals" /> <span
						class="btn" data-toggle="modal" data-target="#myModal"
						style="width: 98%; background-color: rgb(79, 190, 246); color: rgba(255, 255, 255, 1); margin-top: 0.5cm;">我的信用积分:${cur_user.power}</span>

				</div>
				<div class="home_nav">
					<ul>
						<a href="<%=basePath%>orders/myOrders">
							<li class="notice">
								<div></div> <span>订单中心</span> <strong></strong>
						</li>
						</a>
						<a href="<%=basePath%>user/allFocus">
							<li class="fri">
								<div></div> <span>关注列表</span> <strong></strong>
						</li>
						</a>
						<a href="<%=basePath%>goods/publishGoods">
							<li class="store">
								<div></div> <span>发布物品</span> <strong></strong>
						</li>
						</a>
						<a href="<%=basePath%>user/allGoods">
							<li class="second">
								<div></div> <span>我的闲置</span> <strong></strong>
						</li>
						</a>
						<a href="<%=basePath%>user/basic">
							<li class="set">
								<div></div> <span>个人设置</span> <strong></strong>
						</li>
						</a>
					</ul>
				</div>
			</div>
			<!--

	            描述:发布物品
        -->
			<div id="user_content">
				<div class="basic">
					<form:form action="../goods/publishGoodsSubmit" method="post"
						role="form" enctype="multipart/form-data" id="goodsubmitForm">
						<h1 style="margin-left: 210px;">发布物品</h1>
						<hr/>
						   <div class="changeinfo">
						    <div class="row">
						        <div class="col-md-4">
						            <span>物品名:</span> 
						        </div>
						        <div class="col-md-12">
						            <input class="in_info" id="name" type="text" name="name" placeholder="请输入物品名" />
						        </div>					       
						   </div>
							
						</div>
						<div class="changeinfo">
						     <div class="row">
						        <div class="col-md-4">
						            <span>出售价格:</span> 
						        </div>
						        <div class="col-md-12">
						           <input class="in_info" id="price" type="text"name="price" placeholder="请输入出售价格" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						           
						        </div>					       
						 </div>										 
						</div>
						<div class="changeinfo">
						     <div class="row">
						        <div class="col-md-4">
						            <span>原价:</span> 
						        </div>
						        <div class="col-md-12">
						           <input class="in_info" type="text" name="realPrice" placeholder="请输入商品原价" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
						        </div>					       
						   </div>
					  </div>
						<div class="changeinfo">
						     <div class="row">
						        <div class="col-md-4">
						            <span>物品类别:</span> 
						        </div>
						        <div class="col-md-12">
						           <select class="in_info" name="catelogId">
							       <c:forEach items="${menuList}" var="menuMap" varStatus="status">
							       <option value="${status.index+1}">${menuMap.name}</option>
							       </c:forEach>
							       </select>
						        </div>					       
						   </div>							
						</div>
						<div class="changeinfo" id="dir">
						     <div class="row">
						        <div class="col-md-4">
						           <span>商品描述:</span>
						        </div>
						        <div class="col-md-12">
						           <div class="sha">
								<div class="publ">
									<div class="pub_con">
										<div class="text_pu">
											<textarea id="describle" name="describle" class="emoji-wysiwyg-editor" ></textarea>
										</div>
									</div>
								</div>
							</div>
						        </div>					       
						   </div>								
						</div>
					      <br />
                    <hr />
                    <div class="changeinfo">
                        <span>商品图片:</span>
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-6 col-sm-offset-1">
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <input type="file" name="myfile" data-ref="imgUrl" class="col-sm-10 myfile" value=""/>
                                            <input type="hidden" id="imgUrl" name="imgUrl" value="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <input type="button" id="submit" class="setting-save" value="发布物品" style="margin-top: 20px;background-color: blue;" onclick="goodsubmit()"/>
                </form:form>
            </div>
            <!--

                描述:最右侧，可能认识的人
            
            <div class="recommend">
                <div class="title">
                    <span class="text">可能认识的人</span>
                    <span class="change">换一组</span>
                    <span class="underline"></span>
                </div>
                <ul>
                    <li>
                        <a href="" class="head_img">
                            <img src="<%=basePath%>img/photo1.jpg">
                        </a>
                        <span>Brudce</span>
                        <div class="fa fa-plus-square"></div>
                    </li>
                    <li>
                        <a href="" class="head_img">
                            <img src="<%=basePath%>img/photo2.jpg">
                        </a>
                        <span>Graham</span>
                        <div class="fa fa-plus-square"></div>
                    </li>
                    <li>
                        <a href="" class="head_img">
                            <img src="<%=basePath%>img/photo3.jpg">
                        </a>
                        <span>策马奔腾hly</span>
                        <div class="fa fa-plus-square"></div>
                    </li>
                    <li>
                        <a href="" class="head_img">
                            <img src="<%=basePath%>img/photo4.jpg">
                        </a>
                        <span>Danger-XFH</span>
                        <div class="fa fa-plus-square"></div>
                    </li>
                    <li>
                        <a href="" class="head_img">
                            <img src="<%=basePath%>img/photo5.jpg">
                        </a>
                        <span>Keithw</span>
                        <div class="fa fa-plus-square"></div>
                    </li>
                </ul>
            </div>
            -->
        </div>
    </div>
</div>

<script>
     $(".myfile").fileinput({
        uploadUrl:"<%=basePath%>goods/uploadFile",//上传的地址
        uploadAsync:true, //默认异步上传
        showUpload: false, //是否显示上传按钮,跟随文本框的那个
        showRemove : false, //显示移除按钮,跟随文本框的那个
        showCaption: true,//是否显示标题,就是那个文本框
        showPreview : true, //是否显示预览,不写默认为true
        dropZoneEnabled: true,//是否显示拖拽区域，默认不写为true，但是会占用很大区域
        maxFileCount: 3, //表示允许同时上传的最大文件个数
        enctype: 'multipart/form-data',
        validateInitialCount:true,
        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
        allowedFileTypes: ['image'],//配置允许文件上传的类型
        allowedPreviewTypes : [ 'image' ],//配置所有的被预览文件类型
        allowedPreviewMimeTypes : [ 'jpg', 'png', 'gif' ],//控制被预览的所有mime类型
        language : 'zh'
    })
    //异步上传返回结果处理
    $('.myfile').on('fileerror', function(event, data, msg) {

    });
    //异步上传返回结果处理
    $(".myfile").on("fileuploaded", function (event, data, previewId, index) {
    	var imgUrl=$("#imgUrl").val();
    	if(imgUrl){		
    		imgUrl+=";"+data.response.imgUrl;
    	}else{
    		imgUrl+=data.response.imgUrl;
    	}
    	$("#imgUrl").val(imgUrl);
    });

    //同步上传错误处理
    $('.myfile').on('filebatchuploaderror', function(event, data, msg) {

    });

    //同步上传返回结果处理
    $(".myfile").on("filebatchuploadsuccess", function (event, data, previewId, index) {

    });

    //上传前
    $('.myfile').on('filepreupload', function(event, data, previewId, index) {
    });
</script>
</body>
</html>