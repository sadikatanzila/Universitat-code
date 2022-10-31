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
    public partial class EUMO_AdmitCard : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        int pos_e;

        MathOlympiadDAL objMathOlympiadDAL = new MathOlympiadDAL();
        string  sql;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["TrackingNo"]) == null || Convert.ToString(Session["TrackingNo"]) == "")
            {
                Response.Redirect("RegistrationEUMO.aspx");
                
            }
            else
            {
                GetSelectedData();
            }
        }

        private void GetSelectedData()
        {
            MathOlympiad entity = new MathOlympiad();
           // string SerialID = Convert.ToString(Session["Sl"]);
            string TrackingNo = Convert.ToString(Session["TrackingNo"]);

            entity = objMathOlympiadDAL.GetInfo_TrackingNo(TrackingNo);

            lblSl.Text = Convert.ToString(Session["TrackingNo"]);

            lblName.Text = Convert.ToString(entity.Name);

            lblBoard.Text = entity.Board;
            lblYear.Text = entity.Year;

            lblInstitution.Text = entity.Institution;


            lblRoll.Text = entity.Roll;
            lblRegiNo.Text = entity.Registration;
            lblID.Text = entity.Roll;
            
            databind();
            TrackingNo = null;
            // txtdtl.Text = replaceOposite(entity.Course_Detail);
        }

        private void databind()
        {
            DataTable dt = new DataTable();
            string TrackingNo = Convert.ToString(Session["TrackingNo"]);
            dt = Info_GetAll("MOStdinfo_GetByTrackingNo", TrackingNo);

            dtlist.DataSource = dt;
            dtlist.DataBind();


        }

        public DataTable Info_GetAll(string storeProcedure, string TrackingNo)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@TrackingNo", DbType.String, TrackingNo);
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