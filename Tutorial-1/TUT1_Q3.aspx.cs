using System;

namespace ASP.NET_Labwork.Tutorial_1
{
    public partial class TUT1_Q3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double n1 = Convert.ToDouble(txtNum1.Text);
            double n2 = Convert.ToDouble(txtNum2.Text);
            double result = 0;
            if (ddlOperation.SelectedValue == "add")
                result = n1 + n2;
            else if (ddlOperation.SelectedValue == "sub")
                result = n1 - n2;
            else if (ddlOperation.SelectedValue == "mul")
                result = n1 * n2;
            else if (ddlOperation.SelectedValue == "div")
                result = n1 / n2;
            lblResult.Text = result.ToString();
        }
    }
}