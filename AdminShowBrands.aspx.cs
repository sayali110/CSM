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
    public partial class AdminShowBrands : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlDataAdapter da;
        SqlCommand cmd;
        string temp;
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
                string deleteQuery = "DELETE FROM Brands WHERE Brand_name = '" + DropDownList2.SelectedItem.ToString() + "'";
                cmd = new SqlCommand(deleteQuery, conn); cmd.ExecuteNonQuery(); updatePanel.Visible = false;
            }
            else
            {
                // Show the panel
                updatePanel.Visible = true;
                string getBrands = "SELECT Brand_name, Brand_Image FROM Brands WHERE Brand_name = '" + DropDownList2.SelectedItem.ToString() + "'";
                da = new SqlDataAdapter(getBrands, conn); DataSet ds = new DataSet();
                da.Fill(ds);
                updateBrandName.Text = ds.Tables[0].Rows[0][0].ToString();  //Brand Name
                temp = ds.Tables[0].Rows[0][1].ToString(); // file Name

            }
        }


        protected void Update_Click(object sender, EventArgs e)
        {
            if (!fileAlreadySelected.Checked && !FileUpload1.HasFile)
            {
                fileUploadLabel.Visible = true;
            }
            else if (fileAlreadySelected.Checked)
            {
                FileUpload1.Enabled = false;
                string update = "UPDATE Brands SET Brand_name = '" + updateBrandName.Text + "' WHERE Brand_name = '" + DropDownList2.SelectedItem.ToString() + "'";
                cmd = new SqlCommand(update, conn);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminShowBrands.aspx");
            }
            else
            {
                FileUpload1.Enabled = true; FileUpload1.SaveAs(Server.MapPath("~/" + FileUpload1.FileName));
                string updatequery = "UPDATE Brands SET Brand_name = '" +
                updateBrandName.Text + "', Brand_Image = '" + FileUpload1.FileName + "' WHERE Brand_name = '" + DropDownList2.SelectedItem.ToString() + "'";
                cmd = new SqlCommand(updatequery, conn);
                cmd.ExecuteNonQuery();
                Response.Redirect("AdminShowBrands.aspx");
            }
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}
    