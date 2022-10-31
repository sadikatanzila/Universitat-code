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
    public partial class FacultyDtl : System.Web.UI.Page
    {
        String FacultyID;
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";

        int pos_e;

        string n, d, sql;
           
        protected void Page_Load(object sender, EventArgs e)
        {
            FacultyID = Convert.ToString(Session["FacultyID"]);
            BindList(FacultyID);
        }

        private void BindList(String id)
        {
            DataTable dt = new DataTable();
            dt = Faculty_GetAll("FacultyMemberDtl", FacultyID);
            gvFacultyDtl.DataSource = dt;
            gvFacultyDtl.DataBind();
        }

        public DataTable Faculty_GetAll(string storeProcedure,string id)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@FacultyID", DbType.String, id);
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
    }
}