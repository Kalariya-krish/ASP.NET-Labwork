using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ASP.NET_Labwork
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\kalar\\Documents\\Demo.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = new SqlCommand(
                "INSERT INTO Register (Username, Password) VALUES (@Username, @Password)",
                con);

            cmd.Parameters.AddWithValue("@Username", username.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", password.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}