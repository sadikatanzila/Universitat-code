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
using System.Drawing;

namespace Eastern_Uni
{
    public partial class HomeEU_prev : System.Web.UI.Page
    {
        int sl_num = 1;
        string[] sl = new string[20];
        string[] st = new string[10];


        string[] m_sl = new string[20];
        string[] m_st = new string[10];


        private string conStr = "";// ConfigurationManager.ConnectionStrings["conn_str"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            //conStr = ConfigurationManager.ConnectionStrings["conn_str"].ToString();
            news_set();
            new_Noticeset();
            Bind_UpcomingEvents();
            BindAlbumList();
            /* int a = 100;
               int b = 200;
               int c = a + b;
               Label1.Text = Convert.ToString(c);
             */


        }




        // Album image
        private void BindAlbumList()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("GettopPhotoAlbum");
            PhotoAlbumList.DataSource = dt;
            PhotoAlbumList.DataBind();
        }

        public DataTable Department_GetAllbyDesg(string storeProcedure)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
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

        protected void btnAlbum_Click(object sender, EventArgs e)
        {

            LinkButton myButton = sender as LinkButton;
            if (myButton != null)
            {
                string buttonText = myButton.Text;
                //  Int32 EventsID = Convert.ToInt32(PhotoAlbumList.DataKeys[e.Item.ItemIndex].Value);
            }

        }

        protected void PhotoAlbumList_ItemCommand(object source, DataListCommandEventArgs e)
        {

            int age = Convert.ToInt32(PhotoAlbumList.DataKeys[e.Item.ItemIndex]);
            Session["AlbumID"] = age;
            Response.Redirect("Photo_Gallery.aspx");
        }



        //news events
        public DataTable News_GetAll(string storeProcedure, int serial_no)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@serial_no", DbType.String, serial_no);
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


        private void news_set()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");
            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = ClubsEvents_GetAllbyDate("LatestNews_GetAllbyDate", Current_Time);
            grd_NewsEvents.DataSource = dt;
            grd_NewsEvents.DataBind();
        }

        protected void grd_NewsEvents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["News_ID"] = Convert.ToInt32(((Label)grd_NewsEvents.Rows[e.NewEditIndex].FindControl("lblNewsID")).Text);
            Response.Redirect("EU_NewsDtl.aspx");
        }

        //notice 

        int count = 0;
        private void new_Noticeset()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");
            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);

            DataSet ds = new DataSet();

            ds.Merge(ClubsEvents_GetAllbyDate("LatestNotice_GetAllbyDate", Current_Time));

            count = Convert.ToInt32(ds.Tables[0].Rows.Count.ToString());


            if (count >= 5)
            {
                Bind_Notices();
                grdNoticeOthers.Visible = false;
            }
            else
            {
                int count_others = 0;
                count_others = 5 - count;
                Bind_Notices();
                grdNoticeOthers.Visible = true;
                Bind_NoticeOthers(count_others);
            }
        }

        private void Bind_NoticeOthers(int count_others)
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = Notice_GetAllbyDate("LatestNoticeOthers_GetAllbyDate", Current_Time, count_others);

            grdNoticeOthers.DataSource = dt;
            grdNoticeOthers.DataBind();
        }

        private void Bind_Notices()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = ClubsEvents_GetAllbyDate("LatestNotice_GetAllbyDate", Current_Time);
            grdNotice.DataSource = dt;
            grdNotice.DataBind();
        }


        public DataTable Notice_GetAllbyDate(string storeProcedure, DateTime Current_Time, int count_others)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Current_Time", DbType.DateTime, Current_Time);
                AddParameter(command, "@count_others", DbType.Int32, count_others);
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


        protected void grdNotice_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["Notice_ID"] = Convert.ToInt32(((Label)grdNotice.Rows[e.NewEditIndex].FindControl("lblNoticeID")).Text);
            Response.Redirect("EU_NoticeDtl.aspx");
        }

        protected void grdNoticeOthers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["Notice_ID"] = Convert.ToInt32(((Label)grdNoticeOthers.Rows[e.NewEditIndex].FindControl("lblNoticeID_Othrs")).Text);
            Response.Redirect("EU_NoticeDtl.aspx");
        }
        //upcoming Events

        private void Bind_UpcomingEvents()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = ClubsEvents_GetAllbyDate("UpcomingEvents_GetAllbyDate", Current_Time);
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


        protected void gvClubsEvents_RowDataBound(object sender, GridViewRowEventArgs e)
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



        protected void gvClubsEvents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["Clubs_EventsID"] = Convert.ToInt32(((Label)gvClubsEvents.Rows[e.NewEditIndex].FindControl("lblEventsID")).Text);
            Response.Redirect("EU_UpcomingEventsDtl.aspx");
        }


        protected void gvClubsEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            sl_num = 1;
            gvClubsEvents.PageIndex = e.NewPageIndex;
            Bind_UpcomingEvents();
        }

        //----------------------------------------------


    }
}