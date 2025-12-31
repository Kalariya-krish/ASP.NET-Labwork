<%@ Page Title="" Language="C#" MasterPageFile="~/LoanApp/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewAllPage.aspx.cs" Inherits="ASP.NET_Labwork.LoanApp.ViewAllPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Table ID="Table1" runat="server" border="1" CellPadding="10">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell Text="LoanNo" />
            <asp:TableHeaderCell Text="AccountNo" />
            <asp:TableHeaderCell Text="AccHolderName" />
            <asp:TableHeaderCell Text="Profession" />
            <asp:TableHeaderCell Text="Email" />
            <asp:TableHeaderCell Text="ContactNo" />
            <asp:TableHeaderCell Text="LoanCategory" />
            <asp:TableHeaderCell Text="LoanType" />
            <asp:TableHeaderCell Text="IssueDate" />
            <asp:TableHeaderCell Text="Amount" />
            <asp:TableHeaderCell Text="CurrentAddress" />
            <asp:TableHeaderCell Text="Loan" />



        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />
            <asp:TableCell Text="Demo" />

        </asp:TableRow>
    </asp:Table>
    <asp:SqlDataSource ID="dataSource" runat="server" />
    <asp:ScriptManager ID="scriptManager" runat="server" />

    <br />
    <br />
    <h3>Total No. of Entries: 
        <asp:Label ID="lblTotal" runat="server" /></h3>


    <asp:Button Text="Get Total" ID="btnGetTotal" runat="server" />
</asp:Content>
