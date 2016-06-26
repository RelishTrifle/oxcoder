<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company_list.aspx.cs" Inherits="WEB.admin.company.company_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>这里是大后台啊</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Table ID="Table1" runat="server" CellPadding="15"
                GridLines="Both">
                <asp:TableRow runat="server">
                    <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>公司ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>是否完成注册</asp:TableHeaderCell>
                    <asp:TableHeaderCell>公司名称</asp:TableHeaderCell>
                    <asp:TableHeaderCell>电话</asp:TableHeaderCell>
                    <asp:TableHeaderCell>从事方向</asp:TableHeaderCell>     
                    <asp:TableHeaderCell>余额</asp:TableHeaderCell>
                    <asp:TableHeaderCell>删除</asp:TableHeaderCell>
                </asp:TableRow>
            </asp:Table>
    </div>
    </form>
</body>
</html>
