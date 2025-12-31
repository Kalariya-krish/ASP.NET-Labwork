<%@ Page Language="C#" AutoEventWireup="true" CodeBehind=".aspx.cs" Inherits="ASP.NET_Labwork.LoanApplicationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="Homebtn" runat="server" BorderStyle="Ridge">Home </asp:LinkButton>
            <asp:LinkButton ID="Newapplicationbtn" runat="server" BorderStyle="Groove">New application </asp:LinkButton>
            <asp:LinkButton ID="UpdateApplicationbtn" runat="server" BorderStyle="Groove">Update Application </asp:LinkButton>
            <asp:LinkButton ID="RecourseApplicationbtn" runat="server" BorderStyle="Groove">Resourse Application </asp:LinkButton>
            <asp:LinkButton ID="viewallbtn" runat="server" BorderStyle="Groove">View All </asp:LinkButton>
            <br />
            <asp:Label ID="Label1" runat="server" Text="New Loan Appllication" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />

            <asp:Label ID="savelbl" runat="server" Text="saving Account no .:"></asp:Label>
            <asp:TextBox ID="savingtb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Account Holder Name .:"></asp:Label>
            <asp:TextBox ID="nametb" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Loan Catgory .:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="LoanType .: .:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            <br />
             <br />           
            <asp:Label ID="Label5" runat="server" Text="Loan Time Date .:"></asp:Label>
            <asp:TextBox ID="timedatetb" runat="server"></asp:TextBox>
            <br />
               <br />         
            <asp:Label ID="Label6" runat="server" Text= " Loan Ammount .:"></asp:Label>
            <asp:TextBox ID="amounttb" runat="server"></asp:TextBox>
            <br />
            <br />            
            <asp:Label ID="Label7" runat="server" Text="Currant Address .:"></asp:Label>
            <asp:ListBox ID="ListBox1" runat="server" Width="337px"></asp:ListBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Loan Remarks .:"></asp:Label>
            
            &nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
        </div>
    </form>
</body>
</html>
