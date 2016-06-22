<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_recruit.aspx.cs" Inherits="WEB.Recruit.user_recruit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>挑战管理</title>
</head>
<body>
     <div class="container">
        <div class="row">
            <div class="col-md-12">
                <section id="middle">
                    <h2 class="h2-tab">
                        <a href="user_recruit.aspx">我接受的挑战</a>
                    </h2>
                    <h2 class="h2-tab">
                        <a href="user_recruit.aspx?isHistory=1" class="off">挑战历史</a>
                    </h2>
                </section>
            </div>
            <div class="col-md-12 col-no-left-padding">
                <section id="Section1" class="col-md-12">
                    <div class="btn-group">
                        <a class="btn btn-default dropdown-toggle btn-demo-space top-search" data-toggle="dropdown" href="user_recruit.aspx">全部 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="user_recruit.aspx?isHistory=0">全部</a></li>
                            <li><a href="user_recruit.aspx?isHistory=0&userState=0">未完成的挑战</a></li>
                            <li><a href="user_recruit.aspx?isHistory=0&userState=1">通过的挑战</a></li>
                            <li><a href="user_recruit.aspx?isHistory=0&userState=2">不通过的挑战</a></li>
                        </ul>
                    </div>
                </section>
                <asp:Repeater ID="rpt_Challenge" runat="server">
                    <ItemTemplate>
                        <div class="col-md-3">
                            <section id="Section3">
                                <div class="panel panel-default shadow-effect">
                                    <div class="col-xs-12 panel-header">
                                        <div class="pull-left">
                                            <h4 class="line-control">
                                                <a href="Challenge.aspx?reid=983"><%# Eval("challenge_name")%>
                                                </a>
                                            </h4>
                                            <h4 class="line-control">
                                                <a href="User_Corp_Detail.aspx?cid=960"><%# Eval("company_name")%>
                                                </a>
                                            </h4>
                                        </div>
          
                                    </div>
                                    <div class="panel-body ">
                                        <ul class="list-unstyled">
                                            <li>月薪：<%# Eval("salary_range")%></li>
                                         
                                            <li>挑战类型：<%# Eval("language")%></li>
                                          
                                            <li>难度：<%# Eval("rank")%></li>
                                            <li>来源：<%# Eval("sponsor")%></li>
                                            <li><i class="fa fa-calendar"></i><%# Eval("end_date")%></li>
                                            <li><i class="fa fa-user"></i>已有<%# Eval("num")%>人接受挑战</li>
                                            <li class="progress-info"><span class="ongoing">
                                                <br>
                                            </span></li>
                                        </ul>
                                    </div>
                                    <!-- /.panel-body -->
                                    <div class="panel-footer align-center">
                                        <a href="start_recruit.aspx?id=<%# Eval("recruit_id")%>&cid=<%# Eval("challengeId") %>">
                                            <button class="btn btn-new1">开始挑战</button></a>
                                        <a href="user_recruit.aspx?delete=<%# Eval("recruit_id")%>" class="btn btn-new2">放弃</a>
                                    </div>
                                    <!-- /.panel-footer -->
                                </div>
                            </section>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-12">
                <section id="Section3">
                    <ul class="pagination">
                        <li class="disabled"><a href="javascript:;">«</a></li>
                        <li class="active"><a>1</a></li>
                        <li class="disabled"><a href="javascript:;">»</a></li>
                    </ul>
                </section>
            </div>
        </div>
        <!-- /.row -->
    </div>
</body>
</html>
