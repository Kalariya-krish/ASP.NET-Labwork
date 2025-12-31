using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Labwork.LoanApp
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(email.Text) || string.IsNullOrEmpty(password.Text))
            {
                lblError.Text = "Email and Password are required!";
            }
            else
            {
                lblError.Text = ""; // clear error

                Session["email"] = email.Text;
                Session["password"] = password.Text;
                Response.Redirect("HomePage.aspx");
            }
        }
    }
}