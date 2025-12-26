<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ASP.NET_Labwork.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color:crimson; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">HDFC Loans : Next Step to Dream</h1>
        </div>

        <div>
            <asp:Button ID="Button3" runat="server" Text="Logout" OnClick="Button3_Click" />

            <br />
            <br />
            <asp:Label ID="logged_user" runat="server" Text="Loggin in : abc23@gmail.com"></asp:Label><br />
            <h3>Welcome to the place where achive your family Dreams !!!</h3>

            <asp:Button ID="new_loan_btn" runat="server" Text="Add New Loan Application" OnClick="new_loan_btn_Click" />
        </div>


    </form>
</body>
</html>
