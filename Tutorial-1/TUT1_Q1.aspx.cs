using System;

namespace ASP.NET_Labwork.Tutorial_1
{
    public partial class TUT1_Q1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            lblMessage.Text = "Welcome, " + name + "!";
        }
    }
}