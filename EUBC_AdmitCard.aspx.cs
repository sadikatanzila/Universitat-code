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
    public partial class EUBC_AdmitCard : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        int pos_e;
        
        

        EUBC_GroupDAL objEUBC_GroupDAL = new EUBC_GroupDAL();
        string sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["GrpTrackingNo"]) == null || Convert.ToString(Session["GrpTrackingNo"]) == "")
            {
            
                Response.Redirect("RegEUBC.aspx");

            }
            else
            {
                GetSelectedData();
            }
        }

        private void GetSelectedData()
        {
            EUBC_Group entity = new EUBC_Group();
            // string SerialID = Convert.ToString(Session["Sl"]);
            string GrpTrackingNo = Convert.ToString(Session["GrpTrackingNo"]);

            entity = objEUBC_GroupDAL.GetInfo_GrpTrackingNo(GrpTrackingNo);

            lblSl.Text = Convert.ToString(Session["GrpTrackingNo"]);
            lblInstitution.Text = entity.Institution;
            lblBoard.Text = entity.Board;
            lblSSC_OLevel.Text = entity.SSC_Olevel;
            lbltotal.Text = entity.TotalStudent;
            lblAddress.Text = entity.Address;
            
           

            databind();
            GrpTrackingNo = null;
            // txtdtl.Text = replaceOposite(entity.Course_Detail);
        }

        private void databind()
        {
            DataTable dt = new DataTable();
            string GrpTrackingNo = Convert.ToString(Session["GrpTrackingNo"]);
            dt = Info_GetAll("EUBCStdinfo_GetByGrpTrackingNo", GrpTrackingNo);

            StdDatalist.DataSource = dt;
            StdDatalist.DataBind();


        }

        public DataTable Info_GetAll(string storeProcedure, string GrpTrackingNo)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@GrpTrackingNo", DbType.String, GrpTrackingNo);
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