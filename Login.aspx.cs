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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CSM3\App_Data\CarShowroomManagement.mdf;Integrated Security=True");
            conn.Open();
        }

        protected void SignIn_Click1(object sender, EventArgs e)
        {
            // To check whether user is already in the database or not
            string usernamequery = "SELECT UserName, Password, User_Status from Users WHERE UserName = '" + userName.Text + "'";
            da = new SqlDataAdapter(usernamequery, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string username = ds.Tables[0].Rows[0][0].ToString();
                string password = ds.Tables[0].Rows[0][1].ToString();
                string userStatus = ds.Tables[0].Rows[0][2].ToString();
                if (username == userName.Text && password == passWord.Text)
                {
                    Session["UserStatus"] = userStatus;
                    Session["Username"] = userName.Text;
                    //Response.Write(Session["UserStatus"].ToString());
                    Response.Redirect("Welcome.aspx");
                }

                else
                {
                    Message.Visible = true;
                }
            }

            else
            {
                Message.Visible = true;
            }
        }
    }
}
        
            