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
    public partial class SelectedRegisteredEUMO : System.Web.UI.Page
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

                DateTime t1 = DateTime.Now;
                DateTime submissionDate = new DateTime(2015, 12, 11, 0, 0, 0);

                pnlGrid.Visible = true;
                pnlAdmitcard.Visible = false;

                if (t1 > submissionDate)
                {
                    BindSearchingList();
                    sql = "select COUNT(MathOlympiad.Sl) as Total_Student from MathOlympiad where deleted != 1 or deleted is null";
                    databind();
                }
                else
                {
                    lblMessage.Text = "Selected Student List will be published from Saturday, 12th December, 2015 ";
                }
            }
            else
            {

            }
        }

        private void BindSearchingList()
        {

            DataTable dt = new DataTable();


            dt = objMathOlympiadDAL.LoadMathOlympiad_GetAll();

            gvEUMOStd.DataSource = dt;
            gvEUMOStd.DataBind();
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

        protected void gvEUMOStd_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEUMOStd.PageIndex = e.NewPageIndex;
            BindSearchingList();
        }

        protected void gvEUMOStd_RowEditing(object sender, GridViewEditEventArgs e)
        {
          
            
            Session["PhnNo"] = Convert.ToString(((Label)gvEUMOStd.Rows[e.NewEditIndex].FindControl("lblCell")).Text);
            Session["Sl"] = Convert.ToString(((Label)gvEUMOStd.Rows[e.NewEditIndex].FindControl("lblSl")).Text);
            Session["TrackingNo"] = Convert.ToString(((Label)gvEUMOStd.Rows[e.NewEditIndex].FindControl("lblTracking")).Text);
       
          //  string webUrl = "Info.aspx";
          //  ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "window.open('" + webUrl + "','_blank','width=550,height=450,top=200,left=250,resizable=yes,scrollbars = yes');", true);

            pnlGrid.Visible = false;
            pnlAdmitcard.Visible = true;
        }


        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["TrackingNo"] = Convert.ToString(((Label)gvEUMOStd.Rows[e.NewEditIndex].FindControl("lblTracking")).Text);
            Response.Redirect("EUMO_AdmitCard.aspx");
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtMobileNo.Text == Convert.ToString(Session["PhnNo"]))
            {
                string TrackingNo = Convert.ToString(Session["TrackingNo"]);
                Response.Redirect("EUMO_AdmitCard.aspx");

            }
            else
            {
                lblMessage.Text = "Wrong Entry, Insert exact phone number to have your Admit Card";
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            txtMobileNo.Text = "";
            lblMessage.Text = "";
            pnlGrid.Visible = true;
            pnlAdmitcard.Visible = false;
        }
    }
}