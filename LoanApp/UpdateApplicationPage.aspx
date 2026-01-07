<%@ Page Title="" Language="C#" MasterPageFile="~/LoanApp/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateApplicationPage.aspx.cs" Inherits="ASP.NET_Labwork.LoanApp.UpdateApplicationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>
    .form-container {
        width: 100%;
        padding: 25px;
        background-color: #f9f9f9;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .form-container h3 {
        text-align: center;
    }

    table.form-table {
        width: 100%;
        border-collapse: collapse;
    }

    .message {
        color: green;
        font-weight: bold;
        text-align: center;
    }
</style>

<div class="form-container">
    <h3>Update Loan Application</h3>

<table>
    <tr>
        <td>Loan No:</td>
        <td>
            <asp:TextBox ID="loanNoTxt" CssClass="textbox" runat="server" />
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="savingAccountNo"
                    ErrorMessage="Account Number is Required"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td rowspan="8" style="width:30%;">
                <asp:ValidationSummary ID="ValidationSummary1"
                    runat="server"
                    ForeColor="Red"
                    HeaderText="Please fix the following errors:" />
            </td>
        </tr>

        <tr>
            <td>Account Holder Name:</td>
            <td>
                <asp:TextBox ID="accountHolderName" CssClass="textbox" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="accountHolderName"
                    ErrorMessage="Account Holder Name is Required"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Loan Category:</td>
            <td>
                <asp:DropDownList ID="loanCategory" CssClass="dropdown" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Personal Loans</asp:ListItem>
                    <asp:ListItem>Education Loans</asp:ListItem>
                    <asp:ListItem>Home Loans</asp:ListItem>
                    <asp:ListItem>Vehicle Loans</asp:ListItem>
                    <asp:ListItem>Business Loans</asp:ListItem>
                    <asp:ListItem>Agricultural Loans</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="loanCategory"
                    InitialValue="Select"
                    ErrorMessage="Select Loan Category"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Loan Type:</td>
            <td>
                <asp:DropDownList ID="loanType" CssClass="dropdown" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Secured Loan</asp:ListItem>
                    <asp:ListItem>Unsecured Loan</asp:ListItem>
                    <asp:ListItem>Term Loan</asp:ListItem>
                    <asp:ListItem>Demand Loan</asp:ListItem>
                    <asp:ListItem>Fixed-rate Loan</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ControlToValidate="loanType"
                    InitialValue="Select"
                    ErrorMessage="Select Loan Type"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Loan Issue Date:</td>
            <td>
                <asp:TextBox ID="loanIssuedate" CssClass="textbox" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ControlToValidate="loanIssuedate"
                    ErrorMessage="Enter Loan Issue Date"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Loan Amount:</td>
            <td>
                <asp:TextBox ID="loanAmount" CssClass="textbox" runat="server" />
                <asp:RangeValidator ID="RangeValidator1" runat="server"
                    ControlToValidate="loanAmount"
                    MinimumValue="50000"
                    MaximumValue="200000"
                    Type="Integer"
                    ErrorMessage="Loan Amount must be between 50,000 and 2,00,000"
                    ForeColor="Red">*</asp:RangeValidator>
            </td>
        </tr>

        <tr>
            <td>Current Address:</td>
            <td>
                <asp:TextBox ID="currentAddress" CssClass="textbox" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                    ControlToValidate="currentAddress"
                    ErrorMessage="Enter Address"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Loan Remarks:</td>
            <td>
                <asp:TextBox ID="loanRemarks" CssClass="textbox" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                    ControlToValidate="loanRemarks"
                    ErrorMessage="Enter Loan Remark"
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td colspan="3" style="text-align:center;">
                <asp:Button ID="updateBtn" runat="server"
                    Text="Update Application"
                    CssClass="btn-submit"
                    CausesValidation="true"
                    OnClick="updateBtn_Click" />
            </td>
        </tr>

        <tr>
            <td colspan="3">
                <asp:Label ID="successError" runat="server"
                    CssClass="message"
                    Visible="false" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>
