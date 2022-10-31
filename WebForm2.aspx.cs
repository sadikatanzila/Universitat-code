using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CrystalDecisions.CrystalReports.Engine;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Data.SqlClient;
using CrystalDecisions.Shared;

namespace Eastern_Uni
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("~/Report/EUBC_2016.rpt"));
            CrystalReportViewer1.ReportSource = cryRpt;
*/


            string test = "FacultyMembers_Arts";

            SqlConnection cnn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            cnn.Open();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("~/Report/Testing.rpt"));
            CrystalReportViewer1.ReportSource = cryRpt;

            /*
            SqlCommand testcmd = new SqlCommand(test, cnn);
            testcmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter testda = new SqlDataAdapter(testcmd);
            DataSet testds = new DataSet();
            testda.Fill(testds, "FacultyMembers");


            ReportDocument myReportDocument;
            myReportDocument = new ReportDocument();
            myReportDocument.Load(Server.MapPath("~/Report/EUBC_2016.rpt"));
            myReportDocument.SetDataSource(testds.Tables[0]);
            myReportDocument.SetDatabaseLogon("sa", "1086042g6");
            CrystalReportViewer1.ReportSource = myReportDocument;
            CrystalReportViewer1.DisplayToolbar = true;
             */
        }
             
    }
}