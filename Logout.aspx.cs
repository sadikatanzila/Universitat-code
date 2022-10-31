using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eastern_Uni
{
    public partial class Logout : System.Web.UI.Page
    {
        private string userID = "";
        private string userPassword = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Session["UserID"] = null;
                Session["Password"] = null;
                Response.Redirect("frmLoginPage.aspx");
            }
            catch
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}