using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eastern_Uni.DAL;
using EasternUni.BO;
using System.Text.RegularExpressions;

namespace Eastern_Uni
{
    public partial class EUBC_StudentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStudentList();
            }
        }


        private void BindStudentList()
        {

            DataTable dt = new DataTable();
            dt = LoadGrpInfo_GetAll();
            gvEUBCStudent.DataSource = dt;
            gvEUBCStudent.DataBind();
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public DataTable LoadGrpInfo_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBCGrpInfo_GetAll", CommandType.StoredProcedure);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtUser.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtUser;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtUser.Dispose();
                oDbDataReader.Dispose();
            }
        }

        public DataTable LoadStudentInfo_GetAll(string GroupTruckingExt)
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBCGrpStdInfo_GetAll", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, GroupTruckingExt);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtUser.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtUser;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtUser.Dispose();
                oDbDataReader.Dispose();
            }
        }


        int i = 1;
        protected void gvEUBCStudent_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = i.ToString();
                i++;
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#D3F2F8'");
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");

                Label Tracking = (Label)e.Row.FindControl("lblGroupTruckingExt");
                GridView gv = (GridView)e.Row.FindControl("gvEUBCStdList");

                string GrpTrackingNo = Tracking.Text;
                DataTable dt = new DataTable();
                dt = LoadStudentInfo_GetAll(GrpTrackingNo);
                gv.DataSource = dt;
                gv.DataBind();
                 

            }



        }

        protected void gvEUBCStudent_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEUBCStudent.PageIndex = e.NewPageIndex;
            BindStudentList();
        }

        protected void gvEUBCStudent_RowEditing(object sender, GridViewEditEventArgs e)
        {
           // Session["PhnNo"] = Convert.ToString(((Label)gvEUBCStudent.Rows[e.NewEditIndex].FindControl("lblCell")).Text);
           // Session["Sl"] = Convert.ToString(((Label)gvEUBCStudent.Rows[e.NewEditIndex].FindControl("lblSl")).Text);
           // Session["TrackingNo"] = Convert.ToString(((Label)gvEUBCStudent.Rows[e.NewEditIndex].FindControl("lblTracking")).Text);
       
        }
    }
}