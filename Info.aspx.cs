using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eastern_Uni
{
    public partial class Info : System.Web.UI.Page
    {
        string Sl = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (!String.IsNullOrEmpty(Session["Sl"].ToString()))
                {
                    Sl = Session["Sl"].ToString();
                    string phnNo = Convert.ToString(Session["PhnNo"]);
                }
            }
            catch (Exception er) { Response.Redirect("../_login.aspx"); }       
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtMobileNo.Text == Convert.ToString(Session["PhnNo"]))
            {
                string webUrl = "Info.aspx";
               
                string TrackingNo = Convert.ToString(Session["TrackingNo"]);
                Response.Redirect("EUMO_AdmitCard.aspx");

               // Session["MobileInsertion"] = txtMobileNo.Text;
               // ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "window.close('" + webUrl + "','_blank','width=250,height=150,top=300,left=500,resizable=yes,scrollbars = yes');", true);

            }
            else
            {
                lblMessage.Text = "Wrong Entry, Insert exact phone number to have your Admit Card";
            }
        }
    }
}