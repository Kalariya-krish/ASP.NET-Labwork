using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Labwork
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            int number1 = Convert.ToInt32(no1.Text);
            int number2 = Convert.ToInt32(no2.Text);

            int res = number1 + number2;
            ans.Text =res.ToString();

        }
    }
}