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
    public partial class HR_AdminHome : System.Web.UI.MasterPage
    {
      //  MenuHeadDAL objMenuHeadBLL = new MenuHeadDAL();
       // MenuPageDAL objMenuPageBLL = new MenuPageDAL();
      //  MenuPermissionDAL objMenuPermissionBLL = new MenuPermissionDAL();

        private string userID = "";
        private string userpassword = "";
        private string userFullName = "";
        private Int32 MenuHeadID = 0;
        private string SubMenuHeadID = "";
      
        string connStr = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                userID = Session["HR_UserID"].ToString();
                userpassword = Session["Password"].ToString();
                userFullName = Session["HR_UserName"].ToString();
            }
            catch
            {
                Response.Redirect("~/HR_Login.aspx");
            }

            if (!IsPostBack)
            {
                lblUser.Text = "Logged in as :  " + userFullName;
                CreateMenuSubMenuData();
            }

            CheckPage_asUser();
            
        }


        private void CheckPage_asUser()
        {
            DataTable UserData = new DataTable();

            userID = Session["HR_UserID"].ToString();
            string URL = this.Page.ToString().Substring(4, this.Page.ToString().Substring(4).Length - 5) + ".aspx";

          UserData = GetPage_asUser("GetAll_PageURL_Userwise", userID, URL);
          if (UserData.Rows.Count <= 0) //This submenu has no leave
          {
             // lblAdmin.Text = "Your User is not permitted for this page.....";
              Response.Redirect("HR_Home.aspx");

          }
          else
          {
           //   lblAdmin.Text = " ";

          }
            
            
        }





        public DataTable GetPage_asUser(string storeProcedure, string userID, string URL)
        {

            DbProviderHelper.GetConnection();
            DataTable dTable = new DataTable();
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@userID", DbType.String, userID);
                AddParameter(oDbCommand, "@URL", DbType.String, URL);
                DbDataAdapter dAdapter = DbProviderHelper.CreateDataAdapter(oDbCommand);
                dAdapter.Fill(dTable);
            }
            catch (Exception ex)
            {
                return dTable;
            }
            finally
            {
                dTable.Dispose();
            }
            return dTable;
        }
        public string GetCurrentPageName()
        {
            string sPath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
            System.IO.FileInfo oInfo = new System.IO.FileInfo(sPath);
            string path = oInfo.FullName;
            string sRet = oInfo.Name;
            return sRet;
        }

        private void CreateMenuSubMenuData()
        {

            DataTable dtSubMenu = new DataTable();
            DataTable dtPermittedMenu = new DataTable();
            DataTable dtSub2Menu = null;
            DataSet ds1 = new DataSet();
            DataTable dtMenuHead = new DataTable();
           // string webroot = "Eastern Uni/";
            //string webroot = "Choukash/";
            int tmpSubMenuID = 0, tmpPrevSubMenuID = 0;

            userID = HRGlobalClass.userID;
            bool gotPermission = false;
            try
            {
                userID = Convert.ToString(Session["HR_UserID"]);

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    //Get MenuHead
                    dtMenuHead = GetDataTableMenuHead("HR_MenuHeadWeb_GetAll");
                    StringBuilder tableOutput = new StringBuilder();

                    for (int i = 0; i < dtMenuHead.Rows.Count; i++)
                    {
                        //userID = dtMenuHead.Rows[i]["UserID"].ToString();
                        MenuHeadID = Convert.ToInt32(dtMenuHead.Rows[i]["HR_MenuHeadWebID"].ToString());

                        gotPermission = GetPermissionByMenuHead(MenuHeadID);
                        //if gotPermission is false then skip the following works else do all
                        if (gotPermission == true)
                        {
                            tableOutput.Append("<li><a runat='server' href='#'");
                            tableOutput.Append(">" + dtMenuHead.Rows[i]["HR_MenuHeadWebName"].ToString());
                            tableOutput.Append("</a>");
                            tempHtmlTable.Text = tableOutput.ToString();

                            dtSubMenu = GetDataTableHR_MenuPageWeb("HR_MenuPageWeb_GetAllByMenuHeadID", MenuHeadID);

                            tableOutput.Append("<ul> ");

                            for (int j = 0; j < dtSubMenu.Rows.Count; j++)
                            {
                                dtSub2Menu = new DataTable();
                                dtSub2Menu = GetDataTableHR_MenuPageWeb("HR_MenuPageWeb_GetAllByMenuHeadID", Convert.ToInt32(dtSubMenu.Rows[j]["SubMenuHeadID"]));

                                if (dtSub2Menu.Rows.Count <= 0) //This submenu has no leave
                                {
                                    //This is submenu usder menu
                                    //Check permission for this user
                                    dtPermittedMenu = GetDataTableMenuSubMenuPermission("HR_MenuPermissionWeb_GetPermissionByMenuSubMenuHeadIdHR_UserId", Convert.ToInt32(userID),
                                        Convert.ToInt32(dtSubMenu.Rows[j]["MenuHeadID"]), Convert.ToInt32(dtSubMenu.Rows[j]["SubMenuHeadID"]));
                                    if (dtPermittedMenu.Rows.Count > 0)
                                    {
                                        //tableOutput.Append(" href=../" +webroot + dtSubMenu.Rows[j]["Url"].ToString());
                                        tableOutput.Append("<li><a  runat='server' ID=" + dtSubMenu.Rows[j]["PageId"].ToString());
                                        tableOutput.Append(" href=../"  + dtSubMenu.Rows[j]["Url"].ToString());
                                        tableOutput.Append(" >" + dtSubMenu.Rows[j]["PageName"].ToString());
                                        tableOutput.Append("</a></li>");
                                    }
                                    dtPermittedMenu = null;
                                }
                                else
                                {

                                    //if (Convert.ToInt32(dtSubMenu.Rows[j]["SubMenuHeadID"]) == 2078)
                                    //{
                                    //    int ss = 0;
                                    //    ss = 1;
                                    //}

                                    //Check Permission Here
                                    gotPermission = false;
                                    gotPermission = GetPermissionByMenuHead(Convert.ToInt32(dtSubMenu.Rows[j]["SubMenuHeadID"]));
                                    if (gotPermission == true)
                                    {
                                        tableOutput.Append("<li><a runat='server' href='#'");
                                        tableOutput.Append(">" + dtSubMenu.Rows[j]["PageName"].ToString());
                                        tableOutput.Append("</a>");
                                        tempHtmlTable.Text = tableOutput.ToString();

                                        tableOutput.Append("<ul> ");

                                        for (int ssmrc = 0; ssmrc < dtSub2Menu.Rows.Count; ssmrc++)
                                        {
                                            //Check permission for this user
                                            dtPermittedMenu = GetDataTableMenuSubMenuPermission("HR_MenuPermissionWeb_GetPermissionByMenuSubMenuHeadIdHR_UserId", Convert.ToInt32(userID),
                                                Convert.ToInt32(dtSub2Menu.Rows[ssmrc]["MenuHeadID"]), Convert.ToInt32(dtSub2Menu.Rows[ssmrc]["SubMenuHeadID"]));

                                            if (dtPermittedMenu.Rows.Count > 0)
                                            {
                                                tableOutput.Append("<li><a  runat='server' ID=" + dtSub2Menu.Rows[ssmrc]["PageId"].ToString());
                                                tableOutput.Append(" href=../"  + dtSub2Menu.Rows[ssmrc]["Url"].ToString());
                                                tableOutput.Append(" >" + dtSub2Menu.Rows[ssmrc]["PageName"].ToString());
                                                tableOutput.Append("</a></li>");
                                            }
                                            dtPermittedMenu = null;

                                        }//End of Inner For Loop
                                        tableOutput.Append("</ul></li>");
                                    }//End if Statement: Permission

                                }
                                tmpPrevSubMenuID = tmpSubMenuID;
                                tmpSubMenuID = 0;
                            }//End of For Loop
                            tableOutput.Append("</ul></li>");
                            dtSubMenu.Clear();

                        }//End if statement: Permission

                    }//End of Menu Head
                    tempHtmlTable.Text = tableOutput.ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private bool GetPermissionByMenuHead(int pMenuHead)
        {
            DataTable dtsubMenuHead = new DataTable();
            DataTable dtPermission = null;
            bool permittedItem = false;
            string HeadUrl = "";

            try
            {
                //dtsubMenuHead = GetDataTableHR_MenuPageWeb("HR_MenuPageWeb_GetAllByMenuHeadID", MenuHeadID);
                dtsubMenuHead = GetDataTableHR_MenuPageWeb("HR_MenuPageWeb_GetAllByMenuHeadID", pMenuHead);
                if (dtsubMenuHead.Rows.Count <= 0)
                {
                    dtsubMenuHead = null;
                    return permittedItem;
                }

                for (int smri = 0; smri < dtsubMenuHead.Rows.Count; smri++)
                {
                    HeadUrl = "";
                    HeadUrl = Convert.ToString(dtsubMenuHead.Rows[smri]["URL"]);

                    if (HeadUrl != "#")
                    {
                        dtPermission = new DataTable();
                        //Have to send parameter userID also
                        dtPermission = HR_MenuPermissionWeb_GetByPageId("HR_MenuPermissionWeb_GetByPageId", Convert.ToInt32(dtsubMenuHead.Rows[smri]["PageId"]));
                        if (dtPermission.Rows.Count > 0)
                        {
                            permittedItem = true;
                            break;
                        }
                    }
                    else
                    { //For '#'

                        //int ui = Convert.ToInt32(dtsubMenuHead.Rows[smri]["SubMenuHeadID"]);
                        //if (Convert.ToInt32(dtsubMenuHead.Rows[smri]["SubMenuHeadID"]) == 2078)
                        //{
                        //    ui = ui;
                        //}

                        permittedItem = GetPermissionBySubMenuHead(Convert.ToInt32(dtsubMenuHead.Rows[smri]["MenuHeadID"]),
                                               Convert.ToInt32(dtsubMenuHead.Rows[smri]["SubMenuHeadID"]), Convert.ToInt32(dtsubMenuHead.Rows[smri]["PageId"]));
                        if (permittedItem == true)
                        {
                            break;
                        }
                    }

                }

                return permittedItem;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private bool GetPermissionBySubMenuHead(int pMenuHeadID, int pSubMenuHeadID, int pPageId)
        {

            DataTable dtsubMenuHead = new DataTable();
            DataTable dtPermission = new DataTable();
            if (pSubMenuHeadID == 2078)
            {
                int si = 0;
            }
            bool permittedItem = false;
            try
            {
                //Search By SubMenu as Menu. Because It becomes menu now
                dtsubMenuHead = GetDataTableHR_MenuPageWeb("HR_MenuPageWeb_GetAllByMenuHeadID", pSubMenuHeadID);
                if (dtsubMenuHead.Rows.Count <= 0)
                {
                    //Check Permission By Root Page
                    dtPermission = HR_MenuPermissionWeb_GetByPageId("HR_MenuPermissionWeb_GetByPageId", pPageId);
                    if (dtPermission.Rows.Count > 0)
                    {
                        permittedItem = true;
                    }
                }
                else
                {
                    for (int smri = 0; smri < dtsubMenuHead.Rows.Count; smri++)
                    {
                        if (dtsubMenuHead.Rows[smri]["URL"] != "#")
                        {
                            //Search By PageId at the Permission Table
                            dtPermission = HR_MenuPermissionWeb_GetByPageId("HR_MenuPermissionWeb_GetByPageId", Convert.ToInt32(dtsubMenuHead.Rows[smri]["PageId"]));
                            if (dtPermission.Rows.Count > 0)
                            {
                                permittedItem = true;
                                break;
                            }
                        }//End of Loop
                    }//End For Loop
                }//End If
                return permittedItem;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable HR_MenuPermissionWeb_GetByPageId(string storeProcedure, int PageId)
        {

            DbProviderHelper.GetConnection();
            DataTable dTable = new DataTable();
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@PageId", DbType.Int32, PageId);
                DbDataAdapter dAdapter = DbProviderHelper.CreateDataAdapter(oDbCommand);
                dAdapter.Fill(dTable);
            }
            catch (Exception ex)
            {
                return dTable;
            }
            finally
            {
                dTable.Dispose();
            }
            return dTable;
        }

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public DataTable GetDataTableMenuHead(string storeProcedure)
        {

            //fdtime = (DateTime)Session["DfDate"];

            DbProviderHelper.GetConnection();
            DataTable dTable = new DataTable();
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                //AddParameter(oDbCommand, "@userID", DbType.String, userID);
                DbDataAdapter dAdapter = DbProviderHelper.CreateDataAdapter(oDbCommand);
                dAdapter.Fill(dTable);
            }
            catch (Exception ex)
            {
                return dTable;
            }
            finally
            {
                dTable.Dispose();
            }
            return dTable;
        }

        public DataTable GetDataTableHR_MenuPageWeb(string storeProcedure, int pMenuHeadID)
        {

            DbProviderHelper.GetConnection();
            DataTable dTable = new DataTable();
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@MenuHeadID", DbType.String, pMenuHeadID);
                DbDataAdapter dAdapter = DbProviderHelper.CreateDataAdapter(oDbCommand);
                dAdapter.Fill(dTable);
            }
            catch (Exception ex)
            {
                return dTable;
            }
            finally
            {
                dTable.Dispose();
            }
            return dTable;
        }

        public DataTable GetDataTableMenuSubMenuPermission(string storeProcedure, int pUserID, int pMenuHeadID, int pSubMenuHeadID)
        {
            DbProviderHelper.GetConnection();
            DataTable dTable = new DataTable();
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@UserID", DbType.Int32, pUserID);
                AddParameter(oDbCommand, "@MenuHeadID", DbType.Int32, pMenuHeadID);
                AddParameter(oDbCommand, "@SubMenuHeadID", DbType.Int32, pSubMenuHeadID);
                DbDataAdapter dAdapter = DbProviderHelper.CreateDataAdapter(oDbCommand);
                dAdapter.Fill(dTable);
            }
            catch (Exception ex)
            {
                return dTable;
            }
            finally
            {
                dTable.Dispose();
            }
            return dTable;
        }

        private void GetMenuData1()
        {

            DataTable table = new DataTable();
            DataSet ds1 = new DataSet();
            DataTable dtMenuHead = new DataTable();
            string webroot = "Eastern Uni/";
            int tmpSubMenuID = 0, tmpPrevSubMenuID = 0;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                dtMenuHead = GetDataTableMenuHead("HR_MenuHeadWeb_GetAll");
                StringBuilder tableOutput = new StringBuilder();

                for (int i = 0; i < dtMenuHead.Rows.Count; i++)
                {

                    tableOutput.Append("<li><a runat='server' href='#' ");
                    tableOutput.Append(">" + dtMenuHead.Rows[i]["HR_MenuHeadWebName"].ToString());
                    tableOutput.Append("</a>");
                    tempHtmlTable.Text = tableOutput.ToString();

                    userID = dtMenuHead.Rows[i]["UserID"].ToString();
                    MenuHeadID = Convert.ToInt32(dtMenuHead.Rows[i]["HR_MenuHeadWebID"].ToString());

                    //table = GetDataTableDetailForMenu("HR_MenuHeadWeb_DetailForMenu");

                    tableOutput.Append("<ul> ");

                    for (int j = 0; j < table.Rows.Count; j++)
                    {
                        tableOutput.Append("<li><a  runat='server' ID=" + table.Rows[j]["PageId"].ToString());
                        tableOutput.Append(" href=../../" + webroot + table.Rows[j]["Url"].ToString());
                        tableOutput.Append(" >" + table.Rows[j]["PageName"].ToString());
                        tableOutput.Append("</a></li>");
                        tmpPrevSubMenuID = tmpSubMenuID;
                        tmpSubMenuID = 0;
                    }

                    tableOutput.Append("</ul></li>");
                    tempHtmlTable.Text = tableOutput.ToString();
                    table.Clear();
                }
            }
        }
    }
}