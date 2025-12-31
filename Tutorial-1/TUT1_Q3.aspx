<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TUT1_Q3.aspx.cs" Inherits="ASP.NET_Labwork.Tutorial_1.TUT1_Q3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:50px;">
            <h2>Calculaterr</h2>
            Number 1:
            <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
            <br /><br />
            Number 2:
            <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
            <br /><br />
            Operation:
            <asp:DropDownList ID="ddlOperation" runat="server">
            <asp:ListItem Text="Addition" Value="add" />
            <asp:ListItem Text="Subtraction" Value="sub" />
            <asp:ListItem Text="Multiplication" Value="mul" />
            <asp:ListItem Text="Division" Value="div" />
            </asp:DropDownList>
            <br /><br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate"
            OnClick="btnCalculate_Click" />
            <br /><br />
            Result:
            <asp:Label ID="lblResult" runat="server"
            Font-Bold="true" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
