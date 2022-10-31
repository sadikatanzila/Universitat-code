using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Eastern_Uni
{
    public partial class news3 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //conStr = ConfigurationManager.ConnectionStrings["conn_str"].ToString();
            setnews();
        }

        protected void setnews()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
           // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");

            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 headline,detail from (select top 3 serial_no,headline,detail from TopNews order by serial_no desc) as sub  order by serial_no ", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            while (dtr.Read())
            {
                Label1.Text = dtr[0].ToString();
                Label2.Text = dtr[1].ToString();

            }


            dtr.Close();
            conn.Close();

        }
    }
}