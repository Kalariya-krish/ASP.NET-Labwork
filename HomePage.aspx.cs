using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Labwork
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null && Session["password"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                logged_user.Text = "Welcome " + Session["email"];
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Session["Password"] = null;
            Response.Redirect("LoginForm.aspx");
        }

        protected void new_loan_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoanApplicationForm.aspx");
        }
    }
}