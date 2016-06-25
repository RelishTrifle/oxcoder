<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company_index.aspx.cs" Inherits="WEB.company.company_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script id="hz6d_send_acc" src="./企业 挑战管理_files/sendacc.jsp" charset="utf-8"></script><script id="stat_script" src="./企业 挑战管理_files/stat.php" charset="utf-8"></script><script id="ivt_script" src="./企业 挑战管理_files/kf_ivt_new.php" charset="utf-8"></script>
<!--<base href="http://www.oxcoder.com:80/">--><base href=".">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>企业 挑战管理</title>
<link href="企业 挑战管理_files/bootstrap.min.css" rel="stylesheet">
<link href="企业 挑战管理_files/font-awesome.min.css" rel="stylesheet">
<link href="企业 挑战管理_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="企业 挑战管理_files/bootstrap-select.min.css" rel="stylesheet">
<link href="企业 挑战管理_files/style.css" rel="stylesheet">
<link href="企业 挑战管理_files/summernote.css" rel="stylesheet">
<link href="企业 挑战管理_files/summernote-bs3.css" rel="stylesheet">
<link href="企业 挑战管理_files/style(1).css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./企业 挑战管理_files/bootstrapValidator.min.css">
<!-- Max css -->
<link href="./企业 挑战管理_files/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div_company_mini" style="display: none; position: fixed; right: 0px; bottom: 0px; width: 403px; height: 378px; overflow: hidden; z-index: 10089; cursor: move;"><div id="hz6d_cname_mini_div" style="font-size:16px;overflow:hidden;position:absolute;top:7px;left:10px;width:330px;height:20px;color:#fff;text-indent:30px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">猿圈</div><div title="缩小" mini_narrow="缩小" mini_recover="还原" max_min="max" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="切换到正常窗口" style="position:absolute;top:10px;right:28px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="关闭" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:403px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%"></iframe></div></div><div id="kfivtwin" style="display: none; overflow: visible;"><div id="acc_title" class="Lelem" minheight="100" minwidth="100" maxheight="400" maxwidth="400" style="position: relative; z-index: 10000; overflow: visible;"><div class="Lelem" type="img" style="display: block; cursor: default; position: absolute; top: 51px; left: 3px; z-index: 10001; width: 394px; height: 196px;"><img style="width: 394px; height: 196px;" src="./企业 挑战管理_files/commonbg_4.png"></div><div style="display: block; cursor: default; position: absolute; top: 60px; left: 15px; z-index: 10002; width: 97px; height: 20px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 14px; line-height: 20px; font-family: 宋体;" iseditable="1">53KF在线客服</span></div><div style="display: block; cursor: pointer; position: absolute; top: 70px; left: 371px; z-index: 10003; width: 10px; height: 8px;" onclick="onliner_zdfq=3;hidden_ivt();;" type="img" class="Lelem"><img src="./企业 挑战管理_files/closebtn_3.png" style="width: 10px; height: 8px;"></div><div style="display: block; cursor: default; position: absolute; top: 97px; left: 13px; z-index: 10004; width: 127px; height: 120px;" type="img" class="Lelem"><img src="./企业 挑战管理_files/otherimg_6.png" style="width: 127px; height: 120px;"></div><div style="display: block; cursor: default; position: absolute; top: 94px; left: 160px; z-index: 10005; width: 140px; height: 42px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 29.4px; line-height: 42px; font-family: 黑体;" iseditable="1">欢迎咨询</span></div><div class="Lelem" type="text" style="display: block; cursor: default; position: absolute; top: 136px; left: 164px; z-index: 10006; width: 233px; height: 18px;"><span iseditable="1" style="vertical-align: top; font-size: 12.6px; line-height: 20px; font-family: 宋体;">53KF.com，感谢大家的支持！</span></div><div style="display: block; cursor: default; position: absolute; top: 157px; left: 166px; z-index: 10007; width: 190px; height: 17px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 12px; line-height: 17px;" iseditable="1">请问有什么可以帮您？</span></div><div class="Lelem" type="img" onclick="onliner_zdfq=2;hz6d_is_exist(&quot;window.open(%22http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26language%3Dzh-cn%26charset%3Dgbk%26username%3D%26userinfo%3D%26introurl%3D%26lyurl%3D%26lytype%3D0%26copartner%3D%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252Fcooper%252Findex.html%26keyword%3D%26brief%3D%26logo%3D%26question%3D%26tfrom%3D2%22%2C%22_blank%22%2C%22height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno%22)&quot;);hidden_ivt();;" style="display: block; cursor: pointer; position: absolute; top: 180px; left: 165px; z-index: 10008; width: 128px; height: 39px;"><img style="width: 128px; height: 39px;" src="./企业 挑战管理_files/clickbtn_11.png"></div><div style="display: block; cursor: pointer; position: absolute; top: 222px; left: 18px; z-index: 10009; width: 110px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; color: #666; line-height: 17px; font-family: 宋体;" iseditable="1">这是什么工具？</span></a></div><div style="display: block; cursor: pointer; position: absolute; top: 224px; left: 294px; z-index: 100010; width: 106px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; line-height: 17px; color: #666; font-family: 宋体;" iseditable="1">Powered by 53KF</span></a></div></div></div><div id="kfivteffect" style="display: none; position: absolute; width: 0px; height: 0px; overflow: hidden; border: 1px solid rgb(27, 136, 208); z-index: 10087; background: rgb(214, 238, 253);"></div><iframe id="kfiframe" src="" frameborder="0" scrolling="no" style="display: none; overflow: hidden;"></iframe><div id="iconDiv1" style="height: auto; width: auto;"><iframe style="position:absolute;z-index:7998;width:0px;height:0px;top:0px;left:0px;" frameborder="0"></iframe></div>
	
	







<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="./企业 挑战管理_files/企业 挑战管理.html" style="padding: 0;">
				<img src="./企业 挑战管理_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="#">首页</a>
				</li>
				<li class="active">
					<a href="/company_index.aspx">挑战管理</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">
							
								
								
								
									百度
								
							
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="#">去打赏</a>
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
							<div class="col-md-9">
								<div class="container-fluid">
									<section>
										<section id="middle">
											<input value="false" id="isHistory_id" type="hidden">
											<h2 class="h2-tab">
												<a href="/company_index.aspx" class="">进行中的挑战</a>
											</h2>
											<h2 class="h2-tab">
												<a href="#" class="off">挑战历史</a>
											</h2>
											<a href="/company/challenge_step1.aspx" class="btn btn-new1 pull-right" style="margin-top:20px;">
												新增挑战邀请
											</a>
										</section>
										<!-- /.page-header -->
										<div id="content">
											<div class="row">
                                                <div id="OngoingList" runat="server">
                                                    <div class="col-md-12">
														<div class="panel panel-default project ">
															<div class="panel-body">
																<div class="row">
																	<!-- new start-->
																	<div class="col-md-5">
																		<h2 style="margin: 12px 0 2px 0;">
																			<a href="#">Java工程师</a> <!--去筛选-->
																		</h2>
																		<div style="width: 280px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
																			<small class="text-muted">[2015/05/20]
																		
																				
																					洗扑克牌&nbsp;
																				
																					台阶问题&nbsp;
																				
																					建造者模式&nbsp;
																				
																					找重复数字和未出现数字&nbsp;
																				
																			</small>
																		</div>
																		<!-- <p class="text-muted" style="padding: 0;margin: 0;">2015/01/12</p> -->
																	</div>
																	<div class="col-md-2">
																		<ul class="list-unstyled" style="margin: 7px 0;">
																			<li>
																				<span class="badge badge-info">0</span>
																				个新接受
																			</li>
																			<li>
																				<span class="badge badge-danger">0</span>
																				个新完成
																			</li>
																		</ul>
																	</div>
																	<div class="col-md-2">
																		<ul class="list-unstyled" style="margin: 20px 0;">
																			<li>
																				<span class="red">0.0</span>
																				%已合格
																			</li>
																		</ul>
																	</div>
																	<div class="col-md-3">
																		<a href="http://www.oxcoder.com/cooper/screening/user/screening_list.html?recruitId=3147" class="btn btn-new1" style="">
																			去筛选
																		</a>
																		
																			<a href="/invite.aspx" class="btn btn-new1" style="margin: 16px 5px;">
																				邀请
																			</a>
																		
																	</div>
																	<!-- new end-->
																</div>
																<!-- /.row -->
															</div>
															<!-- /.panel-footer -->
														</div>
														<!-- /.panel -->
													</div>
                                                </div>
											</div>
											<!-- /.row -->
											
  
  

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
		
		
	
	
	
	
	<li class="disabled"><a>共1条 1页</a></li>
</ul>

										</div>
										<!-- /#content -->
									</section>
								</div>
								<!-- /.container-fluid  -->
							</div>
							<div class="col-md-3 profile-info" id="profile_info_div">




<div class="panel-user">
	<div class="panel-heading">
		<div class="panel-title">
			<div class="media">
				<a class="pull-left">
					<img src="./企业 挑战管理_files/8a42ace9-ed68-450b-9c11-e76c91c824d8.jpg" class="media-object">
				</a>
				<div class="media-body">
					<h4 class="media-heading">
						<!-- <span class="welcome">Hello</span> -->
						<span>百度
                        </span>
					&nbsp;</h4>
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
				<div class="number">0</div>
				<div class="description">今日通过挑战人数</div>
			</div>
		</div>
		<div class="stat-block stat-primary">
			<div class="icon">
				<b class="icon-cover"></b>
				<i class="fa fa-tachometer"></i>
			    
			</div>
			<div class="details">
				<div class="number">1</div>
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
	<script src="./企业 挑战管理_files/jquery-1.11.0.min.js"></script>
	<script src="./企业 挑战管理_files/bootstrap.min.js"></script>
	<script src="./企业 挑战管理_files/jquery.sparkline.min.js"></script>
	<script src="./企业 挑战管理_files/bootstrap-switch.min.js"></script>
	<script src="./企业 挑战管理_files/bootstrap-select.min.js"></script>
	<script src="./企业 挑战管理_files/bootstrap-filestyle.js"></script>
	<script src="./企业 挑战管理_files/summernote.min.js"></script>
	<script src="./企业 挑战管理_files/script.js"></script>
	
	<script type="text/javascript" src="./企业 挑战管理_files/pagination.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#profile_info_div").load("cooper/cooper_left_info.html");
	    });
	    $PageCtrl.callBackFun = recruitPageTurn;
	    function recruitPageTurn(pCode) {
	        location.href = "/cooper/index.html?pageCode=" + pCode + "&isHistory=" + $("#isHistory_id").val();
	    }
	</script>
	<!-- 引入footer 必须在下边否则js出错 -->
	




<div class="afooter navbar-fixed-bottom" style="">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				© 2016 oxcoder.com
				<a href="http://www.oxcoder.com/contactus.html">联系我们</a>
				<script type="text/javascript">
				    var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
				    document.write(
							unescape(
									"%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
									+ cnzz_protocol
									+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"
							)
					);
				</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./企业 挑战管理_files/pic.gif"></a></span><script src="./企业 挑战管理_files/z_stat.php" type="text/javascript"></script><script src="./企业 挑战管理_files/core.php" charset="utf-8" type="text/javascript"></script>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
    window.onload = function () {
        if (($(document.body).height() + 50) < $(window).height()) {
            $(".afooter").addClass("navbar-fixed-bottom");
        };
    }
</script>
<script type="text/javascript" src="./企业 挑战管理_files/kf.php"></script>

    </form>

</body>
</html>
