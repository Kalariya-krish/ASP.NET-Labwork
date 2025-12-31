using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Labwork.LoanApp
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null && Session["password"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                loginUserEmail.Text = "Welcome " + Session["email"];
            }
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session["Email"] = null;
            Session["Password"] = null;
            Response.Redirect("LoginForm.aspx");
        }

        protected void lbHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

        protected void lbNewApplication_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewApplicationPage.aspx");
        }

        protected void lbUpdateApplication_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateApplicationPage.aspx");
        }

        protected void lbRemoveApplication_Click(object sender, EventArgs e)
        {
            Response.Redirect("DiscardApplicationPage.aspx");
        }

        protected void lbViewAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewAllPage.aspx");
        }
    }
}