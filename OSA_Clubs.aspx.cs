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
    public partial class OSA_Clubs : System.Web.UI.Page
    {

        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        string sql; 
        int pos_e;
        string AESKey = "Key@AES1234";


        protected void Page_Load(object sender, EventArgs e)
        {
            BindList();

            sql = "select * from Clubs order by ClubsID";
            databind();
        }

        private void databind()
        {

            dadapter_e = new SqlDataAdapter(sql, connstring_e);
            dset_e = new DataSet();
            adsource_e = new PagedDataSource();
            dadapter_e.Fill(dset_e);
            adsource_e.DataSource = dset_e.Tables[0].DefaultView;
            adsource_e.PageSize = 30;
            adsource_e.AllowPaging = true;
            adsource_e.CurrentPageIndex = pos_e;

          //  datalist_e.DataSource = adsource_e;
          //  datalist_e.DataBind();


        }
        private void BindList()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("Clubs_GetAll");
            gvClubs.DataSource = dt;
            gvClubs.DataBind();

            gvCourses.DataSource = dt;
            gvCourses.DataBind();
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

        protected void gvClubs_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            int News_ID = Convert.ToInt32(((Label)gvCourses.Rows[e.NewEditIndex].FindControl("lblCourseID")).Text);
            string txtEncryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Encrypt(Convert.ToString(News_ID), AESKey);
            Response.Redirect(string.Format("OSA_ClubsDtl.aspx?token={0}", txtEncryptedString));
         //   Session["ClubsID"] = Convert.ToInt32(gvClubs.DataKeys[e.NewEditIndex].Value);
         //   Response.Redirect("OSA_ClubsDtl.aspx");
        }

        protected void gvClubs_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClubs.PageIndex = e.NewPageIndex;
            BindList();
        }

        protected void gvClubs_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
            e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#99CCFF'");
            //when mouse leaves the row, change the bg color to its original value   
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }

        protected void gvCourses_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvClubs.PageIndex = e.NewPageIndex;
            BindList();

        }
       
        protected void gvCourses_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int News_ID = Convert.ToInt32(((Label)gvCourses.Rows[e.NewEditIndex].FindControl("lblCourseID")).Text);
            string txtEncryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Encrypt(Convert.ToString(News_ID), AESKey);
            Response.Redirect(string.Format("OSA_ClubsDtl.aspx?token={0}", txtEncryptedString));


          //  Session["ClubsID"] = Convert.ToInt32(gvClubs.DataKeys[e.NewEditIndex].Value);
          //  Response.Redirect("OSA_ClubsDtl.aspx");
        }

        protected void gvCourses_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
           /// e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#99CCFF'");
            //when mouse leaves the row, change the bg color to its original value   
           /// e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
        }
    }
}