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
using System.Text.RegularExpressions;
using System.Data.Common;
using Eastern_Uni.DAL;
using EasternUni.BO;

namespace Eastern_Uni
{
    public partial class HR_Career : System.Web.UI.Page
    {
        int sl_num = 1;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Bind_CareerOpportunities();
            }
            else
            {

            }
           
        }

        //job circulation

        private void Bind_CareerOpportunities()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = ClubsEvents_GetAllbyDate("HR_JobPost_GetAllCurrent", Current_Time);
            gvCareer.DataSource = dt;
            gvCareer.DataBind();
        }

        public DataTable ClubsEvents_GetAllbyDate(string storeProcedure, DateTime Current_Time)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Current_Time", DbType.DateTime, Current_Time);
                DbDataAdapter adapter = DbProviderHelper.CreateDataAdapter(command);
                adapter.Fill(table);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                table.Dispose();
            }
            return table;
        }

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        protected void gvCareer_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = sl_num.ToString();
                sl_num++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#D1E0E0'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }

            foreach (TableCell tc in e.Row.Cells)
            {
                tc.BorderStyle = BorderStyle.None;
            }

        }



        protected void gvCareer_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["JobPost_ID"] = Convert.ToInt32(((Label)gvCareer.Rows[e.NewEditIndex].FindControl("lblJobPost_ID")).Text);
            Response.Redirect("HR_Careerdtl.aspx");
        }


        protected void gvCareer_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            sl_num = 1;
            gvCareer.PageIndex = e.NewPageIndex;
            Bind_CareerOpportunities();
        }

        //----------------------------------------------
    }
}