using System;
using System.Data.SqlClient;

namespace ASP.NET_Labwork.LoanApp
{
    public partial class UpdateApplicationPage : System.Web.UI.Page
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

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                successError.Visible = false;
                return;
            }

            int loanNo;
            decimal amount;
            DateTime issueDate;

            int.TryParse(loanNoTxt.Text.Trim(), out loanNo);
            decimal.TryParse(loanAmount.Text.Trim(), out amount);
            DateTime.TryParse(loanIssuedate.Text.Trim(), out issueDate);

            string accountNo = savingAccountNo.Text.Trim();
            string category = loanCategory.SelectedValue;
            string type = loanType.SelectedValue;
            string address = currentAddress.Text.Trim();
            string remarks = loanRemarks.Text.Trim();

            string query = @"UPDATE Loan SET
                                AccountNo = @AccountNo,
                                LoanCategory = @LoanCategory,
                                LoanType = @LoanType,
                                IssueDate = @IssueDate,
                                Amount = @Amount,
                                CurrentAddress = @CurrentAddress,
                                LoanRemarks = @LoanRemarks
                             WHERE LoanNo = @LoanNo";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@LoanNo", loanNo);
            cmd.Parameters.AddWithValue("@AccountNo", accountNo);
            cmd.Parameters.AddWithValue("@LoanCategory", category);
            cmd.Parameters.AddWithValue("@LoanType", type);
            cmd.Parameters.AddWithValue("@IssueDate", issueDate.ToString("yyyy-MM-dd"));
            cmd.Parameters.AddWithValue("@Amount", amount);
            cmd.Parameters.AddWithValue("@CurrentAddress", address);
            cmd.Parameters.AddWithValue("@LoanRemarks", remarks);

            try
            {
                con.Open();
                int rows = cmd.ExecuteNonQuery();
                con.Close();

                if (rows > 0)
                {
                    successError.Text = "Record Updated Successfully";
                    successError.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    successError.Text = "Loan No not found";
                    successError.ForeColor = System.Drawing.Color.Red;
                }

                successError.Visible = true;
                ClearForm();
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
