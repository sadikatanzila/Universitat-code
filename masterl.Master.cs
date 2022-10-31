using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eastern_Uni
{
    public partial class masterl : System.Web.UI.MasterPage
    {

        private string userID = "";
        private string userPassword = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                userID = Session["UserID_Admission"].ToString();
                userPassword = Session["Password_Admission"].ToString();

            }
            catch
            {
                Response.Redirect("loginl.aspx");
            }
        }
    }
}