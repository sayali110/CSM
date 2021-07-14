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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
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
                string selectTotalUsers = "SELECT COUNT(*) FROM Users";
                da = new SqlDataAdapter(selectTotalUsers, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                string str1 = ds.Tables[0].Rows[0][0].ToString();
                UsersCount.Text = str1;
                // UsersCount.Text = "Testing !!";
                string selectTotalBrands = "SELECT COUNT(*) FROM Brands";
                da = new SqlDataAdapter(selectTotalBrands, conn);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                BrandsCount.Text = ds1.Tables[0].Rows[0][0].ToString();
                string selectTotalCars = "SELECT COUNT(*) FROM Cars";
                da = new SqlDataAdapter(selectTotalCars, conn);
                DataSet ds2 = new DataSet();
                da.Fill(ds2);
                CarsCount.Text = ds2.Tables[0].Rows[0][0].ToString();
            }
        }
    }
}