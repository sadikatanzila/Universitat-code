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
    public partial class List_BBA : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_b;
        DataSet dset_b;
        PagedDataSource adsource_b;
        string connstring_b = "Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;";
        int pos_b;



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_b = (int)this.ViewState["vs"];
            databind1();


        }
        
        private void databind1()
        {
            string sqql = "select name,designation,phone,email,picturelocation,academicbackground,researchinterest , detailslink from Facultymembers where faculty = 'bba' order by priority, name";
            dadapter_b = new SqlDataAdapter(sqql, connstring_b);
            dset_b = new DataSet();
            adsource_b = new PagedDataSource();
            dadapter_b.Fill(dset_b);
            adsource_b.DataSource = dset_b.Tables[0].DefaultView;
            adsource_b.PageSize = 10;
            adsource_b.AllowPaging = true;
            adsource_b.CurrentPageIndex = pos_b;
            btnfirst.Enabled = !adsource_b.IsFirstPage;
            btnprevious.Enabled = !adsource_b.IsFirstPage;
            btnlast.Enabled = !adsource_b.IsLastPage;
            btnnext.Enabled = !adsource_b.IsLastPage;
            datalist_b.DataSource = adsource_b;
            datalist_b.DataBind();


        }

        protected void btnfirst_Click(object sender, EventArgs e)
        {
            pos_b = 0;
            this.ViewState["vs"] = 0;
            databind1();
        }

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            pos_b = (int)this.ViewState["vs"];
            pos_b -= 1;
            this.ViewState["vs"] = pos_b;
            databind1();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            pos_b = (int)this.ViewState["vs"];
            pos_b += 1;
            this.ViewState["vs"] = pos_b;
            databind1();
        }

        protected void btnlast_Click(object sender, EventArgs e)
        {

            pos_b = adsource_b.PageCount - 1; this.ViewState["vs"] = pos_b; databind1();
        }





    }
}