using System;
using System.Collections.Generic;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Eastern_Uni.DAL;
using System.Data.Common;
using System.Drawing;

namespace Eastern_Uni
{
    public partial class HR_CandLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TrackingNo"] != null && Session["Password"] != null)
            {
                Session["TrackingNo"] = null;
                Session["Password"] = null;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            HR_CandidateDAL objHR_CandidateDAL = new HR_CandidateDAL();

            // string userID = objUser.User_GetUserIDByUserNamePassword(txtusername.Text, txtpassword.Text);

            DataTable dtuserID = objHR_CandidateDAL.User_GetCandidateByTrucking(txt_truckNo.Text, txtpassword.Text);
            if (dtuserID.Rows.Count != 0)
            {
                Session["TrackingNo"] = dtuserID.Rows[0]["TrackingNo"].ToString();
                Session["Password"] = dtuserID.Rows[0]["Password"].ToString();
               // Session["UserSectionID"] = dtuserID.Rows[0]["UserSectionID"].ToString();

                Response.Redirect("HR_CandidateForm.aspx");
            }
            else
            {
                lblMessage.Text = "Sorry! Invalid Trucking No or Password.";
                lblMessage.ForeColor = Color.Red;
                return;
            }
        }
    }
}