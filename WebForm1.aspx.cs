using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Common;
using System.Globalization;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Data.Common;
using Eastern_Uni.DAL;
using EasternUni.BO;
using System.Drawing;


namespace Eastern_Uni
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setString();

            
        }


        protected void setString()
        {
            string current = DateTime.Now.ToString("dd/MM/yyyy");

            DateTime Current_Time = DateTime.ParseExact(current, "dd/MM/yyyy", CultureInfo.CurrentCulture);
            DataTable dt = new DataTable();

            databind(Current_Time);



            /* string[] filePaths = Directory.GetFiles(Server.MapPath("~/img/")); 
            List<ListItem> files = new List<ListItem>();

            foreach (string filePath in filePaths)
            {
                string fileName = Path.GetFileName(filePath);
                files.Add(new ListItem(fileName, "img/" + fileName));
            }
            Repeater1.DataSource = files;
            Repeater1.DataBind();
         
             *  foreach (DataRow dtRow in dt.Rows)
            {
                string fileName = Path.GetFileName(filePath);
            }*/


        }

        private void databind(DateTime Current_Time)
        {
            DataTable dt = new DataTable(); 
            dt = Info_GetAll("EUUpcomingEventSlider", Current_Time);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();


        }

        public DataTable Info_GetAll(string storeProcedure, DateTime Current_Time)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Current_Time", DbType.String, Current_Time);
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