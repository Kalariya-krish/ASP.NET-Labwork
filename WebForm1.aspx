<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.NET_Labwork.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="no1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="no2" runat="server"></asp:TextBox>
            <asp:TextBox ID="ans" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btn" runat="server" Text="Button" OnClick="btn_Click" /><br />
            <asp:Label ID="res" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
