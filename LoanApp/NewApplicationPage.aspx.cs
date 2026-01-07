using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_Labwork.LoanApp
{
    public partial class NewApplicationPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\kalar\Documents\HDFC-Loans.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                successError.Visible = false;
                return;
            }

            string accountNo = savingAccountNo.Text.Trim();
            string holderName = accountHolderName.Text.Trim();
            string category = loanCategory.SelectedValue;
            string type = loanType.SelectedValue;
            string address = currentAddress.Text.Trim();
            string remarks = loanRemarks.Text.Trim();

            DateTime issueDate;
            decimal amount;

            DateTime.TryParse(loanIssuedate.Text, out issueDate);
            decimal.TryParse(loanAmount.Text, out amount);

            string query = @"INSERT INTO Loan
                    (LoanNo, AccountNo, LoanCategory, LoanType, IssueDate, Amount, CurrentAddress, LoanRemarks)
                    VALUES
                    (@LoanNo, @AccountNo, @LoanCategory, @LoanType, @IssueDate, @Amount, @CurrentAddress, @LoanRemarks)";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@LoanNo", new Random().Next(1000, 9999));
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
                cmd.ExecuteNonQuery();
                con.Close();

                successError.Text = "Record Inserted Successfully";
                successError.ForeColor = System.Drawing.Color.Green;
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