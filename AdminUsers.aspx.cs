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
    public partial class AdminUsers : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserStatus"].ToString() != "admin")
            {
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\CSM3\App_Data\CarShowroomManagement.mdf;Integrated Security=True;");
                conn.Open();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.ToString() == "Delete")
            {
                string deleteQuery = "DELETE FROM Users WHERE UserName = '" + DropDownList2.SelectedItem.ToString() + "'";
                cmd = new SqlCommand(deleteQuery, conn); cmd.ExecuteNonQuery();
            }
            else
            {
                string getUserStatus = "SELECT User_Status FROM Users WHERE UserName = '" + DropDownList2.SelectedItem.ToString() + "'";
                da = new SqlDataAdapter(getUserStatus, conn); DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows[0][0].ToString() == "admin")
                {
                    string updateStatus = "UPDATE Users SET User_Status = 'subscriber' WHERE UserName = '" + DropDownList2.SelectedItem.ToString() + "'";
                    cmd = new SqlCommand(updateStatus, conn); cmd.ExecuteNonQuery();
                }
                else
                {
                    string updateStatus = "UPDATE Users SET User_Status = 'admin' WHERE UserName = '" + DropDownList2.SelectedItem.ToString() + "'";
                    cmd = new SqlCommand(updateStatus, conn); cmd.ExecuteNonQuery();
}
            }
            Response.Redirect("AdminUsers.aspx");
        }

                protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}