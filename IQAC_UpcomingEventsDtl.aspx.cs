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
    public partial class IQAC_UpcomingEventsDtl : System.Web.UI.Page
    {
        IQAC_UpcomingEventsDAL objIQAC_UpcomingEventsDAL = new IQAC_UpcomingEventsDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            BindList();
        }

        private void BindList()
        {
            IQAC_UpcomingEvents entity = new IQAC_UpcomingEvents();
            Int32 Clubs_EventsID = Convert.ToInt32(Session["Clubs_EventsID"]);
            //   entity = objIQAC_UpcomingEventsDAL.Get_StntInfoById(Clubs_EventsID);

            DataTable dt = new DataTable();
            dt = EventsDtl_GetAll("IQAC_UpcomingEventsInfo_GetById", Clubs_EventsID);
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
        }

        public DataTable EventsDtl_GetAll(string storeProcedure, int EventsID)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@EventsID", DbType.Int64, EventsID);
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

        protected void gvDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvDepartment_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}