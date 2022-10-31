using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eastern_Uni
{
    public partial class HR_logout : System.Web.UI.Page
    {
        private string HR_UserID = "";
        private string userPassword = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Session["HR_UserID"] = null;
                Session["Password"] = null;
                Response.Redirect("HR_Login.aspx");
            }
            catch
            {
                Response.Redirect("HR_Login.aspx");
            }
        }
    }
}