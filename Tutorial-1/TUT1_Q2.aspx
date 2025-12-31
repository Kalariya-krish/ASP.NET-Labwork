<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TUT1_Q2.aspx.cs" Inherits="ASP.NET_Labwork.Tutorial_1.TUT1_Q2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:50px;">
            <h2>Temperature Conversion</h2>
            <asp:Label ID="Label1" runat="server" Text="Enter
            Temperature:"></asp:Label>
            <br /><br />
            <asp:TextBox ID="txtTemp" runat="server"></asp:TextBox>
            <br /><br />
            <asp:RadioButton ID="rbCtoF" runat="server" GroupName="temp"
            Text="Celsius to Fahrenheit" Checked="true" />
            <br />
            <asp:RadioButton ID="rbFtoC" runat="server" GroupName="temp"
            Text="Fahrenheit to Celsius" />
            <br /><br />
            <asp:Button ID="btnConvert" runat="server" Text="Convert"
            OnClick="btnConvert_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server"
            Font-Bold="true" ></asp:Label>
        </div>
    </form>
</body>
</html>
