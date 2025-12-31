<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TUT1_Q1.aspx.cs" Inherits="ASP.NET_Labwork.Tutorial_1.TUT1_Q1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="margin:50px;">
                <h2>Welcome Page</h2>
                <asp:Label ID="Label1" runat="server" Text="Enter Your Name:"></asp:Label>
                <br /><br />
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                OnClick="btnSubmit_Click" />
                <br /><br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"
                Font-Bold="true"></asp:Label>
            </div>
       </div>
    </form>
</body>
</html>
