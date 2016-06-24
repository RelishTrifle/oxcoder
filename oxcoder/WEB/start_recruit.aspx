<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start_recruit.aspx.cs" Inherits="WEB.start_recruit" %>

<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://oxcoder.com:80/">--><base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 挑战详情</title>
<link href="./猿圈 挑战详情_files/bootstrap.min.css" rel="stylesheet">
<link href="./猿圈 挑战详情_files/font-awesome.min.css" rel="stylesheet">
<link href="./猿圈 挑战详情_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./猿圈 挑战详情_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./猿圈 挑战详情_files/style.css" rel="stylesheet">
<link href="./猿圈 挑战详情_files/summernote.css" rel="stylesheet">
<link href="./猿圈 挑战详情_files/summernote-bs3.css" rel="stylesheet">
<link href="./猿圈 挑战详情_files/style(1).css" rel="stylesheet" type="text/css">
<!-- Max css -->
<link href="./猿圈 挑战详情_files/style_new.css" rel="stylesheet" type="text/css">
<style type="text/css">
.line-control {
	width: inherit;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
	
	<script src="./猿圈 挑战详情_files/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="./猿圈 挑战详情_files/flash.js"></script>
	<script type="text/javascript" src="./猿圈 挑战详情_files/webcam.js"></script>
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
				<img src="./猿圈 挑战详情_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="index.aspx">首页</a>
				</li>
				<li class="active">
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


<!-- 正式内容 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid">
									<section>
                                        <asp:Repeater ID="specific_challenge" runat="server">
                                            <ItemTemplate>
										        <div class="page-header" style="border-bottom: none;">
											        <h1>
												        <%# Eval("challenge_name")%> —— <%# Eval("company_name")%>
											        </h1>
											        <div class="challenge-simple-desc">
												        <span class="desc-label">
													        月薪：<%# Eval("salary_range")%>
												        </span>
												
												        <span class="desc-label">
													        时间： <%# Eval("end_date")%>
												        </span>
												        <span class="desc-label">
													        <%# Eval("num")%>人已接受挑战
												        </span>
												        <p>
													
												        </p>
											        </div>
										        </div>
                                                </ItemTemplate>
                                        </asp:Repeater>
										<!-- /.page-header -->
										<div id="div1">
											<div class="row">
												<asp:Repeater ID="rpt_item" runat="server">
                                                    <ItemTemplate>
													    <div class="col-md-4">
														    <div class="panel panel-default project">
															    <div class="panel-body">
																    <div class="row">
																	    <div class="col-xs-12">
																		    <h4>
																			    <a href="javascript:;">
																				    <%# Eval("name")%>
																			    </a>
																		    </h4>
																		    <h5 class="text-muted line-control">
                                                                                <%# Eval("detail")%>
                                                                            </h5>
																	    </div>
																	    <!-- /.col-xs-12 -->
																    </div>
																    <!-- /.row -->
																    <hr>
																    <h4>开发能力</h4>
																    <div class="well line-control">
																	    <%#  Eval("language")%>
																    </div>
																    <a href="javascript:;">
																	    by&nbsp; 猿圈团队
																    </a>
															    </div>
															    <!-- /.panel-body -->
															    <div class="panel-footer">
																    <div class="row">
																	    <div class="col-sm-4">
																		    <span class="small muted">项目难度</span>
																	    </div>
																	    <!-- /.col-sm-4 -->
																	    <div class="col-sm-8">
																		    <p>
																			    <%#  Eval("level")%>
																		    </p>
																	    </div>
																	    <!-- /.col-sm-8 -->
																    </div>
																    <!-- /.row -->
															    </div>
															    <!-- /.panel-footer -->
														    </div>
														    <!-- /.panel -->
													    </div>
												
												    </ItemTemplate>
                                                </asp:Repeater>
											</div>
										</div>
									</section>
								</div>
								
									
								<div style="text-align: center;" class="col-md-12">
											
									<a id="btn-run-not-sub" href="codingPage.aspx?order=0&cid=<%#challenge_id %>">
										<button class="btn btn-info btn-lg">
											开始挑战
										</button>
                                    </a>
											
								</div>
									
									
								
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
	<div id="camera_div"></div>
	<input type="hidden" id="id_user_recruit_id" value="133993">
	<!-- /.container -->
	<script src="./猿圈 挑战详情_files/bootstrap.min.js"></script>
	<script src="./猿圈 挑战详情_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 挑战详情_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 挑战详情_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 挑战详情_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 挑战详情_files/summernote.min.js"></script>
	<script src="./猿圈 挑战详情_files/script.js"></script>
	<script type="text/javascript">
		function fdisabled(obj){
			$(obj).attr("disabled",true);
		}
	</script>


</body></html>