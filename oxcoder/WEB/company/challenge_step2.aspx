<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="challenge_step2.aspx.cs" Inherits="WEB.company.challenge_step2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://www.oxcoder.com:80/">--><base href=".">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 新增挑战邀请</title>
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/bootstrap.min.css" rel="stylesheet">
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/font-awesome.min.css" rel="stylesheet">
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/style.css" rel="stylesheet">
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/summernote.css" rel="stylesheet">
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/summernote-bs3.css" rel="stylesheet">
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/style(1).css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="./猿圈 新增挑战邀请（选择挑战题目）_files/jquery-confirm.min.css">
<!-- Max css -->
<link href="./猿圈 新增挑战邀请（选择挑战题目）_files/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
.companyTags li {
	margin: 5px 5px 0 0;
}
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/cooper/index.html" style="padding: 0;">
				<img src="./猿圈 新增挑战邀请（选择挑战题目）_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="http://www.oxcoder.com/cooper/oxcoder_corp_index.html">首页</a>
				</li>
				<li class="active">
					<a href="http://www.oxcoder.com/cooper/index.html">挑战管理</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">
							
								
								
								
									北京交通大学
								
							
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="http://www.oxcoder.com/cooper/pay/view_balance.html">去打赏</a>
						</li>
						<li>
							<a href="http://www.oxcoder.com/cooper/cooperInfo/view_cooper_info.html">企业信息</a>
						</li>
						<li>
							<a href="http://www.oxcoder.com/cooper/cooperInfo/account_binding.html">帐号设置</a>
						</li>
						<li>
							<a href="http://www.oxcoder.com/security_logout">注销</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-9 profile-stream">
								<div class="page-header row">
									<div class="col-md-8">
										<h3>新增挑战邀请</h3>
									</div>
									<div class="col-md-4">
										<div class="row">
											<div class="col-md-5"></div>
											<div class="col-md-7"></div>
										</div>
									</div>
								</div>
								<div class="page-body">
									<div class="row">
										<div style="text-align:center;margin-bottom:20px;">
											<img src="./猿圈 新增挑战邀请（选择挑战题目）_files/nc2.png">
										</div>
										<div class="row col-md-12">
											<h4>已选择挑战题目</h4>
											
												<asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="True">	
    <ContentTemplate>											
											
												<div class="row col-md-12 col-no-left-padding" style="background-color: #d9edf7">
													<!-- 循环企业已经存在的数据 -->
											
                                             <div class="row col-md-12 col-no-left-padding" style="background-color: #d9edf7">
 

<asp:Repeater ID="ProblemRepeater" runat="server" OnItemCommand="ProblemRepeater_ItemCommand">

<ItemTemplate>
    
														<div class="col-md-4" style="padding-top: 20px">
															<div class="panel panel-default project">
																<div class="panel-body" style="padding-bottom: 0;">
																	<div class="row">
																		<div class="col-xs-12">
																			<div class="pull-left">
																				<h4>
																					<a href="javascript:;"><%# Eval("p_title")%></a>
																				</h4>
																			</div>
																			<div class="pull-right client-info">
                                                                                <asp:Button CommandName="Delete" CommandArgument='<%#Eval("p_id") %>'  runat="server" style="color: white"  class="btn btn-primary btn-sm" Text="删除"></asp:Button>
																				
																			</div>
																		</div>
																		
                                                                       
																		<div class="col-md-12" style="min-height: 68px;">
																			<ul class="companyTags">
                                                                                <li><%# Eval("p_detail")%></li>
                                                                                <li><%# Eval("p_type")%></li>
																			</ul>
																			<div class="row">
																				<div class="col-sm-4">
																					<span class="small muted">项目难度</span>
																				</div>
																				<div class="col-sm-8">
																					<p>
																						<%#(Eval("p_level").ToString()=="5"?"★★★★★":"")%>
																						<%#(Eval("p_level").ToString()=="4"?"★★★★":"")%>
																						<%#(Eval("p_level").ToString()=="3"?"★★★":"")%>
                                                                                        <%#(Eval("p_level").ToString()=="2"?"★★":"")%>
                                                                                        <%#(Eval("p_level").ToString()=="1"?"★":"")%>
																					</p>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
                                                                     
																<div class="panel-footer">
																	<img src="./猿圈 新增挑战邀请2_files/504bb688-cf8b-431d-804a-eee5f7b9f5f7.png" style="max-height: 29px">
																	<label> 猿圈团队 提供</label>

																</div>
															</div>
														</div>
      
</ItemTemplate>		
    	
</asp:Repeater>

    </div>
    </div>
												<!-- 挑战预计时间和保存按钮 -->
												<div class="col-md-12" style="margin-bottom: 20px;">
                                                <span class="text-info">挑战预计耗时40分钟，超过3个项目会吓跑好多程序猿呦~
													</span> 
                                                    <asp:LinkButton ID="LinkButton1" runat="server" style="margin-left: 20px;" OnClick="LinkButton1_Click">重新一键出题</asp:LinkButton>
											
													<asp:Button runat="server" ID="SaveNxtButton" class="btn btn-new1 pull-right" Text="保存&amp;发布挑战" OnClick="SaveNxtButton_Click1"></asp:Button>
												</div>
    </ContentTemplate>
    </asp:UpdatePanel>
												
												
											
										</div>
										<div class="row col-md-12">
											<h4 class="pull-left">挑战题目</h4>
											<div class="pull-right">
												<div style="display:inline-block;vertical-align: top;">
													<div class="input-group" style="width:200px;">
														<input id="challenges_word_id" name="" value="" class="form-control" placeholder="请输入试题关键词">
														<span class="input-group-addon" style="cursor: pointer;" onclick="searchChallenges()">
															<i class="fa fa-search"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="row col-md-12">
											<p class="text-muted">选择智能生成后，我们会根据您的职位关键字与薪资智能匹配最合适的试题</p>
										</div>
										<div class="row col-md-12">
											<span class="help-block has-error">
												<small style="margin-left: 20px; display: none;" id="hint1" class="help-block"></small>
											</span>
										</div>
										<div class="row col-md-12 col-no-left-padding">
											<div class="panel-body" style="padding-bottom:0;">
												<div class="row">
													 <asp:Repeater ID="AllProblemRepeater" runat="server" OnItemCommand="AllProblemRepeater_ItemCommand">
                                                        <ItemTemplate>
														<div class="col-md-4" style="padding-top: 20px">
															<div class="panel panel-default project">
																<div class="panel-body" style="padding-bottom: 0;">
																	<div class="row">
																		<div class="col-xs-12">
																			<div class="pull-left">
																				<h4>
																					<a href="javascript:;"><%# Eval("p_title")%></a>
																				</h4>
																			</div>
																			<div class="pull-right client-info">
                                                                                <asp:Button class="btn btn-primary btn-sm" style="color: white" CommandName="add" CommandArgument='<%#Eval("p_id") %>' runat="server" Text="添加"></asp:Button>
																				
																			</div>
																		</div>
																		
                                                                       
																		<div class="col-md-12" style="min-height: 68px;">
																			<ul class="companyTags">
																				<li><%# Eval("p_detail")%></li>
                                                                                <li><%# Eval("p_type")%></li>
																			</ul>
																			<div class="row">
																				<div class="col-sm-4">
																					<span class="small muted">项目难度</span>
																				</div>
																				<div class="col-sm-8">
																					<p>
											
																						<%#(Eval("p_level").ToString()=="5"?"★★★★★":"")%>
																						<%#(Eval("p_level").ToString()=="4"?"★★★★":"")%>
																						<%#(Eval("p_level").ToString()=="3"?"★★★":"")%>
                                                                                        <%#(Eval("p_level").ToString()=="2"?"★★":"")%>
                                                                                        <%#(Eval("p_level").ToString()=="1"?"★":"")%>
																					</p>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
                                                                     
																<div class="panel-footer">
																	<img src="./猿圈 新增挑战邀请2_files/504bb688-cf8b-431d-804a-eee5f7b9f5f7.png" style="max-height: 29px">
																	<label> 猿圈团队 提供</label>

																</div>
															</div>
														</div>
										</ItemTemplate>			
								</asp:Repeater>
													
													
												</div>
											</div>
										</div>
									</div>
									<!--/.row   -->
								</div>
							</div>
							<div class="col-md-3 profile-info" id="profile_info_div">




<div class="panel-user">
	<div class="panel-heading">
		<div class="panel-title">
			<div class="media">
				<a class="pull-left">
					<img src="./猿圈 新增挑战邀请（选择挑战题目）_files/8a42ace9-ed68-450b-9c11-e76c91c824d8.jpg" class="media-object">
				</a>
				<div class="media-body">
					<h4 class="media-heading">
						<!-- <span class="welcome">Hello</span> -->
						<span>北京交通大学</span>
					</h4>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="panel panel-outline panel-no-padding hidden-xs">
	<div class="panel-body">
		<div class="stat-block stat-danger">
			<div class="icon">
				<b class="icon-cover"></b>
				<i class="fa fa-bell"></i>
			</div>
			<div class="details">
				<div class="number">0</div>
				<div class="description">今日接受挑战人数</div>
			</div>
		</div>
		<div class="stat-block stat-success">
			<div class="icon">
				<b class="icon-cover"></b>
				<i class="fa fa-bar-chart-o"></i>
			</div>
			<div class="details">
				<div class="number">
                    0</div>
				<div class="description">今日通过挑战人数</div>
			</div>
		</div>
		<div class="stat-block stat-primary">
			<div class="icon">
				<b class="icon-cover"></b>
				<i class="fa fa-tachometer"></i>
			</div>
			<div class="details">
				<div class="number">0</div>
				<div class="description">共帮您找到的人才</div>
			</div>
		</div>
	</div>
	<!-- /.panel-body -->
</div>
<!-- /.panel -->
</div>
						</div>
						<!-- /.row -->
					</div>
					<!-- /#content -->
				</section>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer">
		<!-- <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <ul class="list-inline">
                            <li>&copy; <a href="index.html">Intersect</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-6">
                        <ul class="list-inline social-network">
                            <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-github-square"></i></a></li>
                        </ul>
                    </div>
                </div><!-- /.row -->
		<!-- </div> -->
		<!-- /.container -->
	</footer>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/bootstrap.min.js"></script>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/summernote.min.js"></script>
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/script.js"></script>
	
	<script type="text/javascript" src="./猿圈 新增挑战邀请（选择挑战题目）_files/jquery-confirm.min.js"></script>
	
	<script src="./猿圈 新增挑战邀请（选择挑战题目）_files/zmUtil.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#profile_info_div").load("cooper/cooper_left_info.html");
	    });
	    // 搜索题目
	    function searchChallenges() {
	        location.href = "cooper/new/recruit/new_recruit_2.html?challengeKeyWord=" + $("#challenges_word_id").val();
	    }
	    // 智能生成
	    function smartGenerator() {
	        $("#hint1").html("");
	        $("#hint1").hide();
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: "cooper/new/recruit/smart_generator.html",
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.href = data.url;
	                } else if (data.error) {
	                    $.alert({
	                        title: "网络错误!",
	                        content: data.msg,
	                        confirm: function () {
	                            location.href = data.url;
	                        }
	                    });
	                } else {
	                    $("#hint1").html(data.msg);
	                    $("#hint1").show();
	                }
	            },
	            error: function (request) {
	                $("#hint1").html(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }
	    function addChallenge(obj) {

	        $("#a_addbtn_" + obj).attr("href", "javascript:void(0)");

	        $("#hint1").html("");
	        $("#hint1").hide();
	        var url = "cooper/new/recruit/save_new_recruit_2.html";
	        if (!$Util.isEmpty($("#challenges_word_id").val())) {
	            url += "?challengeKeyWord=" + $("#challenges_word_id").val();
	        }
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: url,
	            data: { "challengeId": obj },
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.href = data.url;
	                } else if (data.error) {
	                    $.alert({
	                        title: "网络错误!",
	                        content: data.msg,
	                        confirm: function () {
	                            location.href = data.url;
	                        }
	                    });
	                } else {
	                    $("#hint1").html(data.msg);
	                    $("#hint1").show();
	                    $("#a_addbtn_" + obj).attr("href", "javascript:addChallenge(" + obj + ")");
	                }
	            },
	            error: function (request) {
	                $("#hint1").html(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }
	    function delChallenge(obj) {
	        var url = "cooper/new/recruit/delete_challenge.html";
	        if (!$Util.isEmpty($("#challenges_word_id").val())) {
	            url += "?challengeKeyWord=" + $("#challenges_word_id").val();
	        }
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: url,
	            data: { "challengeId": obj },
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.href = data.url;
	                } else if (data.error) {
	                    $.alert({
	                        title: "网络错误!",
	                        content: data.msg,
	                        confirm: function () {
	                            location.href = data.url;
	                        }
	                    });
	                } else {
	                    $("#hint1").html(data.msg);
	                    $("#hint1").show();
	                }
	            },
	            error: function (request) {
	                $("#hint1").html(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }
	    function saveRecruitBtn() {
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: "cooper/new/recruit/create_release.html",
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.href = data.url;
	                } else if (data.error) {
	                    $.alert({
	                        title: "网络错误!",
	                        content: data.msg,
	                        confirm: function () {
	                            location.href = data.url;
	                        }
	                    });
	                } else {
	                    $("#hint1").html(data.msg);
	                    $("#hint1").show();
	                }
	            },
	            error: function (request) {
	                $("#hint1").html(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }
	</script>
    </form>
</body>
</html>
