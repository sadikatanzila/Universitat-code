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
using System.Configuration;

namespace Eastern_Uni
{
    public partial class Photo_MathOlym : System.Web.UI.Page
    {
        string[] sl = new string[100];
        string[] st = new string[100];
        string s_n;


        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                lblAlbum_Name.Text = lblAlbum7.Text;
                GetLatestSerial_no();
                int i = Convert.ToInt32(s_n);
                setString(i);
                setSliderImage();

            }





        }

        protected void GetLatestSerial_no()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");

            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 AlbumID from YouthConvocation where YouthConvocation.AlbumID=12 order by PhotoID", conn);

            SqlDataReader dtr = cmd.ExecuteReader();
            while (dtr.Read())
            {
                s_n = (string)(dtr[0].ToString());
            }
            dtr.Close();
            conn.Close();


        }
        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }



        protected void setString(int AlbumID)
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");

            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 14 Location ,title from YouthConvocation where AlbumID = '" + AlbumID + "'  order by PhotoID ", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            int i = 1;
            int j = 10;

            while (dtr.Read())
            {
                for (int k = 1; k <= j; k++)
                {
                    if (i == k)
                    {
                        sl[i - 1] = dtr[0].ToString();
                        st[i - 1] = dtr[1].ToString();

                    }

                }
                i++;
            }

            dtr.Close();
            conn.Close();

        }



        protected void setSliderImage()
        {
            ss_1.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[0]);
            ss_1.Attributes["title"] = st[0];

            ss_2.Attributes["src"] = ResolveUrl("/image/Photo_MathOlym/" + sl[1]);
            ss_2.Attributes["title"] = st[1];

            ss_3.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[2]);
            ss_3.Attributes["title"] = st[2];

            ss_4.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[3]);
            ss_4.Attributes["title"] = st[3];

            ss_5.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[4]);
            ss_5.Attributes["title"] = st[4];

            ss_6.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[5]);
            ss_6.Attributes["title"] = st[5];


            ss_7.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[6]);
            ss_7.Attributes["title"] = st[6];

            ss_8.Attributes["src"] = ResolveUrl("/image/Photo_MathOlym/" + sl[7]);
            ss_8.Attributes["title"] = st[7];

            ss_9.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[8]);
            ss_9.Attributes["title"] = st[8];

            ss_10.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[9]);
            ss_10.Attributes["title"] = st[9];

          //  ss_11.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[10]);
           // ss_11.Attributes["title"] = st[10];

           // ss_12.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[11]);
           // ss_12.Attributes["title"] = st[11];

           // ss_13.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[12]);
           // ss_13.Attributes["title"] = st[12];

          //  ss_14.Attributes["src"] = ResolveUrl("~/image/Photo_MathOlym/" + sl[13]);
           // ss_14.Attributes["title"] = st[13];


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum1.Text;
            int i = 6;
            setString(i);
            setSliderImage();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum2.Text;
            int i = 7;
            setString(i);
            setSliderImage();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum3.Text;
            int i = 8;
            setString(i);
            setSliderImage();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum4.Text;
            int i = 9;
            setString(i);
            setSliderImage();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum5.Text;
            int i = 10;
            setString(i);
            setSliderImage();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum6.Text;
            int i = 11;
            setString(i);
            setSliderImage();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum7.Text;
            int i = 12;
            setString(i);
            setSliderImage();
        }


        
        protected void lblAlbum1_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum1.Text;
            int i = 6;
            setString(i);
            setSliderImage();
        }

        protected void lblAlbum2_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum2.Text;
            int i = 7;
            setString(i);
            setSliderImage();
        }

        protected void lblAlbum3_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum3.Text;
            int i = 8;
            setString(i);
            setSliderImage();
        }

        protected void lblAlbum4_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum4.Text;
            int i = 9;
            setString(i);
            setSliderImage();
        }

        protected void lblAlbum5_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum5.Text;
            int i = 10;
            setString(i);
            setSliderImage();
        }

        protected void lblAlbum6_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum6.Text;
            int i = 11;
            setString(i);
            setSliderImage();
        }

        protected void lblAlbum7_Click(object sender, EventArgs e)
        {
            lblAlbum_Name.Text = lblAlbum7.Text;
            int i = 12;
            setString(i);
            setSliderImage();
        }

       

        
      
       
    }
}