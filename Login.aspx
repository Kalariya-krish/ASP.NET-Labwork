<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.NET_Labwork.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Register</h3>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="username" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="password" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="registerBtn" runat="server" Text="Register" OnClick="registerBtn_Click" />
        </div>
    </form>
</body>
</html>
