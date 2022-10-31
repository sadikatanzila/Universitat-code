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
using System.Collections.Generic;

namespace Eastern_Uni
{
    public partial class HomeUpdate : System.Web.UI.Page
    {
        int sl_num = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            new_Noticeset();
            BindImageRepeater();
            Bind_UpcomingEvents();

            //top news
            topNews_set();
            middleNews_set();
        }


        //upcoming events
        private void Bind_UpcomingEvents()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = ClubsEvents_GetAllbyDate("UpcomingEvents_GetAllbyDate", Current_Time);
            gvClubsEvents.DataSource = dt;
            gvClubsEvents.DataBind();
        }
        protected void gvClubsEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            sl_num = 1;
            gvClubsEvents.PageIndex = e.NewPageIndex;
            gvClubsEvents1.PageIndex = e.NewPageIndex;
            Bind_UpcomingEvents();
        }

        protected void gvClubsEvents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            int Clubs_EventsID = Convert.ToInt32(((Label)gvClubsEvents.Rows[e.NewEditIndex].FindControl("lblEventsID")).Text);
            string txtEncryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Encrypt(Convert.ToString(Clubs_EventsID), AESKey);
            Response.Redirect(string.Format("EU_UpcomingEventsDtl.aspx?token={0}", txtEncryptedString));

            //  Session["Clubs_EventsID"] = Convert.ToInt32(((Label)gvClubsEvents.Rows[e.NewEditIndex].FindControl("lblEventsID")).Text);
            //   Response.Redirect("EU_UpcomingEventsDtl.aspx");
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




        private void BindImageRepeater()
        {

            string current = DateTime.Now.ToString("dd/MM/yyyy");
            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();
            dt = ClubsEvents_GetAllbyDate("LatestNews_GetAllbyDate", Current_Time);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();



            /* string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
             using (SqlConnection con = new SqlConnection(CS))
             {
                 SqlCommand cmd = new SqlCommand("spGetSliderImages", con);
                 cmd.CommandType = CommandType.StoredProcedure;
                 con.Open();
                 SqlDataAdapter sda = new SqlDataAdapter(cmd);
                 DataSet dt = new DataSet();
                 sda.Fill(dt);
                 Repeater1.DataSource = dt;
                 Repeater1.DataBind();
             }*/
        }


        protected string GetActiveClass(int ItemIndex)
        {
            if (ItemIndex == 0)
            {
                return "active";
            }
            else
            {
                return "";
            }
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
        string AESKey = "Key@AES1234";
        /*   protected void grd_NewsEvents_RowEditing(object sender, GridViewEditEventArgs e)
           {
               int News_ID = Convert.ToInt32(((Label)grd_NewsEvents.Rows[e.NewEditIndex].FindControl("lblNewsID")).Text);

               // Session["News_ID"] = Convert.ToInt32(((Label)grd_NewsEvents.Rows[e.NewEditIndex].FindControl("lblNewsID")).Text);

               string txtEncryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Encrypt(Convert.ToString(News_ID), AESKey);

               Response.Redirect(string.Format("EU_NewsDtl.aspx?token={0}", txtEncryptedString));


               //  Response.Redirect("EU_NewsDtl.aspx");
           }*/

        protected void grdNotice_RowEditing(object sender, GridViewEditEventArgs e)
        {

            int Notice_ID = Convert.ToInt32(((Label)grdNotice.Rows[e.NewEditIndex].FindControl("lblNoticeID")).Text);
            string txtEncryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Encrypt(Convert.ToString(Notice_ID), AESKey);
            Response.Redirect(string.Format("EU_NoticeDtl.aspx?token={0}", txtEncryptedString));

            // Session["Notice_ID"] = Convert.ToInt32(((Label)grdNotice.Rows[e.NewEditIndex].FindControl("lblNoticeID")).Text);
            // Response.Redirect("EU_NoticeDtl.aspx");
        }

        protected void grdNoticeOthers_RowEditing(object sender, GridViewEditEventArgs e)
        {

            int Notice_ID = Convert.ToInt32(((Label)grdNoticeOthers.Rows[e.NewEditIndex].FindControl("lblNoticeID_Othrs")).Text);
            string txtEncryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Encrypt(Convert.ToString(Notice_ID), AESKey);
            Response.Redirect(string.Format("EU_NoticeDtl.aspx?token={0}", txtEncryptedString));


            // Session["Notice_ID"] = Convert.ToInt32(((Label)grdNoticeOthers.Rows[e.NewEditIndex].FindControl("lblNoticeID_Othrs")).Text);
            //  Response.Redirect("EU_NoticeDtl.aspx");
        }

        //top new functions
        protected void topNews_set()
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6"); ;
            // SqlConnection conn = new SqlConnection(conStr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 10 headline from TopNews order by serial_no desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            int i = 1;
            while (dtr.Read())
            {
                if (i == 1)
                {
                    lbltop1.Text = dtr[0].ToString();
                }
                else if (i == 2)
                {
                    lbltop2.Text = dtr[0].ToString();
                }

                else if (i == 3)
                {
                    lbltop3.Text = dtr[0].ToString();
                }

                else if (i == 4)
                {
                    lbltop4.Text = dtr[0].ToString();
                }

                else
                    if (i == 5)
                    {
                        lbltop5.Text = dtr[0].ToString();
                    }
                if (i == 6)
                {
                    lbltop6.Text = dtr[0].ToString();
                }
                else if (i == 7)
                {
                    lbltop7.Text = dtr[0].ToString();
                }

                else if (i == 8)
                {
                    lbltop8.Text = dtr[0].ToString();
                }

                else if (i == 9)
                {
                    lbltop9.Text = dtr[0].ToString();
                }

                else if (i == 10)
                {
                    lbltop10.Text = dtr[0].ToString();
                }

                i++;


            }
            dtr.Close();
            conn.Close();

        }

        protected void middleNews_set()
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 9 headline from BreakingNews order by serial_no desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            int j = 1;
            while (dtr.Read())
            {
                if (j == 1)
                { Label_6.Text = dtr[0].ToString(); }
                if (j == 2)
                { Label_7.Text = dtr[0].ToString(); }
                if (j == 3)
                { Label_9.Text = dtr[0].ToString(); }

                if (j == 4)
                { Label1.Text = dtr[0].ToString(); }
                if (j == 5)
                { Label2.Text = dtr[0].ToString(); }
                if (j == 6)
                { Label3.Text = dtr[0].ToString(); }

                if (j == 7)
                { Label4.Text = dtr[0].ToString(); }
                if (j == 8)
                { Label5.Text = dtr[0].ToString(); }
                if (j == 9)
                { Label6.Text = dtr[0].ToString(); }

                j++;
            }
            dtr.Close();
            conn.Close();
        }

    }
}