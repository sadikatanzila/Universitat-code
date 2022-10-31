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
    public partial class newHome_EU : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            new_Noticeset();
            BindImageRepeater();
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

    }
}