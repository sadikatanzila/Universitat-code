using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Windows.Forms;

namespace Eastern_Uni
{
    public partial class masterMega : System.Web.UI.MasterPage
    {
        private const int _blinkFrequency = 250;

        private const int _maxNumberOfBlinks = 1000;

        private int _blinkCount = 0;

        //   public master()
        //  {
        //  InitializeComponent();

        //   timer1.Interval = _blinkFrequency; //optional: set in design code
        //  lblBlink.Text = "Breaking News :";

        // timer1.Start();
        // }
        //     private void timer1_Tick(object sender, EventArgs e)
        // {

        //  this.lblBlink.Visible = !this.lblBlink.Visible;

        //  _blinkCount++;


        // if (_blinkCount == _maxNumberOfBlinks * 2)
        // {

        // timer1.Stop();

        // lblBlink.Visible = true;


        // }
        // }
        private string conStr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // conStr = ConfigurationManager.ConnectionStrings["Eastern_UniversityConnectionString"].ToString();
           
            middleNews_set();
        }



        protected void middleNews_set()
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 9 headline from BreakingNews order by serial_no desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            int j = 1;
            while (dtr.Read())
            {
                if (j == 1)
                { Label_6.Text = dtr[0].ToString(); }
                if (j == 2)
                { Label_7.Text = dtr[0].ToString(); }
                if (j == 3)
                { Label_9.Text = dtr[0].ToString(); }

                if (j == 4)
                { Label1.Text = dtr[0].ToString(); }
                if (j == 5)
                { Label2.Text = dtr[0].ToString(); }
                if (j == 6)
                { Label3.Text = dtr[0].ToString(); }

                if (j == 7)
                { Label4.Text = dtr[0].ToString(); }
                if (j == 8)
                { Label5.Text = dtr[0].ToString(); }
                if (j == 9)
                { Label6.Text = dtr[0].ToString(); }

                j++;
            }
            dtr.Close();
            conn.Close();
        }

      
    }
}