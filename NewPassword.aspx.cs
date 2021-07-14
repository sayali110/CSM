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
    public partial class NewPassword : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CSM3\App_Data\CarShowroomManagement.mdf;Integrated Security=True;");
                conn.Open();
            }
            else
            {
                Response.Redirect("PasswordVerification.aspx");
            }
        }
        protected void SignIn_Click(object sender, EventArgs e)
        {
            string insertPassword = "UPDATE Users SET Password = '" + password.Text + "' WHERE Email = '" + Session["Email"].ToString() + "'";
            cmd = new SqlCommand(insertPassword, conn); cmd.ExecuteNonQuery(); Response.Redirect("Login.aspx");


        }
    }
}