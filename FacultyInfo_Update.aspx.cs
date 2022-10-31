using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Configuration;

namespace Eastern_Uni.Admins
{
    public partial class FacultyInfo_Update : System.Web.UI.Page
    {
        string interest_t, publications_t,teachingExp_t,adminsPosition_t;
        string serial;
       

        protected void Page_Load(object sender, EventArgs e)
        {

            interest_t = replace_(txtResearchInterest.Text);
            publications_t = replace_(txtPublications.Text);
            teachingExp_t = replace_(txteachingExpr.Text);
            adminsPosition_t = replace_(txtAdminsPos.Text);
            serial = SerialNo.Text;
        }

        protected string replace_(string st)
        {

         //   Regex rx = new Regex(" ");
          //  string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(st, "<br/>");
            return s2;


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SetNewRow();

        }

        protected void SetNewRow()
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("update Facultymembers set  ResearchInterest='" + interest_t + "',Publications='" + publications_t + "', TeachingExp='" + teachingExp_t + "',AdminsPos='" + adminsPosition_t + "' where Serial_no='" + serial + "'  ", conn);
            cmd.ExecuteNonQuery();

            conn.Close();


            txtResearchInterest.Text = "";
            txteachingExpr.Text = "";
            txteachingExpr.Text = "";
            txtAdminsPos.Text = "";
            SerialNo.Text="";


            notification.Text = "Sucessfully updated";



        }
    }
}