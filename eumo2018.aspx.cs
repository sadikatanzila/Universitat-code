using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;


namespace Eastern_Uni
{
    public partial class eumo2018 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Filename = Request.QueryString["Filename"];
            Int32 Radius = Convert.ToInt32(Request.QueryString["Radius"]);
            if (!String.IsNullOrEmpty(Filename) &&
                Radius > 0)
            {
                System.Drawing.Bitmap bmp = MakeRoundedCorners(Filename, Radius);

                Response.ContentType = "image/Png";
                bmp.Save(Response.OutputStream, ImageFormat.Png);
            }
            setevents();
        }

        private Bitmap MakeRoundedCorners(String Filename, Int32 Radius)
        {
            System.Drawing.Image im =
             System.Drawing.Image.FromFile(Server.MapPath(Filename));

            Bitmap Bmp = new Bitmap(im, im.Width, im.Height);
            Graphics G = Graphics.FromImage(Bmp);
            Brush brush = new System.Drawing.SolidBrush(Color.Red);



            for (int i = 0; i < 4; i++)
            {
                Point[] CornerUpLeft = new Point[3];

                CornerUpLeft[0].X = 0;
                CornerUpLeft[0].Y = 0;

                CornerUpLeft[1].X = Radius;
                CornerUpLeft[1].Y = 0;

                CornerUpLeft[2].X = 0;
                CornerUpLeft[2].Y = Radius;

                System.Drawing.Drawing2D.GraphicsPath pathCornerUpLeft =
                   new System.Drawing.Drawing2D.GraphicsPath();

                pathCornerUpLeft.AddArc(CornerUpLeft[0].X, CornerUpLeft[0].Y,
                    Radius, Radius, 180, 90);
                pathCornerUpLeft.AddLine(CornerUpLeft[0].X, CornerUpLeft[0].Y,
                    CornerUpLeft[1].X, CornerUpLeft[1].Y);
                pathCornerUpLeft.AddLine(CornerUpLeft[0].X, CornerUpLeft[0].Y,
                    CornerUpLeft[2].X, CornerUpLeft[2].Y);

                G.FillPath(brush, pathCornerUpLeft);
                pathCornerUpLeft.Dispose();

                Bmp.RotateFlip(RotateFlipType.Rotate90FlipNone);
            }

            brush.Dispose();
            G.Dispose();

            Color backColor = Bmp.GetPixel(0, 0);

            Bmp.MakeTransparent(backColor);

            return Bmp;

        }

        protected void setevents()
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            //SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1  headline,detail from (select top 2 * from TopNews order by serial_no desc) as sub order by serial_no asc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();

            while (dtr.Read())
            {
                Label1.Text = dtr[0].ToString();
                Label2.Text = dtr[1].ToString();

            }

            dtr.Close();
            conn.Close();



        }

        protected void LinkButtonDownloadPdf_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Individual_Registration.pdf");
            Response.TransmitFile(Server.MapPath("~/image/MathOlympiad/Individual_Registration.pdf"));
            Response.End();

        }

        protected void LinkButtonDownload_Group_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Group_Registration.pdf");
            Response.TransmitFile(Server.MapPath("~/image/MathOlympiad/Group_Registration.pdf"));
            Response.End();
        }

        protected void LinkButtonDownloaddoc_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/doc";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Individual_Registration.doc");
            Response.TransmitFile(Server.MapPath("~/image/MathOlympiad/Individual_Registration.doc"));
            Response.End();
        }

        protected void LinkButtonDownload_Groupdoc_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/doc";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Group_Registration.doc");
            Response.TransmitFile(Server.MapPath("~/image/MathOlympiad/Group_Registration.doc"));
            Response.End();
        }

        protected void QuestionsLinkpdf_Click(object sender, EventArgs e)
        {

            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Question_EUMO2014.pdf");
            Response.TransmitFile(Server.MapPath("~/image/MathOlympiad/Question_EUMO2014.pdf"));
            Response.End();
        }

        protected void ResultLinkpdf_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=Result_EUMO2014.pdf");
            Response.TransmitFile(Server.MapPath("~/image/MathOlympiad/Result_EUMO2014.pdf"));
            Response.End();
        }
    }
}