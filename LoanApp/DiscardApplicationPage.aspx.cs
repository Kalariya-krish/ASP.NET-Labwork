using System;
using System.Data.SqlClient;

namespace ASP.NET_Labwork.LoanApp
{
    public partial class DiscardApplicationPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
            @"Data Source=(LocalDB)\MSSQLLocalDB;
              AttachDbFilename=C:\Users\kalar\Documents\HDFC-Loans.mdf;
              Integrated Security=True;
              Connect Timeout=30"
        );

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void discardBtn_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                successError.Visible = false;
                return;
            }

            int loanNo;
            if (!int.TryParse(loanNoTxt.Text.Trim(), out loanNo))
            {
                successError.Text = "Please enter valid Loan No";
                successError.ForeColor = System.Drawing.Color.Red;
                successError.Visible = true;
                return;
            }

            string query = "DELETE FROM Loan WHERE LoanNo = @LoanNo";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@LoanNo", loanNo);

            try
            {
                con.Open();
                int rows = cmd.ExecuteNonQuery();
                con.Close();

                if (rows > 0)
                {
                    successError.Text = "Record Discarded Successfully";
                    successError.ForeColor = System.Drawing.Color.Green;
                    ClearForm();
                }
                else
                {
                    successError.Text = "Loan No not found";
                    successError.ForeColor = System.Drawing.Color.Red;
                }

                successError.Visible = true;
            }
            catch (Exception ex)
            {
                con.Close();
                successError.Text = ex.Message;
                successError.ForeColor = System.Drawing.Color.Red;
                successError.Visible = true;
            }
        }

        private void ClearForm()
        {
            loanNoTxt.Text = "";
            savingAccountNo.Text = "";
            accountHolderName.Text = "";
            loanCategory.SelectedIndex = 0;
            loanType.SelectedIndex = 0;
            loanIssuedate.Text = "";
            loanAmount.Text = "";
            currentAddress.Text = "";
            loanRemarks.Text = "";
        }
    }
}
