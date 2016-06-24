<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WEB.index" %>

<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://oxcoder.com:80/">--><base href=".">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta content="猿圈网是互联网人的笔试平台,帮助企业高效省时地招募到最优秀的技术人才,企业笔试首选猿圈网。" name="description">
<meta content="互联网招聘,笔试,在线笔试,编程笔试,企业笔试" name="keywords">
<title>猿圈 首页</title>
<link href="./猿圈 首页_files/bootstrap.min.css" rel="stylesheet">
<link href="./猿圈 首页_files/font-awesome.min.css" rel="stylesheet">
<link href="./猿圈 首页_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./猿圈 首页_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./猿圈 首页_files/summernote.css" rel="stylesheet">
<link href="./猿圈 首页_files/new.min.css" rel="stylesheet">
<link href="./猿圈 首页_files/style_new.css" rel="stylesheet">
<style type="text/css">
.companyTags li {
	margin: 5px 10px 0 0;
}
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
<body>

<div class="navbar navbar-default navbar-fixed-top" id="navbar">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="index.aspx" style="padding: 0;">
				<img src="./猿圈 首页_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="index.aspx">首页</a>
				</li>
				<li class="">
					<a href="user_recruit.aspx">挑战</a>
				</li>

				<li class="">
					<a href="#">个人中心</a>
				</li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown" id="drop_down_nav">
					<a href="http://oxcoder.com/#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">
									王会
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">帐号设置</a>
						</li>
						<li>
							<a href="#">注销</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div class="" style="margin:-20px 0 20px 0;">
		<section id="middle">
			<div>
				<div id="carousel1" class="carousel carousel-style-3 slide" data-ride="carousel">
					<!-- Indicators -->
					
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="./猿圈 首页_files/code22.png" alt="First slide">
							<div class="container">
								<div class="carousel-caption">
									<h1>hire.through(code)</h1>
									<h2>= 招到优秀程序员的最佳方式</h2>
									<br>
									<p>让人才更快地脱颖而出，让企业做出更明智的招聘决策</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.carousel -->
			</div>
		</section>
	</div>
	
	<div class="container">
		<div class="row">
			
			<div class="col-md-8 col-no-left-padding col-md-offset-2">
				<section class="middle">
					<div class="col-md-2 col-no-left-padding" style="margin-bottom:10px;">
						<select onchange="onSelectChange()" id="directions_id" class="form-control">
							<option value="0">技术方向</option>
							
								<option value="1">Java</option>
							
								<option value="2">Android</option>
							
								<option value="3">iOS</option>
							
								<option value="4">C语言(beta)</option>
							
								<option value="5">C++(beta)</option>
							
								<option value="6">php(beta)</option>
							
								<option value="7">Python(beta)</option>
							
						</select>
					</div>
					<div class="col-md-2 col-no-left-padding" style="margin-bottom:10px;">
						<select onchange="onSelectChange()" id="level_id" class="form-control">
							<option value="0">起始薪资</option>
							
								<option value="1">2K~5K</option>
							
								<option value="2">5K~8K</option>
							
								<option value="3">8K~10K</option>
							
								<option value="4">10K~12K</option>
							
								<option value="5">12K~15K</option>
							
								<option value="6">15K以上</option>
							
						</select>
					</div>
					<div class="col-md-2 col-no-left-padding" id="warp" style="margin-bottom:10px;">
						<select onchange="onSelectChange()" id="province_id" class="form-control prov"><option value="0">全部地区</option><option value="北京市">北京市</option><option value="天津市">天津市</option><option value="河北省">河北省</option><option value="山西省">山西省</option><option value="内蒙古">内蒙古</option><option value="辽宁省">辽宁省</option><option value="吉林省">吉林省</option><option value="黑龙江省">黑龙江省</option><option value="上海市">上海市</option><option value="江苏省">江苏省</option><option value="浙江省">浙江省</option><option value="安徽省">安徽省</option><option value="福建省">福建省</option><option value="江西省">江西省</option><option value="山东省">山东省</option><option value="河南省">河南省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="广东省">广东省</option><option value="广西省">广西省</option><option value="海南省">海南省</option><option value="重庆市">重庆市</option><option value="四川省">四川省</option><option value="贵州省">贵州省</option><option value="云南省">云南省</option><option value="西藏">西藏</option><option value="陕西省">陕西省</option><option value="甘肃省">甘肃省</option><option value="青海省">青海省</option><option value="宁夏">宁夏</option><option value="新疆">新疆</option><option value="香港">香港</option><option value="澳门">澳门</option><option value="台湾">台湾</option></select>
						<div style="display: none">
							<select class="form-control city" style="display:none"></select>
							<select class="form-control dist" style="display:none"></select>
						</div>
					</div>
					<div style="col-md-6">
						<div class="input-group">
							<input onchange="" value="" id="keyWords_id" class="form-control" placeholder="请输入关键词，如公司名称等">
							<span class="input-group-btn">
								<button onclick="onSelectChange(this)" type="button" class="btn">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</div>
				</section>
			</div>
			<div class="col-md-4 col-no-left-padding col-md-offset-8" style="margin-top:10px;">
				<section id="middle" style="margin-bottom:20px;">
					排序：
					<a href="javascript:void(0)" onclick="onSelectChange(this,0)" class="btn btn-order ">时间</a>
					<a href="javascript:void(0)" onclick="onSelectChange(this,1)" class="btn btn-order ">热度</a>
					<a href="javascript:void(0)" onclick="onSelectChange(this,2)" class="btn btn-order ">薪资</a>
				</section>
			</div>

            <asp:Repeater ID="rpt_challenge" runat="server">
                <ItemTemplate>

					        <div class="col-xs-12 col-md-4 col-lg-3">
						        <section id="middle">
							        <div class="panel panel-default shadow-effect">
								        <div class="col-xs-12 panel-header">
									        <div class="pull-left">
										        <h4 class="line-control">
											        <a href="#"><%# Eval("name") %></a>
										        </h4>
										        <h4 class="line-control" style="min-height:18px;">
											        <a href="#"><%# Eval("company_name") %></a>
										        </h4>
									        </div>
									        <div class="pull-right client-info hidden-md">
										        <span class="percent text-danger">
											        <img class="img-circle" style="width:60px;height:60px" src="./猿圈 首页_files/e27bd787-43d2-4327-83c0-34ef3e12fc24.png">
										        </span>
									        &nbsp;</div>
									
								        </div>
	
								        <div class="panel-body ">
									        <ul class="list-unstyled">
										        <li>月薪：<%# Eval("salary_range") %></li>
                                                <li>
											        挑战类型：<%# Eval("language") %></li>
										        <li>
											        挑战难度：<%# Eval("rank") %></li>
										        <li>
											        截止时间：<%# Eval("begin_date") %>-- <%# Eval("end_date") %>
										        </li>
										        <li>
											        <%# Eval("num") %>人已接受挑战
										        </li>
									        </ul>
	
								        </div>
								        <!-- /.panel-body -->
								        <div class="panel-footer align-center">
                                            <a href="accept_recruit.aspx?cid=<%# Eval("id") %>">
                                                <button class="btn btn-new1">接受挑战</button>
                                            </a>
								        </div>
								        <!-- /.panel-footer -->
							        </div>
						        </section>
					        </div>
                   </ItemTemplate>
            </asp:Repeater>
		</div>
		<!-- /.row -->
	</div>
	<div class="text-center" id="sl_more"></div>
	<!-- /.container -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×data-dismiss="modal">
						<span aria-hidden="true">×</span>
						<span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">意见反馈</h4>
				</div>
				<div class="modal-body">
					<textarea class="form-control" placeholder="请输入您的反馈意见" style="min-height:200px;"></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-new1">提交</button>
				</div>
			</div>
		</div>
	</div>

	<script src="./猿圈 首页_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 首页_files/bootstrap.min.js"></script>
	<script src="./猿圈 首页_files/all.min.js"></script>
	<script src="./猿圈 首页_files/scrollpagination.js"></script>
	
	<script src="./猿圈 首页_files/jquery.cityselect.js"></script>
	
	<script src="./猿圈 首页_files/zmUtil.js"></script>
	
	<input type="hidden" id="hid_directions_id">
	<input type="hidden" id="hid_level_id">
	<input type="hidden" id="hid_province_id">
	<input type="hidden" id="hid_keyWords_id">
	<input type="hidden" id="order_orderWord_id" value="-1">
	<input type="hidden" id="order_desc_id" value="false">
	<input type="hidden" id="order_desc_id_auto" value="true">
	<script type="text/javascript">
		function getRootPath(){
			var basePaths = "http://oxcoder.com:80/";
			return basePaths.substring(0,basePaths.lastIndexOf('/'));
		}
		function onSelectChange(o,obj){
			// 将不能连续点击
			$(o).attr("disabled",true);
			if ($("#order_orderWord_id").val() != obj) {
				$("#order_desc_id").val("true");
			}
			if (!$Util.isEmpty(obj)) {
				$("#order_orderWord_id").val(obj);
			}
			window.location.href = getRootPath() + "/user/index.html?pageCode=1&direction=" + $("#directions_id").val() 
					+ "&level=" + $("#level_id").val() 
					+ "&province=" + $("#province_id").val()
					+ "&keyWords=" + $("#keyWords_id").val() 
					+ "&orderWord=" + $("#order_orderWord_id").val()
					+ "&isDesc=" + $("#order_desc_id").val();
		}
		var page = 1;
		function getWhereData(){
			data={};
			data["pageCode"] = function(){return page;} ; 
			data["direction"] = function(){return $("#directions_id").val();};
			data["level"] = function(){return $("#level_id").val();};
			data["province"] = function(){return $("#province_id").val();};
			data["keyWords"] = function(){return $("#keyWords_id").val();};
			data["orderWord"] = function(){return $("#order_orderWord_id").val();};
			data["isDesc"] = function(){return $("#order_desc_id_auto").val();};
			data["rdm"] = function(){return $Util.rdm();};
			return data;
		}
		$(document).ready(function() {
			var pr = "";
			if ($Util.isEmpty(pr)) {
				$("#warp").citySelect({
					url: "dev/pluginJs/cityselect/cc.json",
					required: false,
					defaultValue: "全部地区"
				});
			}else{
				$("#warp").citySelect({
					url: "dev/pluginJs/cityselect/cc.json",
					prov: pr,
					required: false,
					defaultValue: "全部地区"
				});
			}
			
			$("#cplb_main").scrollPagination({
				"contentPage" : "user/load_index.html", // the url you are fetching the results
				"contentData" : getWhereData(), // these are the variables you can pass to the request, for example: children().size() to know which page you are
				"scrollTarget" : $(window), // who gonna scroll? in this example, the full window
				"heightOffset" : 10, // it gonna request when scroll is 10 pixels before the page ends
				"beforeLoad" : function() { // before load function, you can display a preloader div
					$("#sl_more").fadeIn();
					page = page + 1;
				},
				"afterLoad" : function(elementsLoaded) { // after loading content, you can use this function to animate your new elements
					//$("#loading").fadeOut();
					$(elementsLoaded).fadeInWithDelay();
					if(elementsLoaded.length <= 0){
						$("#sl_more").html("没有更多了");
						$("#cplb_main").stopScrollPagination();
					}else{
						$("#sl_more").html("正在加载...");
					}
				}
			});
			$.fn.fadeInWithDelay = function() {
				var delay = 0;
				return this.each(function() {
					$(this).delay(delay).animate({
						opacity : 1
					}, 200);
					delay += 100;
				});
			};
		});
		function fdisabled(obj){
			$(obj).attr("disabled",true);
		}
		
	</script>


</body></html>
