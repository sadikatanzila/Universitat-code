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
    public partial class RegisteredGPA : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        int pos_e;


        string sql;

        GPA_RegistrationDAL objGPA_RegistrationDAL = new GPA_RegistrationDAL();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                BindSearchingList();
                sql = "select COUNT(GPA_Registration.Sl) as Total_Student from GPA_Registration where HSC_Year='Year - 2017' ";
                databind();
                pnlGrid.Visible = true;
                pnlAdmitcard.Visible = false;
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


            dt = objGPA_RegistrationDAL.LoadGPA_Registration_GetAllNew(); //for 2017 students

            gvGPA_Reg.DataSource = dt;
            gvGPA_Reg.DataBind();
        }
          int i = 1;
        protected void gvGPA_Reg_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void gvGPA_Reg_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["PhnNo"] = Convert.ToString(((Label)gvGPA_Reg.Rows[e.NewEditIndex].FindControl("lblCell")).Text);
            Session["Sl"] = Convert.ToString(((Label)gvGPA_Reg.Rows[e.NewEditIndex].FindControl("lblSl")).Text);
            Session["TrackingNo"] = Convert.ToString(((Label)gvGPA_Reg.Rows[e.NewEditIndex].FindControl("lblTracking")).Text);
          

           pnlGrid.Visible = false;
           pnlAdmitcard.Visible = true;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            txtMobileNo.Text = "";
            lblMessage.Text = "";
            pnlGrid.Visible = true;
            pnlAdmitcard.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            if (txtMobileNo.Text == Convert.ToString(Session["PhnNo"]))
            {
                string TrackingNo = Convert.ToString(Session["TrackingNo"]);
                Response.Redirect("GPA_AdmitCard.aspx");

            }
            else
            {
                lblMessage.Text = "Wrong Entry, Insert exact phone number to have your Admit Card";
            }
        }
    }
}