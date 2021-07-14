using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSM3
{
    public partial class BackEnd : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if (Session["User_Status"].ToString() != "admin")
            {
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                Label4.Text = Session["Username"].ToString();
            }*/
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Label4.Text = "";
            Response.Redirect("Login.aspx");
        }
    }
}