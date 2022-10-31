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
    public partial class Photo_Gallery1 : System.Web.UI.Page
    {
        Photo_AlbumDAL objPhoto_AlbumDAL = new Photo_AlbumDAL();
        Album_ImageDAL objAlbum_ImageDAL = new Album_ImageDAL();

        string[] sl = new string[100];
        string[] st = new string[100];
        string s_n;

       
        protected void Page_Load(object sender, EventArgs e)
        {
            BindList();
        }



        private void BindList()
        {
            Album_Image entity = new Album_Image();
            Int32 AlbumID = Convert.ToInt32(Session["AlbumID"]);
            entity = objAlbum_ImageDAL.Get_Album_ImageInfoID(AlbumID);
            lblAlbum_Name.Text = Convert.ToString(entity.Album_Name);

           // lblAlbumID.Text = Convert.ToString(entity.AlbumID);

            onClick(AlbumID);
            // lblCredit.Text = entity.Credit;

            // lblPrerequisite.Text = entity.Prerequisite;


            // lblDetails.Text = entity.Course_Detail;
            // txtdtl.Text = replaceOposite(entity.Course_Detail);
        }


        private void onClick(int AlbumID)
        {
            //lblAlbum_Name.Text = lblAlbum1.Text;
            int i = AlbumID;
            setString(i);
            setSliderImage();

        }

        protected string replaceOposite(string st)
        {

            // Regex rx = new Regex("&nbsp;");
            // string s1 = rx.Replace(st, " ");
            Regex ry = new Regex("<br/>");
            string s2 = ry.Replace(st, "\r\n");
            return s2;


        }
        protected void setString(int AlbumID)
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");

            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 10 Location ,title from Album_Image where AlbumID = '" + AlbumID + "'  order by PhotoID ", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            //DataTable dt = new DataTable();
           // dt.Load(dtr);
           // int numRows = dt.Rows.Count;

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
            ss_1.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[0]);
            ss_1.Attributes["title"] = st[0];

            ss_2.Attributes["src"] = ResolveUrl("/image/SlideImage/" + sl[1]);
            ss_2.Attributes["title"] = st[1];

            ss_3.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[2]);
            ss_3.Attributes["title"] = st[2];

            ss_4.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[3]);
            ss_4.Attributes["title"] = st[3];

            ss_5.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[4]);
            ss_5.Attributes["title"] = st[4];

            ss_6.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[5]);
            ss_6.Attributes["title"] = st[5];


            ss_7.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[6]);
            ss_7.Attributes["title"] = st[6];

            ss_8.Attributes["src"] = ResolveUrl("/image/SlideImage/" + sl[7]);
            ss_8.Attributes["title"] = st[7];

            ss_9.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[8]);
            ss_9.Attributes["title"] = st[8];

            ss_10.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[9]);
            ss_10.Attributes["title"] = st[9];

            //  ss_11.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[10]);
            //   ss_11.Attributes["title"] = st[10];

            //  ss_12.Attributes["src"] = ResolveUrl("~/image/SlideImage/" + sl[11]);
            //  ss_12.Attributes["title"] = st[11];


        }

        protected void lblBack_DataBinding(object sender, EventArgs e)
        {
            Response.Redirect("PhotoGallery.aspx");
            Session["AlbumID"] = null;
        }

       
    }
}