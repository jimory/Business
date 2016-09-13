<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="o"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML>
<html>
	<head>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
		<title>商务网</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		
		  <script src="js/jquery.min.js"></script>
		    <script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
	</head>
	<body>
		<!----start-wrap---->
		<div class="wrap">
			<!---start-header---->
			<div class="top-links" id="top">
					
				</div>
			</div>
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="logo" /></a>
				</div>
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a href="about.jsp">关于我们</a></li>
						<li><a href="news1_doSearchAll.action">新闻</a></li>
						<li>
						<%if(session.getAttribute("loginedUser")!=null){%>
						<a href="blog_person.action?buid=${loginedUser.uid }">个人中心</a>
						<%}else{ %>
						<a href="login.jsp">个人中心</a>
						<%} %>
						</li>
						<li><a href="blog_list.action">博客</a></li>
						<li class="active"><a href="contact.jsp">联系我们</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<!---End-header---->
		</div>
		 <!---start-content---->
		 <div class="content">
		 	<!----start-contact---->
		 	<div class="contact" style="margin-left: 70px;">
		 		<div class="wrap">
				<div class="section group">				
				<div class="col span_1_of_3">
					<div class="contact_info">
                    	<p>&nbsp;</p>
			    	 	<h4 style="font-weight:bold;">我&nbsp;们&nbsp;在&nbsp;这:</h4>
                        	<p>&nbsp;</p>
			    	 		<div class="map">
                            <div style="width:300px;height:175px;" id="dituContent"></div>
					   			<br>
                                <small><a href="#" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<h5 style="font-weight:bold;">公&nbsp;司&nbsp;信&nbsp;息:</h5>
                                <p>&nbsp;</p>
                        <p><span style="color:#C00">Adress:</span> 天津工业大学</p>        
				   		<p><span style="color:#C00">Website:</span>www.haohaizi.com</p>
				   		<p><span style="color:#C00">Phone:</span> 010-738320  |  020-939393</p>
				 	 	<p><span style="color:#C00">Email:</span> <span> info@mycompany.com</span></p>
				   		<p><span style="color:#C00">乘车路线:</span>公交： 620、650、687、871路至终点站（天津工业大学 ）下 地铁： 地铁3号线至大学城站下</p>
				   </div>
				</div>				
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  <p></p>
				  	<h4 style="font-weight: bold; margin-bottom: 10px;">联系我们</h4>
					   <form method="post" action="mg_doAdd">
					    	<div>
						    	<span><label>姓名：</label></span>
						    	<span><input name="mname" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>邮箱：</label></span>
						    	<span><input name="memail" type="text" class="textbox"></span>
						    </div>
						    <div>
						     	<span><label>联系方式：</label></span>
						    	<span><input name="mphone" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>内容：</label></span>
						    	<span><textarea name="mtext"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="提交"></span>
						  </div>
					    </form>

				    </div>
  				</div>				
			  </div>
			</div>
			</div>
		 	<!----End-contact---->
		 	</div>
		 	<div class="clear"> </div>
		 <!---End-content----><br /><br />
		 <!---start-copy-right----->
		 <div class="copy-right">
				<div class="top-to-page">
						<a href="#top" class="scroll"> </a>
						<div class="clear"> </div>
					</div>
					<p style="font-size: 14px;">@本网站由 <a href="#">GOOD BOY</a> 团队制作并拥有最终解释权</p>
			</div>
		 <!---End-copy-right---->
		<!----End-wrap---->
	</div>

	</body>
</html>

<o:if test="${param.addmeg==1 }">
	<script>alert("留言成功！")</script>
</o:if>


    <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
        addPolyline();//向地图中添加线
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(117.120603,39.071679);//定义一个中心点坐标
        map.centerAndZoom(point,15);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
    var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_ZOOM});
    map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
    var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:0});
    map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
    var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
    map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"好孩子",content:"天津市&nbsp;西青区&nbsp;宾水西道延迟线&nbsp;339号&nbsp;天津工业大学",point:"117.122903|39.070409",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
         ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
            
            (function(){
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click",function(){
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open",function(){
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close",function(){
                    _marker.getLabel().show();
                })
                label.addEventListener("click",function(){
                    _marker.openInfoWindow(_iw);
                })
                if(!!json.isOpen){
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
//标注线数组
    var plPoints = [{style:"solid",weight:4,color:"#f00",opacity:0.8,points:["117.118734|39.078673","117.121563|39.078673","117.121663|39.070299","117.122903|39.070299"]}
         ];
    //向地图中添加线函数
    function addPolyline(){
        for(var i=0;i<plPoints.length;i++){
            var json = plPoints[i];
            var points = [];
            for(var j=0;j<json.points.length;j++){
                var p1 = json.points[j].split("|")[0];
                var p2 = json.points[j].split("|")[1];
                points.push(new BMap.Point(p1,p2));
            }
            var line = new BMap.Polyline(points,{strokeStyle:json.style,strokeWeight:json.weight,strokeColor:json.color,strokeOpacity:json.opacity});
            map.addOverlay(line);
        }
    }
    
    initMap();//创建和初始化地图
</script>
