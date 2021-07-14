using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSM3
{ 
    public partial class Frontend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Label1.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Label1.Text = "";
            Response.Redirect("Login.aspx");
        }
    }
}