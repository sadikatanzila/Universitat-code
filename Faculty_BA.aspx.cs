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
    public partial class Faculty_BA : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";

        int pos_n;

        string n, d, sql, Serial_no;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_n = (int)this.ViewState["vs"];

            // result.Visible = false;
            BindListDesig();
        }

        private void BindListDesig()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("FacultyMembers_BA");
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
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

        protected void gvDepartment_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            DataTable dt = new DataTable();
            Int32 Id = Convert.ToInt32(gvDepartment.DataKeys[e.NewEditIndex].Value);

            // Session["PrevFacultyID"] = Id;

            Session["Serial_no"] = Id;
            Session["FacultyMemberReport"] = 1;

            gvDepartment.Visible = false;
            gvFacultyDtl.Visible = true;
            Serial_no = Convert.ToString(Session["Serial_no"]);
            BindList(Serial_no);

            //string webUrl = "Reports/ReportViewer.aspx";

            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "window.open('" + webUrl + "','_blank','width=1550,height=650,resizable=yes,scrollbars = yes');", true);

            // string webUrl = "../FacultyReport.aspx";
            // ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "window.open('" + webUrl + "','_blank','width=1550,height=650,resizable=yes,scrollbars = yes');", true);
        }
        private void BindList(String Serial_no)
        {
            DataTable dt = new DataTable();
            dt = Faculty_GetAll("FacultyMemberDtl", Serial_no);
            gvFacultyDtl.DataSource = dt;
            gvFacultyDtl.DataBind();
        }
        public DataTable Faculty_GetAll(string storeProcedure, string Serial_no)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Serial_no", DbType.String, Serial_no);
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

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }
        protected void gvDepartment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDepartment.PageIndex = e.NewPageIndex;
            BindListDesig();


        }
    }
}