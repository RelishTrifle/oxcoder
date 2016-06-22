<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start_recruit.aspx.cs" Inherits="WEB.Recruit.start_recruit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>挑战详情</title>
</head>
<body>
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
                                                    <h1><%# Eval("challenge_name")%>
												——
												<%# Eval("company_name")%>
                                                    </h1>
                                                    <div class="challenge-simple-desc">
                                                        <span class="desc-label">月薪：<%# Eval("salary_range")%></span>
                                                        <span class="desc-label">时间： <%# Eval("end_date")%>
                                                        </span><span class="desc-label">已有<%# Eval("num")%>人接受挑战</span>
                                                        <p>
                                                        </p>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
										<!-- /.page-header -->
										<div id="Div1">
											<div class="row">
                                                <asp:Repeater ID="rpt_item" runat="server">
                                                    <ItemTemplate>
                                                        <div class="col-md-4">
                                                            <div class="panel panel-default project">
                                                                <div class="panel-body">
                                                                    <div class="row">
                                                                        <div class="col-xs-12">
                                                                            <div class="pull-left">
                                                                                <h4>
                                                                                    <a href="javascript:;"><%# Eval("name")%></a>
                                                                                </h4>
                                                                                <h5 class="text-muted"><%# Eval("detail")%>
                                                                                </h5>
                                                                            </div>
                                                                            <div class="pull-right client-info"></div>
                                                                        </div>
                                                                        <!-- /.col-xs-12 -->
                                                                    </div>
                                                                    <!-- /.row -->
                                                                    <hr>
                                                                    <h4>开发能力</h4>
                                                                    <div class="well">
                                                                       <%#  Eval("language")%>
                                                                    </div>
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
										 <a id="btn-run-not-sub" href="#.aspx?order=0&cid=1">
                                             <button class="btn btn-new1">开始挑战</button></a>
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
</body>
</html>
