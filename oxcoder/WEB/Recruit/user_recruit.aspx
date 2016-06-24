<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_recruit.aspx.cs" Inherits="WEB.Recruit.user_recruit" %>

<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://oxcoder.com:80/">--><base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 挑战管理</title>
<link href="./猿圈 挑战管理_files/bootstrap.min.css" rel="stylesheet">
<link href="./猿圈 挑战管理_files/font-awesome.min.css" rel="stylesheet">
<link href="./猿圈 挑战管理_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./猿圈 挑战管理_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./猿圈 挑战管理_files/style.css" rel="stylesheet">
<link href="./猿圈 挑战管理_files/summernote.css" rel="stylesheet">
<link href="./猿圈 挑战管理_files/summernote-bs3.css" rel="stylesheet">
<link href="./猿圈 挑战管理_files/style(1).css" rel="stylesheet" type="text/css">
<!-- Max css -->
<link href="./猿圈 挑战管理_files/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
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
			<a class="navbar-brand hidden-sm" href="#" style="padding: 0;">
				<img src="./猿圈 挑战详情_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="#">首页</a>
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

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section id="middle" class="col-md-12 col-no-left-padding">
					<h2 class="h2-tab">
						<a href="user_recruit.aspx" class="">我接受的挑战</a>
					</h2>
					<h2 class="h2-tab">
						<a href="user_recruit.aspx?isHistory=1" class="off">挑战历史</a>
					</h2>
				</section>
			</div>
			<div class="col-md-12 col-no-left-padding">
				<section id="middle" class="col-md-12">
					<div class="btn-group" style="margin-bottom: 10px;">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							全部
							<span class="caret"></span>
						</button>
						<input id="is_history_id" value="false" type="hidden">
						<input id="user_state_id" value="" type="hidden">
						<ul class="dropdown-menu">
							<li>
								<a href="user_recruit.aspx?isHistory=0">全部</a>
							</li>
							<li>
								<a href="user_recruit.aspx?isHistory=0&userState=0">未完成的挑战</a>
							</li>
							<li>
								<a href="user_recruit.aspx?isHistory=0&userState=1">通过的挑战</a>
							</li>
							<li>
								<a href="user_recruit.aspx?isHistory=0&userState=2">不通过的挑战</a>
							</li>
						</ul>
					</div>
				</section>
				
                <asp:Repeater ID="rpt_Challenge" runat="server">
                    <ItemTemplate>
					<div class="col-md-3">
						<section id="middle">
							<div class="panel panel-default shadow-effect" style="background-image:url(sys/img/pass2.png);background-repeat:no-repeat;background-position:90% 55%;">
								<div class="col-xs-12 panel-header">
									<div class="pull-left">
										<h4 class="line-control">
										<a><%# Eval("challenge_name")%></a>
										</h4>
										<h4 class="line-control" style="min-height:18px;">
											<a href="#"><%# Eval("company_name")%></a>
										</h4>
									</div>
									<div class="pull-right client-info">
										<span class="percent text-danger">
											<img class="img-circle" style="width:60px;height:60px" src="./猿圈 挑战管理_files/10985032-a741-4bae-9a65-d6435ccdba1f.jpg">
										</span>
									</div>
									
								</div>
	
								<div class="panel-body ">
									<ul class="list-unstyled">
										<li>月薪：<%# Eval("salary_range")%></li>
										<li>
											挑战难度：<%# Eval("rank")%>
										</li>
										<li>来源：<%# Eval("sponsor")%></li>
                                        <li><i class="fa fa-calendar"></i>结束时间：<%# Eval("end_date")%></li>
										<li>
											<i class="fa fa-user"></i>
											<%# Eval("num")%>人已接受挑战
										</li>
										
									    <li class="progress-info">&nbsp;</li>
										
									</ul>
								</div>
								<!-- /.panel-body -->
								<div class="panel-footer align-center">
									
										
											<a href="start_recruit.aspx?id=<%# Eval("recruit_id")%>&cid=<%# Eval("challengeId") %>">
												<button class="btn btn-new1" onclick="fdisabled(this)">开始挑战</button>
											</a>
											<a href="user_recruit.aspx?delete=<%# Eval("recruit_id")%>" class="btn btn-new2" onclick="fdisabled(this)" class="btn btn-new2">放弃</a>

								</div>
								<!-- /.panel-footer -->
							</div>
						</section>
					</div>
                    </ItemTemplate>
				</asp:Repeater>

				
			</div>
			
			
  
  

<ul class="pagination">
			<li class="disabled">
		      <a aria-label="Previous">
		        <span aria-hidden="true">«</span>
		      </a>
		    </li>
			
				<li class="active"><a>1</a></li>
		
			<li class="disabled">
		      <a aria-label="Next">
		        <span aria-hidden="true">»</span>
		      </a>
		    </li>

	<li class="disabled"><a>共2条 1页</a></li>
</ul>

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer"></footer>
	<script src="./猿圈 挑战管理_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 挑战管理_files/bootstrap.min.js"></script>
	<script src="./猿圈 挑战管理_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 挑战管理_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 挑战管理_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 挑战管理_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 挑战管理_files/summernote.min.js"></script>
	<script src="./猿圈 挑战管理_files/script.js"></script>
	
	<script type="text/javascript" src="./猿圈 挑战管理_files/pagination.js"></script>
	
	<script src="./猿圈 挑战管理_files/zmUtil.js"></script>
	<script type="text/javascript">
		var page = 1;
		$PageCtrl.callBackFun = userRecruitPageTurn;
		function userRecruitPageTurn(pCode){
			location.href="/user/recruit/user_recruit.html?pageCode=" + pCode + "&isHistory="+$("#is_history_id").val()+"&userState=" + $("#user_state_id").val();
		}
		function fdisabled(obj){
			$(obj).attr("disabled",true);
		}
	</script>

</body></html>