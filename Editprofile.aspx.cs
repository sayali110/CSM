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
    public partial class Editprofile : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CSM3\App_Data\CarShowroomManagement.mdf;Integrated Security=True");
                conn.Open();
                if (!IsPostBack)
                {
                    string query = "SELECT User_ID,FirstName,LastName,Email,UserName,Password,MobileNumber FROM Users WHERE UserName = '" + Session["username"].ToString() + "'";
                    da = new SqlDataAdapter(query, conn);
                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    justForHolding.Text = ds.Tables[0].Rows[0][0].ToString(); firstName.Text = ds.Tables[0].Rows[0][1].ToString(); lastName.Text = ds.Tables[0].Rows[0][2].ToString(); email.Text = ds.Tables[0].Rows[0][3].ToString(); username.Text = ds.Tables[0].Rows[0][4].ToString();
                    string ps = ds.Tables[0].Rows[0][5].ToString();
                    cpassword.Attributes["value"] = password.Attributes["value"] = ps;
                    mobile.Text = ds.Tables[0].Rows[0][6].ToString();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            string checkUsername = Session["Username"].ToString();
            if (checkUsername == username.Text)
            {
                string query = "UPDATE Users SET FirstName='" + firstName.Text + "'," + "LastName='" + lastName.Text + "'," + "Email='" + email.Text + "'," + "UserName='" + username.Text + "'," + "Password='" + password.Text + "'," + "MobileNumber='" + mobile.Text + "' WHERE UserName = '" + username.Text + "'";
                cmd = new SqlCommand(query, conn); cmd.ExecuteNonQuery(); Response.Redirect("Edit_Profile.aspx");
            }
            else
            {
                // To check whether user is already in the database or not
                string checkquery = "SELECT UserName from Users WHERE UserName = '" + username.Text + "'";
                da = new SqlDataAdapter(checkquery, conn); DataSet ds1 = new DataSet(); da.Fill(ds1);
                if (ds1.Tables[0].Rows.Count > 0)
                {
                }
                else
                {
                    Message.Visible = true;
                    string query = "UPDATE Users SET FirstName='" +
                    firstName.Text + "'," + "LastName='" + lastName.Text + "'," + "Email='" + email.Text + "'," + "UserName='" + username.Text + "'," + "Password='" + password.Text + "'," + "MobileNumber='" + mobile.Text + "' WHERE User_ID = "
                    + Convert.ToInt32(justForHolding.Text);
                    Session["Username"] = username.Text; cmd = new SqlCommand(query, conn); cmd.ExecuteNonQuery(); Response.Redirect("Editprofile.aspx");
                }
            }
        }
    }
}