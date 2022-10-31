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
using System.Text.RegularExpressions;

namespace Eastern_Uni
{
    public partial class NewsEvents_VC : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
            }

            if (txtDtl.Text == "" && txtHeading.Text == "")
            {
                BindListNewsEvents_VC();
            }
            else
            {
                BindNewsList();
            }


            grd_NewsEvents.Visible = true;
            btnView.Visible = false;
        }

        private void BindListNewsEvents_VC()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("VC_NewsEvents");
            grd_NewsEvents.DataSource = dt;
            grd_NewsEvents.DataBind();
        }
        private void BindNewsList()
        {
            UserDAL objUserDAL = new UserDAL();
            DataTable dt = new DataTable();

            string Heading = Convert.ToString(txtHeading.Text);
            string Detail = replace_(Convert.ToString(txtDtl.Text));

            dt = objUserDAL.Notice_Search("NewsEventsVC_Search", Heading, Detail);
            grd_NewsEvents.DataSource = dt;
            grd_NewsEvents.DataBind();
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

        protected void grd_NewsEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grd_NewsEvents.PageIndex = e.NewPageIndex;
            BindListNewsEvents_VC();
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            pnlSearch.Visible = true;
            btnView.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtDtl.Text == "" && txtHeading.Text == "")
                {
                    errorMsg.Text = "You have not give any data";
                    grd_NewsEvents.Visible = false;
                }
                else
                {
                    BindNewsList();
                    grd_NewsEvents.Visible = true;
                    btnView.Visible = false;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        string AESKey = "Key@AES1234";
        protected void grd_NewsEvents_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int News_ID = Convert.ToInt32(((Label)grd_NewsEvents.Rows[e.NewEditIndex].FindControl("lblNewsID")).Text);

            string txtEncryptedString = AESEncryptionDecryption.AESEncryptionDecryption.Encrypt(Convert.ToString(News_ID), AESKey);

            Response.Redirect(string.Format("EU_NewsDtl.aspx?token={0}", txtEncryptedString));
        }


    


        protected string replace_(string st)
        {

            Regex rx = new Regex(" ");
            string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(s1, "<br/>");
            return s2;


        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtHeading.Text = "";
            txtDtl.Text = "";
        }

       
    }
}