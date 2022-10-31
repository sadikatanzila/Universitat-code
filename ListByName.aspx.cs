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
    public partial class ListByName : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_n;
        DataSet dset_n;
        PagedDataSource adsource_n;
        string connstring_n = "Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;";
        int pos_n;



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_n = (int)this.ViewState["vs"];
            databind1();


        }

        private void databind1()
        {

            dadapter_n = new SqlDataAdapter("select name,designation,phone,email,picturelocation ,academicbackground,researchinterest, detailslink from Facultymembers order by name", connstring_n);
            dset_n = new DataSet();
            adsource_n = new PagedDataSource();
            dadapter_n.Fill(dset_n);
            adsource_n.DataSource = dset_n.Tables[0].DefaultView;
            adsource_n.PageSize = 15;
            adsource_n.AllowPaging = true;
            adsource_n.CurrentPageIndex = pos_n;
            btnfirst.Enabled = !adsource_n.IsFirstPage;
            btnprevious.Enabled = !adsource_n.IsFirstPage;
            btnlast.Enabled = !adsource_n.IsLastPage;
            btnnext.Enabled = !adsource_n.IsLastPage;
            datalist_n.DataSource = adsource_n;
            datalist_n.DataBind();


        }

        protected void btnfirst_Click(object sender, EventArgs e)
        {
            pos_n = 0;
            this.ViewState["vs"] = 0;
            databind1();
        }

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            pos_n = (int)this.ViewState["vs"];
            pos_n -= 1;
            this.ViewState["vs"] = pos_n;
            databind1();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            pos_n = (int)this.ViewState["vs"];
            pos_n += 1;
            this.ViewState["vs"] = pos_n;
            databind1();
        }

        protected void btnlast_Click(object sender, EventArgs e)
        {

            pos_n = adsource_n.PageCount - 1; this.ViewState["vs"] = pos_n; databind1();
        }
    }
}