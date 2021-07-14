using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace CSM3
{
    public partial class PasswordVerification : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {

            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CSM3\App_Data\CarShowroomManagement.mdf;Integrated Security=True;");
            conn.Open();
        }
        protected void SignIn_Click(object sender, EventArgs e)
        {
            string selectEmail = "SELECT Email FROM Users WHERE Email = '" + email.Text + "'";
            da = new SqlDataAdapter(selectEmail, conn); DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string dbemail = ds.Tables[0].Rows[0][0].ToString();
                if (dbemail == email.Text)
                {
                    Session["Email"] = dbemail; Response.Redirect("Newpassword.aspx");
                }
            }
            else
            {
                Message.Visible = true;
            }
        }
    }
}