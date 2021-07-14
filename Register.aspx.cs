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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CSM3\App_Data\CarShowroomManagement.mdf;Integrated Security=True");
            conn.Open();
        }
        protected void SignUp_Click(object sender, EventArgs e)
        {
            // To check whether user is already in the database or not
            string checkquery = "SELECT UserName from Users WHERE UserName = '" + username.Text + "'";
            da = new SqlDataAdapter(checkquery, conn); DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Message.Visible = true;
            }
            else
            {
                string insertquery = "INSERT INTO Users(FirstName,LastName,Email,UserName,Password,MobileNumber,User_Status) VALUES('" + firstName.Text + "','" + lastName.Text + "','" + email.Text + "','" + username.Text + "','" + password.Text + "','" + mobile.Text + "','subscriber')";
                cmd = new SqlCommand(insertquery, conn); cmd.ExecuteNonQuery(); Response.Redirect("Login.aspx");

            }
        }
        }
}