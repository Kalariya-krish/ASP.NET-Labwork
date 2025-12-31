using System;

namespace ASP.NET_Labwork.Tutorial_1
{
    public partial class TUT1_Q2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            double temp = Convert.ToDouble(txtTemp.Text);
            double result;
            if (rbCtoF.Checked)
            {
                result = (temp * 9 / 5) + 32;
                lblResult.Text = "Temperature in Fahrenheit: " + result;
            }
            else
            {
                result = (temp - 32) * 5 / 9;
                lblResult.Text = "Temperature in Celsius: " + result;
            }
        }
    }
}