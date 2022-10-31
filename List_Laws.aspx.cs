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
    public partial class List_Laws : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_l;
        DataSet dset_l;
        PagedDataSource adsource_l;
        string connstring_l = "Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;";
        int pos_l;



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_l = (int)this.ViewState["vs"];
            databind1();


        }

        private void databind1()
        {

            dadapter_l = new SqlDataAdapter("select name,designation,phone,email,picturelocation ,academicbackground,researchinterest, detailslink from Facultymembers where faculty='Laws' order by priority ,name", connstring_l);
            dset_l = new DataSet();
            adsource_l = new PagedDataSource();
            dadapter_l.Fill(dset_l);
            adsource_l.DataSource = dset_l.Tables[0].DefaultView;
            adsource_l.PageSize = 10;
            adsource_l.AllowPaging = true;
            adsource_l.CurrentPageIndex = pos_l;
            btnfirst.Enabled = !adsource_l.IsFirstPage;
            btnprevious.Enabled = !adsource_l.IsFirstPage;
            btnlast.Enabled = !adsource_l.IsLastPage;
            btnnext.Enabled = !adsource_l.IsLastPage;
            datalist_l.DataSource = adsource_l;
            datalist_l.DataBind();


        }

        protected void btnfirst_Click(object sender, EventArgs e)
        {
            pos_l = 0;
            this.ViewState["vs"] = 0;
            databind1();
        }

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            pos_l = (int)this.ViewState["vs"];
            pos_l -= 1;
            this.ViewState["vs"] = pos_l;
            databind1();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            pos_l = (int)this.ViewState["vs"];
            pos_l += 1;
            this.ViewState["vs"] = pos_l;
            databind1();
        }

        protected void btnlast_Click(object sender, EventArgs e)
        {

            pos_l = adsource_l.PageCount - 1; this.ViewState["vs"] = pos_l; databind1();
        }
    }
}