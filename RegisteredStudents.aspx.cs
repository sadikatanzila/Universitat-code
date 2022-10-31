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
    public partial class RegisteredStudents : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        int pos_e;

       
        string sql;

        MathOlympiadDAL objMathOlympiadDAL = new MathOlympiadDAL();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["UserID_Admission"] != null && Session["Password_Admission"] != null)
                {

                    BindSearchingList();
                    sql = "select COUNT(MathOlympiad.Sl) as Total_Student from MathOlympiad where deleted != 1 or deleted is null";
                    databind();
                   /* BindSearchingList();
                    SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("select COUNT(MathOlympiad.Sl) as Total_Student from MathOlympiad", conn);
                    SqlDataReader dtr = cmd.ExecuteReader();
                    databind();
                    dtr.Close();
                    conn.Close();
                    * */
                }


              
            }
            else
            {

            }
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

            dtlist.DataSource = adsource_e;
            dtlist.DataBind();


        }

        private void BindSearchingList()
        {
           
            DataTable dt = new DataTable();


            dt = objMathOlympiadDAL.LoadMathOlympiad_GetAll();
                
            gvEUMOStd.DataSource = dt;
            gvEUMOStd.DataBind();
        }


        int i = 1;
        protected void gvEUMOStd_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = i.ToString();
                i++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#EEFFAA'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvEUMOStd_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEUMOStd.PageIndex = e.NewPageIndex;
            BindSearchingList();

        }

     
       

        protected void gvEUMO_Search_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEUMOStd.PageIndex = e.NewPageIndex;
            BindSearchingList();
        }
        int j = 1;
        protected void gvEUMO_Search_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = j.ToString();
                j++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#EEFFAA'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvEUMOStd_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["TrackingNo"] = Convert.ToString(((Label)gvEUMOStd.Rows[e.NewEditIndex].FindControl("lblTracking")).Text);
            Response.Redirect("EUMO_AdmitCard.aspx");
        }
    }
}