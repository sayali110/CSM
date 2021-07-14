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
    public partial class AdminShowCars : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
        SqlCommand cmd;
        string temp;
        int CarID;
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
                string deleteQuery = "DELETE FROM Cars WHERE Car_Name = '" + DropDownList2.SelectedItem.ToString() + "'";
                cmd = new SqlCommand(deleteQuery, conn);
                cmd.ExecuteNonQuery();
                updatePanel.Visible = false;
                Response.Redirect("AdminShowCars.aspx");
            }
            else
            {
                // Show the panel
                updatePanel.Visible = true;
                string getCars = "SELECT Brands.Brand_name, Cars.Car_Name, Cars.Car_Image, Cars.Body_Type, Cars.Body_Color, Cars.Transmission_Type, Cars.Car_Price, Cars.Fuel_Type,Cars.Max_Power, Cars.Mileage FROM Brands INNER JOIN Cars ON Brands.Brand_ID = Cars.Brand_ID WHERE Car_Name = '" + DropDownList2.SelectedItem.ToString() + "'";
                da = new SqlDataAdapter(getCars, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                UpdateDropDownList.Text = ds.Tables[0].Rows[0][0].ToString(); // Brand Name
                CarName.Text = ds.Tables[0].Rows[0][1].ToString(); // Car Name
                temp = ds.Tables[0].Rows[0][2].ToString(); // Car Image (FileUpload File)
                BodyType.Text = ds.Tables[0].Rows[0][3].ToString(); // Body Type
                BodyColor.Text = ds.Tables[0].Rows[0][4].ToString(); // Body Color
                TransmissionType.Text = ds.Tables[0].Rows[0][5].ToString(); // Transmission Type
                CarPrice.Text = ds.Tables[0].Rows[0][6].ToString(); // Car Price
                DropDownList3.Text = ds.Tables[0].Rows[0][7].ToString(); // Fuel Type
                MaxPower.Text = ds.Tables[0].Rows[0][8].ToString(); // Max Power
                Mileage.Text = ds.Tables[0].Rows[0][9].ToString(); // Mileage
            }
        }


        protected void Add_Click(object sender, EventArgs e)
        {
            if (!fileAlreadySelected.Checked && !FileUpload1.HasFile)
            {
                FileUploadLabel.Visible = true;
            }
            else if (fileAlreadySelected.Checked)
            {
            }
        }
        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
        }

        protected void fileAlreadySelected_CheckedChanged1(object sender, EventArgs e)
        {
            FileUpload1.Enabled = false;
        }
    }
}

