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

namespace Eastern_Uni
{
    public partial class IQAC_Office : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";

        int pos_n;

        string n, d, sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_n = (int)this.ViewState["vs"];

            BindListgvAQAC_Office();
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

        protected void gvAQAC_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAQAC.PageIndex = e.NewPageIndex;
            BindListgvAQAC_Office();
        }

        private void BindListgvAQAC_Office()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("GetAll_OfficialAQAC_Office");
            gvAQAC.DataSource = dt;
            gvAQAC.DataBind();
        }
    }
}