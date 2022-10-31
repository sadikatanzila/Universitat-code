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
    public partial class PhotoGallery : System.Web.UI.Page
    {
        Photo_AlbumDAL objPhoto_AlbumDAL = new Photo_AlbumDAL();
        Album_ImageDAL objAlbum_ImageDAL = new Album_ImageDAL();
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        string[] sl = new string[100];
        string[] st = new string[100];
        int pos_n;

        string n, d, sql, Serial_no;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }
            pos_n = (int)this.ViewState["vs"];
            lblAlbumName.Text = "Photo Gallery";
            pnlAlbumView.Visible = false;
            gvAlbum.Visible = true;
            // result.Visible = false;
            BindList();
        }

        private void BindList()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("Getall_PhotoAlbum");
            gvAlbum.DataSource = dt;
            gvAlbum.DataBind();
        }

        public DataTable Department_GetAllbyDesg(string storeProcedure)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
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

        protected void gvAlbum_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvAlbum.PageIndex = e.NewPageIndex;
            BindList();


        }

        protected void gvAlbum_RowEditing(object sender, GridViewEditEventArgs e)
        {

            Session["AlbumID"] = Convert.ToInt32(((Label)gvAlbum.Rows[e.NewEditIndex].FindControl("lblAlbumID")).Text);
            Response.Redirect("Photo_Gallery.aspx");


           
        }

    
    }
}