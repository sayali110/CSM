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
    public partial class AdminAddCars : System.Web.UI.Page
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Username"] = null; Response.Redirect("Login.aspx");
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            string query = "SELECT Car_Name FROM Cars WHERE Car_Name = '" + CarName.Text + "'";
            da = new SqlDataAdapter(query, conn); DataSet ds = new DataSet(); da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("Car already Exists");
            }
            else
            {
                string selectIdQuery = "SELECT Brand_ID from Brands WHERE Brand_name = '" + DropDownList1.SelectedItem.ToString() + "'";
                da = new SqlDataAdapter(selectIdQuery, conn);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                int BrandID = Convert.ToInt32(ds1.Tables[0].Rows[0][0]);
                string insertquery = "INSERT INTO Cars(Brand_ID, Car_Name, Car_Image, Body_Type, Body_Color, Transmission_Type, Car_Price, Fuel_Type, Max_Power, Mileage) VALUES(" + BrandID + ", '" + CarName.Text + "', '" + FileUpload1.FileName + "', '" + BodyType.Text + "', '" + BodyColor.Text
               + "','" + DropDownList2.SelectedItem.ToString() + "','" + CarPrice.Text + "','" + DropDownList3.SelectedItem.ToString() + "','" + MaxPower.Text + "','" + Mileage.Text + "')";
                cmd = new SqlCommand(insertquery, conn);
                cmd.ExecuteNonQuery();
                FileUpload1.SaveAs(Server.MapPath("~/" + FileUpload1.FileName));
            }
        }
    }
}