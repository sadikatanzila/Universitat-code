using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Eastern_Uni
{
    public partial class List_Arts : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_a;
        DataSet dset_a;
        PagedDataSource adsource_a;
        string connstring_a = "Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;";
        int pos_a;



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_a = (int)this.ViewState["vs"];
            databind1();


        }

        private void databind1()
        {

            dadapter_a = new SqlDataAdapter("select name,designation,phone,email,picturelocation,academicbackground,researchinterest , detailslink from Facultymembers where faculty = 'arts'  order by priority, name", connstring_a);
            dset_a = new DataSet();
            adsource_a = new PagedDataSource();
            dadapter_a.Fill(dset_a);
            adsource_a.DataSource = dset_a.Tables[0].DefaultView;
            adsource_a.PageSize = 10;
            adsource_a.AllowPaging = true;
            adsource_a.CurrentPageIndex = pos_a;
            btnfirst.Enabled = !adsource_a.IsFirstPage;
            btnprevious.Enabled = !adsource_a.IsFirstPage;
            btnlast.Enabled = !adsource_a.IsLastPage;
            btnnext.Enabled = !adsource_a.IsLastPage;
            datalist_a.DataSource = adsource_a;
            datalist_a.DataBind();


        }

        protected void btnfirst_Click(object sender, EventArgs e)
        {
            pos_a = 0;
            this.ViewState["vs"] = 0;
            databind1();
        }

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            pos_a = (int)this.ViewState["vs"];
            pos_a -= 1;
            this.ViewState["vs"] = pos_a;
            databind1();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            pos_a = (int)this.ViewState["vs"];
            pos_a += 1;
            this.ViewState["vs"] = pos_a;
            databind1();
        }

        protected void btnlast_Click(object sender, EventArgs e)
        {

            pos_a = adsource_a.PageCount - 1; this.ViewState["vs"] = pos_a; databind1();
        }
    }
}