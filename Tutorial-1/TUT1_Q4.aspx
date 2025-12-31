<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TUT1_Q4.aspx.cs" Inherits="ASP.NET_Labwork.Tutorial_1.TUT1_Q4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <p>AutoPostBack Example</p>
            Select Your Course:
            <asp:DropDownList ID="ddlCourse" runat="server"
            AutoPostBack="true"
            OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>ASP.NET</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
            <asp:ListItem>React</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"
            OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblResult0" runat="server" Font-Bold="true"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" Font-Bold="true"></asp:Label>
            <br />
            <br />
            <br />
       </div>
    </form>
</body>
</html>
