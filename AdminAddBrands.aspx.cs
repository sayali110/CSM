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
    public partial class AdminAddBrands : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
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
            }
            if (!IsPostBack)
            {
                fileUploadLabel.Visible = false;
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            // To check whether Brand already exists or not
            string checkquery = "SELECT Brand_name from Brands WHERE Brand_name = '" + firstName.Text + "'";
            da = new SqlDataAdapter(checkquery, conn); DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                cautionLabel.Text = "Brand already exists !!";
                cautionLabel.Visible = true;
            }
            else
            {
                if (FileUpload1.HasFile)
                {
                    string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (fileExtension != ".png" && fileExtension != ".jpg")
                    {

                        fileUploadLabel.Text = "Only PNG and JPG files are allowed!!";
                        fileUploadLabel.Visible = true;
                    }
                    else
                    {
                        int fileSize = FileUpload1.PostedFile.ContentLength;
                        if (fileSize > 2097152)
                        {

                            fileUploadLabel.Text = "Maximum File size (2MB) exceeded!!";
                            fileUploadLabel.Visible = true;
                        }
                        else
                        {
                            FileUpload1.SaveAs(Server.MapPath("~/" + FileUpload1.FileName));
                            string insertquery = "INSERT INTO Brands(Brand_name, Brand_Image) VALUES('" + firstName.Text + "','" + FileUpload1.FileName + "')";
                            cmd = new SqlCommand(insertquery, conn); 
                            cmd.ExecuteNonQuery();
                            fileUploadLabel.Visible = false;
                        }
                    }
                }
                else
                {
                      
                    }
                }
                fileUploadLabel.Visible = true; fileUploadLabel.Text = "Please Select a Image !!";
                cautionLabel.Text = "Brand Uploaded Successfully !!";
                cautionLabel.Visible = true;
                firstName.Text = "";
            }
        }
    }