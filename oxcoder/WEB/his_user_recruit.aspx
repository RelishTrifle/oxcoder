<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="his_user_recruit.aspx.cs" Inherits="WEB.his_user_recruit" %>

<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://oxcoder.com:80/">--><base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 挑战结果</title>
<link href="./猿圈 挑战结果_files/bootstrap.min.css" rel="stylesheet">
<link href="./猿圈 挑战结果_files/font-awesome.min.css" rel="stylesheet">
<link href="./猿圈 挑战结果_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./猿圈 挑战结果_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./猿圈 挑战结果_files/style.css" rel="stylesheet">
<link href="./猿圈 挑战结果_files/summernote.css" rel="stylesheet">
<link href="./猿圈 挑战结果_files/summernote-bs3.css" rel="stylesheet">
<link href="./猿圈 挑战结果_files/style(1).css" rel="stylesheet" type="text/css">
<!-- Max css -->
<link href="./猿圈 挑战结果_files/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
.video-box {
	border: 1px solid #c0c0c0;
}

.video-box img {
	width: 100%;
}

.video-desc {
	padding: 0 10px;
}

.video-source {
	float: right;
}

.hot-tag {
	position: absolute;
	background: #ff4400;
	color: #fff;
	font-size: 13px;
	line-height: 18px;
	cursor: pointer;
	top: 15px;
	padding: 0 10px;
	right: inherit;
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

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid">
									<section>
                                        <asp:Repeater runat="server" ID="result">
                                            <ItemTemplate>
										<div class="page-header col-md-12">
											<h2><%# Eval("challenge_name") %>（<%# Eval("company_name") %>）挑战结果</h2>
											<!-- <h1><span style="color:#3872a4;">通过</span></h1> -->
											<div class="col-md-2">
														<img src="./猿圈 挑战结果_files/pass1.png">
											</div>
											<div class="col-md-10">
												<h4 style="color: #3872a4;">结果 <%# Eval("highest") %></h4>
												<span>共用时：20秒</span> <span style="margin-left: 20px;">挑战次数：1</span>
												<span style="margin-left: 20px;">编译总耗时：23s348ms</span>

												<p class="help-block">
													<span class="label label-warning">Lv.2</span>
													大虾 ：开始在指导下独立负责单独的模块，开始思考，协助解决部分问题，熟练的使用搜索引擎，努力加油呦~
												</p>
											</div>

										</div>
                                                 </ItemTemplate>
                                        </asp:Repeater>
									</section>

									<div class="col-md-12">
										
											
											
												<h2>您尚未完全掌握的知识点有 ：</h2>
												
													<li class="btn btn-alt btn-primary" style="margin-right: 15px;">java</li>
												
													<li class="btn btn-alt btn-primary" style="margin-right: 15px;">门面模式</li>
												
													<li class="btn btn-alt btn-primary" style="margin-right: 15px;">观察者模式</li>
												
													<li class="btn btn-alt btn-primary" style="margin-right: 15px;">状态模式</li>
												
													<li class="btn btn-alt btn-primary" style="margin-right: 15px;">输出完整阶乘</li>
												
											
										
										<hr>
										
											
											
												<div class="col-md-12">
													<h2>推荐给您的学习资料：</h2>
													<p>根据您尚未完全掌握的知识点，我们推荐您学习以下内容</p>
												</div>
												<!-- 推荐给用户的学习资料 -->
												
													<div class="col-md-3" style="padding-bottom: 20px">
														<a href="http://oxcoder.com/user/learnCalendar/detail.html?pid=159" target="_blank">
															<div class="video-box">
																<span class="hot-tag"></span> <img src="./猿圈 挑战结果_files/1_640_360.jpg">
																<div class="video-desc">
																	<p>创建Mobile02对象</p>
																	<ul class="companyTags">
																		
																		
																			
																				<li>使用Java语言创建对象</li>
																			
																		
																	</ul>
																</div>
															</div>
														</a>
													</div>
												
													<div class="col-md-3" style="padding-bottom: 20px">
														<a href="http://oxcoder.com/user/learnCalendar/detail.html?pid=170" target="_blank">
															<div class="video-box">
																<span class="hot-tag"></span> <img src="./猿圈 挑战结果_files/1_640_360(1).jpg">
																<div class="video-desc">
																	<p>Java语言编码规范</p>
																	<ul class="companyTags">
																		
																		
																			
																				<li>Java语言编码惯例</li>
																			
																		
																	</ul>
																</div>
															</div>
														</a>
													</div>
												
													<div class="col-md-3" style="padding-bottom: 20px">
														<a href="http://oxcoder.com/user/learnCalendar/detail.html?pid=253" target="_blank">
															<div class="video-box">
																<span class="hot-tag"></span> <img src="./猿圈 挑战结果_files/1_640_360(2).jpg">
																<div class="video-desc">
																	<p>测试java7中对异常处理的新支持</p>
																	<ul class="companyTags">
																		
																		
																			
																				<li>Java 7中对异常处理的新支持</li>
																			
																		
																	</ul>
																</div>
															</div>
														</a>
													</div>
												
													<div class="col-md-3" style="padding-bottom: 20px">
														<a href="http://oxcoder.com/user/learnCalendar/detail.html?pid=255" target="_blank">
															<div class="video-box">
																<span class="hot-tag"></span> <img src="./猿圈 挑战结果_files/1_640_360(3).jpg">
																<div class="video-desc">
																	<p>测试Java 7中try语句对资源的释放</p>
																	<ul class="companyTags">
																		
																		
																			
																				<li>Java 7中try语句对资源的释放</li>
																			
																		
																	</ul>
																</div>
															</div>
														</a>
													</div>
												
													<div class="col-md-3" style="padding-bottom: 20px">
														<a href="http://oxcoder.com/user/learnCalendar/detail.html?pid=278" target="_blank">
															<div class="video-box">
																<span class="hot-tag"></span> <img src="./猿圈 挑战结果_files/1_640_360(4).jpg">
																<div class="video-desc">
																	<p>读取文件里的对象</p>
																	<ul class="companyTags">
																		
																		
																			
																				<li>java.io.ObjectInputStream类</li>
																			
																		
																	</ul>
																</div>
															</div>
														</a>
													</div>
												
													<div class="col-md-3" style="padding-bottom: 20px">
														<a href="http://oxcoder.com/user/learnCalendar/detail.html?pid=282" target="_blank">
															<div class="video-box">
																<span class="hot-tag"></span> <img src="./猿圈 挑战结果_files/1_640_360(5).jpg">
																<div class="video-desc">
																	<p>代码注释</p>
																	<ul class="companyTags">
																		
																		
																			
																				<li>给java代码添加注释</li>
																			
																		
																	</ul>
																</div>
															</div>
														</a>
													</div>
												
											
										
									</div>
								</div>
							</div>
							<!-- /.row -->
						</div>
						<!-- /#content -->
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- /.row -->
	<!-- /.container -->
	<footer id="footer"></footer>
	<script src="./猿圈 挑战结果_files/jquery-1.11.0.min.js"></script>
	<script src="./猿圈 挑战结果_files/bootstrap.min.js"></script>
	<script src="./猿圈 挑战结果_files/jquery.sparkline.min.js"></script>
	<script src="./猿圈 挑战结果_files/bootstrap-switch.min.js"></script>
	<script src="./猿圈 挑战结果_files/bootstrap-select.min.js"></script>
	<script src="./猿圈 挑战结果_files/bootstrap-filestyle.js"></script>
	<script src="./猿圈 挑战结果_files/summernote.min.js"></script>
	<script src="./猿圈 挑战结果_files/script.js"></script>
	<script type="text/javascript">
		
	</script>


</body></html>
