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
using System.Globalization;


namespace Eastern_Uni
{
    public partial class OSA_CalenderEvents : System.Web.UI.Page
    {
        Clubs_FutureEventsDAL objClubs_FutureEventsDAL = new Clubs_FutureEventsDAL();


        int k = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            BindList();
            gvClubsEvents.Visible = true;
           // btnView.Visible = true;
        }

        private void BindList()
        {

           // entity.FromDate = DateTime.ParseExact(txtfrmDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);




            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = ClubsEvents_GetAllbyDate("ClubsEvents_GetAllbyDate", Current_Time);
            gvClubsEvents.DataSource = dt;
            gvClubsEvents.DataBind();
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

        private void BindFutureEvents_byDate(DateTime fDate, DateTime tDate)
        {
            Int32 ClubsID = Convert.ToInt32(Session["ClubsID"]);
            List<Clubs_FutureEvents> AlumniList = objClubs_FutureEventsDAL.FutureEvents_byDate(fDate,tDate);
            gvClubsEvents.DataSource = AlumniList;
            gvClubsEvents.DataBind();

        }

        protected void gvClubsEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClubsEvents.PageIndex = e.NewPageIndex;
            BindFutureEvents_byDate(Convert.ToDateTime(Session["txtFDate"]), Convert.ToDateTime(Session["txtToDate"]));
        }

        protected void gvClubsEvents_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = k.ToString();
                k++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#99CCFF'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvClubsEvents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["Clubs_EventsID"] = Convert.ToInt32(((Label)gvClubsEvents.Rows[e.NewEditIndex].FindControl("lblEventsID")).Text);
            Response.Redirect("OSA_ClubsEventsDtl.aspx");
        }
/*
        protected void Submit_Click(object sender, EventArgs e)
        {
            Session["txtFDate"] = DateTime.ParseExact(txtfrmDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            Session["txtToDate"] = DateTime.ParseExact(txttoDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);

            BindFutureEvents_byDate(Convert.ToDateTime(Session["txtFDate"]), Convert.ToDateTime(Session["txtToDate"]));
            pnlSearch.Visible = true;
            Clear();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }

        private void Clear()
        {
            txtfrmDate.Text = "";
            txttoDate.Text = "";
        }
 */
    }
}