<%@ Page Title="" Language="C#" MasterPageFile="~/LoanApp/MasterPage.Master" AutoEventWireup="true" CodeBehind="DiscardApplicationPage.aspx.cs" Inherits="ASP.NET_Labwork.LoanApp.DiscardApplicationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <style>
        .form-container {
            width: 700px;
            padding: 20px;
            background-color: #f9f9f9;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
</style>
    <div class="form-container">
        <h3>Discard Loan Application</h3>

        <table>
            <tr>
                <td>Loan No:</td>
                <td>
                    <asp:TextBox ID="loanNo" CssClass="textbox" runat="server" />
                </td>
                <td>
                    <asp:Button ID="btnGetLoanDetail" runat="server"
                    Text="Get Loan Detail"
                    CssClass="btn-submit" />
                </td>
            </tr>

            <tr>
                <td>Saving Account No:</td>
                <td>
                    <asp:TextBox ID="savingAccountNo" CssClass="textbox" runat="server" />
                </td>
            </tr>

            <tr>
                <td>Account Holder Name:</td>
                <td>
                    <asp:TextBox ID="accountHolderName" CssClass="textbox" runat="server" />
                </td>
            </tr>

            <tr>
                <td>Loan Category:</td>
                <td>
                    <asp:DropDownList ID="loanCategory" CssClass="dropdown" runat="server" />
                </td>
            </tr>

            <tr>
                <td>Loan Type:</td>
                <td>
                    <asp:DropDownList ID="loanType" CssClass="dropdown" runat="server" />
                </td>
            </tr>

            <tr>
                <td>Loan Issue Date:</td>
                <td>
                    <asp:TextBox ID="loanIssuedate" CssClass="textbox" runat="server" />
                </td>
            </tr>

            <tr>
                <td>Loan Amount:</td>
                <td>
                    <asp:TextBox ID="loanAmount" CssClass="textbox" runat="server" />
                </td>
            </tr>

            <tr>
                <td>Current Address:</td>
                <td>
                    <textarea id="currentAddress" rows="2"></textarea>
                </td>
            </tr>

            <tr>
                <td>Loan Remarks:</td>
                <td>
                    <textarea id="loanRemarks" rows="2"></textarea>
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="submitBtn" runat="server"
                        Text="Submit Application"
                        CssClass="btn-submit" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Label ID="successError" runat="server"
                        CssClass="message"
                        Text="Record Removed Successfully" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
