<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.NET_Labwork.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Sum of Two Numbers : </h2>
        <div style="margin-left: 40px">
            Enter Number1 :<asp:TextBox ID="no1" runat="server"></asp:TextBox><br />
            Enter Number2 :<asp:TextBox ID="no2" runat="server"></asp:TextBox><br />

            <asp:Button ID="btn" runat="server" Text="Button" OnClick="btn_Click" />&nbsp;&nbsp;
            <asp:Label ID="res" runat="server" Text="Label"></asp:Label>
        </div>
        


        <br /><h2>Advertisement : </h2>
        <div>
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Width="500px" Height="400px"/>
        </div>



        <br /><h2>Calender : </h2>
        <div>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FF33CC" ForeColor="Black"></asp:Calendar><br />
        </div>
        


        <br /><h2>File Upload Control : </h2>
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="upload_btn" runat="server" Text="Upload" OnClick="upload_btn_Click" /><br /><br />
            <asp:Label ID="lblFileDetails" runat="server" Text="Label"></asp:Label>
        </div>




        <br /><h2>MultiView Control : </h2>
        <asp:Button ID="btnView1" runat="server" Text="Show View 1" OnClick="btnView1_Click" />
        <asp:Button ID="btnView2" runat="server" Text="Show View 2" OnClick="btnView2_Click" />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <h3>This is View 1</h3>
                <p>Sum of two numbers section</p>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <h3>This is View 2</h3>
                <p>File Upload section</p>
              </asp:View>
         </asp:MultiView>




         <br /><h2>Validation Control : </h2>
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="NAME IS REQUIRED" ControlToValidate="name" ForeColor="Red">*</asp:RequiredFieldValidator><br />

        <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
        <asp:TextBox ID="age" runat="server"></asp:TextBox><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be greter than 18" ControlToValidate="age" ForeColor="Red" MaximumValue="40" MinimumValue="18">*</asp:RangeValidator><br />

        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="email" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator><br />

        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="PASSWORD IS REQUIRED" ControlToValidate="password" ForeColor="Red">*</asp:RequiredFieldValidator><br />

        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="cpassword" runat="server"></asp:TextBox><asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Password Does not match" ControlToCompare="password" ControlToValidate="cpassword" ForeColor="Red">*</asp:CompareValidator><br />
    
        <asp:Label ID="Label6" runat="server" Text="Number"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Not a even number" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Error" ShowMessageBox="True" />




        <br /><br /><asp:Label ID="Label7" runat="server" Text="Name"></asp:Label><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label8" runat="server" Text="Subject"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Maths</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Python</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
        </asp:DropDownList><br />
        <asp:CheckBox ID="CheckBox1" runat="server" />I Accept<br />
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>


    </form>
</body>
</html>
