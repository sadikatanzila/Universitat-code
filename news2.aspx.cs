using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Eastern_Uni.DAL;
using System.Data.Common;

namespace Eastern_Uni
{
    public partial class news2 : System.Web.UI.Page
    {
        private string conStr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //conStr = ConfigurationManager.ConnectionStrings["conn_str"].ToString();
           // setnews();
            BindList();
        }
        private void BindList()
        {
            DataTable dt = new DataTable();
            dt = Faculty_GetAll("BreakingNews2");
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
        }

        public DataTable Faculty_GetAll(string storeProcedure)
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
        protected void setnews()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
           // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");

            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 headline,detail from (select top 2 serial_no,headline,detail from TopNews order by serial_no desc) as sub order by serial_no", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            while (dtr.Read())
            {
               // Label1.Text = dtr[0].ToString();
               // Label2.Text = dtr[1].ToString();

            }


            dtr.Close();
            conn.Close();

        }
    }
}