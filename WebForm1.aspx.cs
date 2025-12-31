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
            //int number1 = Convert.ToInt32(no1.Text);
            //int number2 = Convert.ToInt32(no2.Text);

            //int ans = number1 + number2;
            //res.Text = ans.ToString();
        }

        protected void upload_btn_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = FileUpload1.FileName;
                string fileType = FileUpload1.PostedFile.ContentType;
                int fileSize = FileUpload1.PostedFile.ContentLength; // in bytes
                string fileExtension = System.IO.Path.GetExtension(fileName);

                lblFileDetails.Text =
                    "File Name: " + fileName + "<br/>" +
                    "File Type: " + fileType + "<br/>" +
                    "File Extension: " + fileExtension + "<br/>" +
                    "File Size: " + (fileSize / 1024) + " KB";
            }
            else
            {
                lblFileDetails.Text = "Please select a file first.";
            }
        }

        protected void btnView1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnView2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int num;
            if(int.TryParse(args.Value, out num) && num % 2 == 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}