
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Eastern_Uni.DAL;
using System.Data.Common;

namespace Eastern_Uni
{
    public partial class StudentAffairs_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            msgtr.Visible = false;
            if (Session["UserID_Admission"] != null && Session["Password_Admission"] != null)
            {
                if (System.Web.HttpContext.Current.Request.Cookies["UserID"] != null)
                {
                    Session["UserID_Admission"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(-1);
                }

                if (System.Web.HttpContext.Current.Request.Cookies["Password"] != null)
                {
                    Session["Password_Admission"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }
                if (System.Web.HttpContext.Current.Request.Cookies["UserRole"] != null)
                {
                    Session["UserRole"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["UserRole"].Expires = DateTime.Now.AddDays(-1);
                }
                if (System.Web.HttpContext.Current.Request.Cookies["UserFullName"] != null)
                {
                    Session["UserName"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["UserFullName"].Expires = DateTime.Now.AddDays(-1);
                }
                HttpContext.Current.Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserDAL objUser = new UserDAL();

            // string userID = objUser.User_GetUserIDByUserNamePassword(txtusername.Text, txtpassword.Text);
            int SectionID = 10002;
            DataTable dtuserID = objUser.User_GetRoleByUserIDSection(txtusername.Text, txtpassword.Text, SectionID);



            if (dtuserID.Rows.Count != 0)
            {
                string userID = dtuserID.Rows[0]["Id"].ToString();

                DataTable dtForNameAndRole = objUser.User_GetRoleByUserID(userID);
                try
                {
                    Session["UserFullName"] = dtForNameAndRole.Rows[0]["UserFullName"].ToString();
                }
                catch
                {
                    Session["UserFullName"] = " ";
                }
                Session["UserID_Admission"] = userID;
                Session["Password_Admission"] = txtpassword.Text;
                try
                {
                    //Session["UserRole"] = Convert.ToInt32(dtForNameAndRole.Rows[0]["UserRole"].ToString());
                }
                catch
                {
                    Session["UserRole"] = EnumClass.UserRole.User;
                }
                txtpassword.Text = "";
                txtusername.Text = "";
                Response.Redirect("StudentAffairs_Home.aspx");
            }
            else
            {
                msgtr.Visible = true;
                lblMessage.Text = "Sorry! Invalid user name or password.";
                //lblMessage.ForeColor = Color.Red;
                return;
            }
        }
    }
}