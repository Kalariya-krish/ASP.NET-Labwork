<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.NET_Labwork.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            <asp:TextBox ID="no1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="no2" runat="server"></asp:TextBox>
            <asp:TextBox ID="ans" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btn" runat="server" Text="Button" OnClick="btn_Click" /><br />
            <asp:Label ID="res" runat="server" Text="Label"></asp:Label>
        </div>
        <br />

        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Width="500px" Height="400px"/>
        </div>
        <br />

        <br />

        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FF33CC" ForeColor="Black"></asp:Calendar><br />
        
        <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="upload_btn" runat="server" Text="Upload" OnClick="upload_btn_Click" /><br /><br />
        
        <asp:Label ID="lblFileDetails" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
