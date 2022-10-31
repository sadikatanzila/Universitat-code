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
    public partial class HR_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            msgtr.Visible = false;
            if (Session["HR_UserID"] != null && Session["Password"] != null)
            {
                if (System.Web.HttpContext.Current.Request.Cookies["HR_UserID"] != null)
                {
                    Session["HR_UserID"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["HR_UserID"].Expires = DateTime.Now.AddDays(-1);
                }

                if (System.Web.HttpContext.Current.Request.Cookies["Password"] != null)
                {
                    Session["Password"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                }
                if (System.Web.HttpContext.Current.Request.Cookies["HR_UserRole"] != null)
                {
                    Session["HR_UserRole"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["HR_UserRole"].Expires = DateTime.Now.AddDays(-1);
                }
                if (System.Web.HttpContext.Current.Request.Cookies["HR_UserFullName"] != null)
                {
                    Session["HR_UserName"] = null;
                    System.Web.HttpContext.Current.Response.Cookies["HR_UserFullName"].Expires = DateTime.Now.AddDays(-1);
                }
                HttpContext.Current.Session.Abandon();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {   
            HR_UserDAL objHR_UserBLL = new HR_UserDAL();

            // string userID = objUser.User_GetUserIDByUserNamePassword(txtusername.Text, txtpassword.Text);

            DataTable dtuserID = objHR_UserBLL.User_GetRoleByUserID(txtHR_Username.Text, txtpassword.Text);



            if (dtuserID.Rows.Count != 0)
            {

                Int32 HR_UserID = objHR_UserBLL.HR_User_GetIdByHR_UserNamePassword(txtHR_Username.Text, txtpassword.Text);

                if (HR_UserID != null && HR_UserID != 0)
                {

                    //oHR_User = objHR_UserBLL.HR_User_GetById(HR_UserID);
                    //if (oHR_User == null)
                    //{
                    //    msgtr.Visible = true;
                    //    lblMessage.Text = "Sorry! Invalid HR_User name or password.";
                    //    lblMessage.ForeColor = Color.Red;
                    //    return;            
                    //}

                    DataTable dtForNameAndRole = objHR_UserBLL.HR_User_GetRoleByHR_UserID(HR_UserID.ToString());

                    try
                    {
                        Session["HR_UserName"] = dtForNameAndRole.Rows[0]["HR_UserName"].ToString();
                    }
                    catch
                    {
                        Session["HR_UserName"] = " ";
                    }
                    Session["UID"] = HR_UserID;
                    Session["HR_UserID"] = dtForNameAndRole.Rows[0]["HR_UserID"].ToString();

                    Session["Password"] = txtpassword.Text;
                    try
                    {
                        //Session["HR_UserRole"] = Convert.ToInt32(dtForNameAndRole.Rows[0]["HR_UserRole"].ToString());
                        Session["HR_UserRole"] = EnumClass.HR_UserRole.HR_User;
                    }
                    catch
                    {

                    }
                    Session["BrId"] = Convert.ToInt32(dtForNameAndRole.Rows[0]["BrId"]);

                    txtpassword.Text = "";
                    txtHR_Username.Text = "";

                    Response.Redirect("HR_Home.aspx");
                }
                else
                {
                    msgtr.Visible = true;
                    lblMessage.Text = "Sorry! Invalid HR_User name or password.";
                    //  lblMessage.ForeColor = Color.Red;
                    return;
                }
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