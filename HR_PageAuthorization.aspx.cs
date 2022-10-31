using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Text.RegularExpressions;
using Eastern_Uni.DAL;
using EasternUni.BO;

namespace Eastern_Uni
{
    public partial class HR_PageAuthorization : System.Web.UI.Page
    {
        #region Fields

       // MenuHeadBLL objMenuHeadBLL = new MenuHeadBLL();
       // MenuPageBLL objMenuPageBLL = new MenuPageBLL();
        MenuPermissionDAL objMenuPermissionDAL = new MenuPermissionDAL();
        private string HR_UserID = "";
        private string HR_UserPassword = "";
        DataTable dtMenuPermission = null;
        HR_UserDAL oHR_UserBLL = new HR_UserDAL();

        #endregion

        #region Methods

        private void Save()
        {
            int success = 0;

            DataTable dtHR_User = new DataTable();
            DataTable dtGotPermission = new DataTable();
            int BranchId = 0;

            dtHR_User = oHR_UserBLL.HR_User_GetByHR_UserId(Convert.ToString(ddlHR_User.SelectedValue));
            if (dtHR_User.Rows.Count > 0)
            {
                BranchId = Convert.ToInt32(dtHR_User.Rows[0]["BrId"]);
            }
            dtHR_User = null;

            for (int head = 0; head < gvPagesList.Rows.Count; head++)
            {
                int pageID = Convert.ToInt32(gvPagesList.DataKeys[head].Value);
                int menuHeadID = Convert.ToInt32(((Label)gvPagesList.Rows[head].FindControl("lblMenuHeadID")).Text);
                int submenuHeadID = Convert.ToInt32(((Label)gvPagesList.Rows[head].FindControl("lblSubMenuHeadID")).Text);

                MenuPermission objMenuPermission = new MenuPermission();

                objMenuPermission.PageID = pageID;
                objMenuPermission.MenuHeadID = menuHeadID;
                objMenuPermission.SubMenuHeadID = submenuHeadID;
                objMenuPermission.UserID = Convert.ToString(ddlHR_User.SelectedValue);
                objMenuPermission.BrId = BranchId;

                if (((CheckBox)gvPagesList.Rows[head].FindControl("chkBoxPages")).Checked)
                {
                    objMenuPermission.CanView = true;
                    dtGotPermission = objMenuPermissionDAL.GetPermission_Controls_DataTable("HR_MenuPermissionWeb_GetPermissionByBrIdHR_UserIdPageId",
                        Convert.ToInt32(gvPagesList.DataKeys[head].Value), BranchId, Convert.ToString(ddlHR_User.SelectedValue));
                    if (dtGotPermission.Rows.Count <= 0)
                    {
                        //Add new record
                        success = objMenuPermissionDAL.MenuPermission_Add(objMenuPermission);
                    }
                    else
                    {
                        //Update on existing record
                        success = objMenuPermissionDAL.MenuPermission_Update(objMenuPermission);
                    }
                }//End of if Statement
                else
                {
                    //Update record
                    dtGotPermission = objMenuPermissionDAL.GetPermission_Controls_DataTable("HR_MenuPermissionWeb_GetPermissionByBrIdHR_UserIdPageId",
                        Convert.ToInt32(gvPagesList.DataKeys[head].Value), BranchId, Convert.ToString(ddlHR_User.SelectedValue));
                    objMenuPermission.CanView = false;
                    if (dtGotPermission.Rows.Count > 0)
                    {
                        //Update on existing record
                        success = objMenuPermissionDAL.MenuPermission_Update(objMenuPermission);
                    }
                }
                dtGotPermission = null;
            }


            if (success > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Menu permission has been given.');", true);
                CommonBinder.LoadDDLHR_User(ddlHR_User);
                BindMenuHead();

            }
        }

        private void BindMenuHead()
        {
            try
            {

                dtMenuPermission = CommonBinder.CreateDataTable("HR_MenuPageWeb_GetAll_ForPermission");
                gvPagesList.DataSource = dtMenuPermission;
                gvPagesList.DataBind();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void BindMenuHeadHR_User(string UserID)
        {

            //List<MenuHead> listHeader = objMenuHeadBLL.MenuHead_GetAll_HR_User(HR_UserId);
            //gvPagesList.DataSource = listHeader;
            //gvPagesList.DataBind();

        }

        #endregion

        #region Events

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                HR_UserID = Session["HR_UserID"].ToString();
                HR_UserPassword = Session["Password"].ToString();
            }
            catch
            {
                Response.Redirect("~/HR_Login.aspx");
            }

            if (!Page.IsPostBack)
            {
                BindMenuHead();
                CommonBinder.LoadDDLHR_User(ddlHR_User);

            }
        }

        protected void ddlHR_User_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToString(ddlHR_User.SelectedValue) != "-- Please Select --")
           {
               try
               {
                   DataTable dtGotPermission = null;
                   DataTable dtHR_User = null;
                   int BranchId = 0;

                   if (ddlHR_User.SelectedIndex == 0)
                   {
                       BindMenuHead();
                   }
                   else
                   {

                       if (gvPagesList.Rows.Count > 0)
                       {
                           for (int i = 0; i < gvPagesList.Rows.Count; i++)
                           {
                               dtHR_User = new DataTable();
                               BranchId = 0;
                               dtHR_User = oHR_UserBLL.HR_User_GetByHR_UserId(Convert.ToString(ddlHR_User.SelectedValue));
                               if (dtHR_User.Rows.Count > 0)
                               {
                                   BranchId = Convert.ToInt32(dtHR_User.Rows[0]["BrId"]);
                               }

                               dtGotPermission = new DataTable();
                               dtGotPermission = objMenuPermissionDAL.GetPermission_Controls_DataTable("HR_MenuPermissionWeb_GetPermissionByBrIdHR_UserIdPageId",
                                   Convert.ToInt32(gvPagesList.DataKeys[i].Value), BranchId, Convert.ToString(ddlHR_User.SelectedValue));

                               if (dtGotPermission.Rows.Count > 0)
                               {
                                   ((CheckBox)gvPagesList.Rows[i].FindControl("chkBoxPages")).Checked = true;
                               }
                               else
                               {
                                   ((CheckBox)gvPagesList.Rows[i].FindControl("chkBoxPages")).Checked = false;
                               }
                               dtGotPermission = null;
                               dtHR_User = null;
                           }

                       }//End of if statement
                   }
               }
               catch (Exception ex)
               {
                   lblMessage.Text = ex.Message.ToString();
               }
           }
            else
           {
               lblMessage.Text = "Please Select the fixed User.";
           }
            
            
            
            
            
            
          

        }

        protected void gvPagesList_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == System.Web.UI.WebControls.DataControlRowType.DataRow)
            {
                // when mouse is over the row, save original color to new attribute, and change it to highlight color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#98F5FF'");

                // when mouse leaves the row, change the bg color to its original value  
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");

                //int headID = Convert.ToInt32(gvPagesList.DataKeys[e.Row.RowIndex].Value);

                //DataTable dtPages = objMenuPageBLL.MenuPage_GetAllByHeadID(headID);
                //if (dtPages.Rows.Count > 0)
                //{
                //    ((GridView)e.Row.FindControl("gvPages")).DataSource = dtPages;
                //    ((GridView)e.Row.FindControl("gvPages")).DataBind();
                //}

                //gvPages.DataSource = dtPages;
                //gvPages.DataBind(); 

            }
        }

        protected void gvPagesList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            BindMenuHead();
        }

        protected void gvPages_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == System.Web.UI.WebControls.DataControlRowType.DataRow)
            {
                //when mouse is over the row, save original color to new attribute, and change it to highlight color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#0AD4CD'");

                // when mouse leaves the row, change the bg color to its original value  
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");

            }
        }

        protected void btnPermission_Click(object sender, EventArgs e)
        {
            int isChecked = 0;

            if (ddlHR_User.SelectedIndex <= 0)
            {
                //lblMessage.Text = "Sorry! please select HR_User.";
                //lblMessage.ForeColor = Color.Red;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", " alert('Sorry! Please select HR_User.');", true);

                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Please select HR_User.');", true);

                return;
            }

            if (gvPagesList.Rows.Count > 0)
            {

                //    for (int i = 0; i < gvPagesList.Rows.Count; i++)
                //    {
                //        if (((CheckBox)gvPagesList.Rows[i].FindControl("chkBoxPages")).Checked)
                //        {
                //            isChecked = 1;
                //            break;
                //        }
                //        if (isChecked > 0)
                //        {
                //            break;
                //        }
                //    }

                //    if (isChecked <= 0)
                //    {
                //        //lblMessage.Text = "Sorry! Please checked any item to access permission.";
                //        //lblMessage.ForeColor = Color.Red;
                //        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Sorry! Please checked any item to access permission');", true);
                //        return;
                //    }

                Save();
            }
        }

        #endregion
    }
}