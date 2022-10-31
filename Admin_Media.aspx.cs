using System;
using System.Collections;
using System.ComponentModel;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Eastern_Uni.DAL;
using EasternUni.BO;

namespace Eastern_Uni
{
    public partial class Admin_Media : System.Web.UI.Page
    {
        string s_n, Media_PicLoc, Sl;
        private static DataTable dtPicList = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    dtPicList = GetDataTable();
                    BindList();
                }
                catch
                {
                }
            }
            else
            {
                Media_PicLoc = Convert.ToString(Session["Meida_picloc"]);
            }
        }


       
        protected void AddItem_Click(object sender, EventArgs e)
        {
            // ddlProduct_SelectedIndexChanged(sender, e);
            // DataTable dt = salesMstBll.T_STOCK_GetAllByProductID(Int32.Parse(ddlProduct.SelectedValue));
            AddToGrid();
            // CalculateSaleSummary();
            // ClearProduct();
        }
        private void BindList()
        {
            gvMedia.DataSource = dtPicList;
            gvMedia.DataBind();
        }

        DataTable dt = new DataTable();
        private DataTable GetDataTable()
        {

            // dt.Columns.Add("Sl");
            dt.Columns.Add("MediaSl");
            dt.Columns.Add("Newspaper_Name");
            dt.Columns.Add("Picture_Location");

            dt.PrimaryKey = new DataColumn[] { dt.Columns["MediaSl"] };

            return dt;
        }
        private void AddToGrid()
        {
            DataRow row = dtPicList.NewRow();

            if (row == null)
            {
                GetLast_MediaSl();
                int i = Convert.ToInt32(Sl);
                i++;
                Sl = Convert.ToString(i);
                Session["Sl"] = Sl;
            }
            else
            {
                int j = Convert.ToInt32(Session["Sl"]) + 1;
                Sl = Convert.ToString(j);
                Session["Sl"] = Sl;
            }
            //dtPicList.Rows.Find(dt.Rows[0]["MediaSl"]);



            row["MediaSl"] = Sl;
            row["Newspaper_Name"] = txtNewspaper.Text;// dt.Rows[0]["Newspaper_Name"];
            row["Picture_Location"] = Media_PicLoc;//dt.Rows[0]["Picture_Location"];

            dtPicList.Rows.Add(row);
            Session["PicList"] = dtPicList;

            BindList();


        }


        protected void GetLast_MediaSl()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 MediaSl from Media order by MediaSl desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();
            while (dtr.Read())
            {

                Sl = (string)(dtr[0].ToString());
            }
            dtr.Close();
            conn.Close();


        }


        protected void ddlMediadtl_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetLast_MediaNewsID();
            int i = Convert.ToInt32(Sl);
            i++;
            Sl = Convert.ToString(i);
            txtMedia_NewsID.Text = Sl;
        }
        protected void GetLast_MediaNewsID()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 Media_NewsID from news_events order by Media_NewsID desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();
            while (dtr.Read())
            {

                Sl = (string)(dtr[0].ToString());
            }
            dtr.Close();
            conn.Close();


        }


        #region Media Pic Upload code
        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }


        private void InitializeComponent()
        {
            this.SubmitPic.ServerClick += new System.EventHandler(this.SubmitPic_ServerClick);
            this.Load += new System.EventHandler(this.Page_Load);

        }



        #endregion
        private void SubmitPic_ServerClick(object sender, System.EventArgs e)
        {
            if ((Pic_File.PostedFile != null) && (Pic_File.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(Pic_File.PostedFile.FileName);
                string SaveLocation = Server.MapPath("Media") + "\\" + fn;
                Session["Meida_picloc"] = "Media" + "/" + fn;
                try
                {
                    Pic_File.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);

                }
            }
            else
            {
                Response.Write("Please select a file to upload.");
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            Save();

        }

        private void Save()
        {
            SaveDetails();
        }

        private void SaveDetails()
        {
            for (int i = 0; i < gvMedia.Rows.Count; i++)
            {
              //  Media entity = new Media();
               // entity.Media_NewsID = Convert.ToInt32(txtMedia_NewsID.Text);
                // entity.MediaSl = Convert.ToInt32(((Label)gvMedia.Rows[i].FindControl("lblMediaSl")).Text);
                // entity.Newspaper_Name = Convert.ToString(((Label)gvMedia.Rows[i].FindControl("lblNewspaper_Name")).Text);
                // entity.Picture_Location = Convert.ToString(((Label)gvMedia.Rows[i].FindControl("lblPicture_Location")).Text);
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void gvMedia_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = ((gvMedia.PageIndex * gvMedia.PageSize) + e.Row.RowIndex + 1).ToString();
            }
        }
    }
}