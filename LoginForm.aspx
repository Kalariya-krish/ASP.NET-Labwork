<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ASP.NET_Labwork.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="align-items:center; width:350px; justify-content:center;">
            <h2 style="color:crimson; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">User Login !</h2><br />
            <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label><asp:TextBox ID="email" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label3" runat="server" Text="Password : "></asp:Label><asp:TextBox ID="password" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Button2" runat="server" Text="Register" />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
        </div>
    </form>
</body>
</html>
