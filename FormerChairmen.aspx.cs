using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Data.Common;
using Eastern_Uni.DAL;
using EasternUni.BO;
using System.Drawing;

namespace Eastern_Uni
{
    public partial class FormerChairmen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindAlbumList();
        }

        private void BindAlbumList()
        {
            DataTable dt = new DataTable();
            dt = FormerChairman_GetAll("GetAll_FormerChairman");
            PhotoAlbumList.DataSource = dt;
            PhotoAlbumList.DataBind();
        }

        public DataTable FormerChairman_GetAll(string storeProcedure)
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
    }
}