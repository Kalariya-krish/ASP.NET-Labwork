using System;

namespace ASP.NET_Labwork.Tutorial_1
{
    public partial class TUT1_Q4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblResult.Text = "You selected: " + ddlCourse.SelectedItem.Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            lblResult0.Text = "Hello " + TextBox1.Text;
        }
    }
}