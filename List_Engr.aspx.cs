using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Eastern_Uni
{
    public partial class List_Engr : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;";
        int pos_e;



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_e = (int)this.ViewState["vs"];
            databind1();


        }

        private void databind1()
        {

            dadapter_e = new SqlDataAdapter("select name,designation,phone,email,picturelocation ,academicbackground,researchinterest, detailslink from Facultymembers where faculty = 'engineering' order by priority, name", connstring_e);
            dset_e = new DataSet();
            adsource_e = new PagedDataSource();
            dadapter_e.Fill(dset_e);
            adsource_e.DataSource = dset_e.Tables[0].DefaultView;
            adsource_e.PageSize = 10;
            adsource_e.AllowPaging = true;
            adsource_e.CurrentPageIndex = pos_e;
            btnfirst.Enabled = !adsource_e.IsFirstPage;
            btnprevious.Enabled = !adsource_e.IsFirstPage;
            btnlast.Enabled = !adsource_e.IsLastPage;
            btnnext.Enabled = !adsource_e.IsLastPage;
            datalist_e.DataSource = adsource_e;
            datalist_e.DataBind();


        }

        protected void btnfirst_Click(object sender, EventArgs e)
        {
            pos_e = 0;
            this.ViewState["vs"] = 0;
            databind1();
        }

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            pos_e = (int)this.ViewState["vs"];
            pos_e -= 1;
            this.ViewState["vs"] = pos_e;
            databind1();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            pos_e = (int)this.ViewState["vs"];
            pos_e += 1;
            this.ViewState["vs"] = pos_e;
            databind1();
        }

        protected void btnlast_Click(object sender, EventArgs e)
        {

            pos_e = adsource_e.PageCount - 1; this.ViewState["vs"] = pos_e; databind1();
        }





    }
}