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

namespace Eastern_Uni
{
    public partial class Faculty_Member_FS : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
      
        int pos_e;
        int faculty_V, designation_V;
        string n, d, sql, FacultyID, Serial_no;


        protected void Page_Load(object sender, EventArgs e)
        {

            gvFacultyDtl.Visible = false;

            if (!IsPostBack)
            {
                this.ViewState["vs"] = 0;
                CommonBinder.FacultyType_LoadForDll(ddlFaculty);
                CommonBinder.FacultyDegType_LoadForDll(ddlDeg);
            }
            else
            {
                designation_V = Convert.ToInt32(ddlDeg.SelectedValue);
                faculty_V = Convert.ToInt32(ddlFaculty.SelectedValue);
            }
            pos_e = (int)this.ViewState["vs"];
            
            result.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gvDepartment.Visible = true;
            gvFacultyDtl.Visible = false;


            if (txtName.Text == "" && ddlDeg.SelectedIndex == 0 && ddlFaculty.SelectedIndex == 0)
            {
                Label1.Text = "You Have Not Selected Anything";

                result.Visible = false;

                //BindListDesg();
            }
            else
            {
                Label1.Text = "";
                BindFacultyList();
            }
           // else if (txtName.Text == "" && ddlDesignation.SelectedIndex != 0)
             //  {
               //    if (ddlDesignation.SelectedIndex == 1 || ddlDesignation.SelectedIndex == 5)
                 //      {
                  //         BindListDesig();
                //       }
               //   else
               //       {
               //           BindListDesg();
               //       }

              //  }

              //     else if (txtName.Text != "" && ddlDesignation.SelectedIndex == 0)
                //    {
                //       n = txtName.Text;
             //
               //         BindListName();
               //     }


               //     else 
                 //      {
                 //          n = txtName.Text;
               //
                 //          BindList();
                 //       }
        }
        private void BindFacultyList()
        {
            DataTable dt = new DataTable();


           // string desig = Convert.ToString(ddlDeg.SelectedValue);
           // string Faculty = Convert.ToString(ddlFaculty.SelectedValue);

            int desigV = Convert.ToInt32(ddlDeg.SelectedValue);
            int FacultyV = Convert.ToInt32(ddlFaculty.SelectedValue);

           // dt = Faculty_GetAll("FacultyMembers_Searchnew", Convert.ToString(txtName.Text), desig, Faculty);

            dt = Faculty_GetAll("FacultyMembers_Searchnew", Convert.ToString(txtName.Text), desigV, FacultyV);
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
        }

        public DataTable Faculty_GetAll(string storeProcedure, string Name, int desig, int Faculty)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@Designation", DbType.Int32, desig);
                AddParameter(command, "@Faculty", DbType.Int32, Faculty);
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






        private void BindListDesg()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("FacultyMembers_byDesg1", Convert.ToString(ddlDesignation.SelectedValue));
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
        }
        public DataTable Department_GetAllbyDesg(string storeProcedure, string desig)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                //AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@Designation", DbType.String, desig);
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
        private void BindListDesig()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyDesg("FacultyMembers_byDesg", Convert.ToString(ddlDesignation.SelectedValue));
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
        }

        private void BindListName()
        {
            DataTable dt = new DataTable();
            dt = Department_GetAllbyName("FacultyMembers_byName", Convert.ToString(txtName.Text));
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
        }

        private void BindList()
        {
            DataTable dt = new DataTable();
            string desig = Convert.ToString(ddlDesignation.SelectedValue);
            dt = Department_GetAll("FacultyMembers_byNameDg", Convert.ToString(txtName.Text), desig);
            gvDepartment.DataSource = dt;
            gvDepartment.DataBind();
        }

        public DataTable Department_GetAllbyName(string storeProcedure, string Name)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
               // AddParameter(command, "@Designation", DbType.String, desig);
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
        public DataTable Department_GetAll(string storeProcedure, string Name, string desig)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@Designation", DbType.String, desig);
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

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }
        private void databind1()
        {

            dadapter_e = new SqlDataAdapter(sql, connstring_e);
            dset_e = new DataSet();
            adsource_e = new PagedDataSource();
            dadapter_e.Fill(dset_e);
            adsource_e.DataSource = dset_e.Tables[0].DefaultView;
            adsource_e.PageSize = 30;
            adsource_e.AllowPaging = true;
            adsource_e.CurrentPageIndex = pos_e;
            btnfirst.Enabled = !adsource_e.IsFirstPage;
            btnprevious.Enabled = !adsource_e.IsFirstPage;
            btnlast.Enabled = !adsource_e.IsLastPage;
            btnnext.Enabled = !adsource_e.IsLastPage;
            datalist_e.DataSource = adsource_e;
            datalist_e.DataBind();


        }

        protected void btnfirst_Click(object sender, EventArgs e)
        {
            pos_e = 0;
            this.ViewState["vs"] = 0;
            databind1();
        }

        protected void btnprevious_Click(object sender, EventArgs e)
        {
            pos_e = (int)this.ViewState["vs"];
            pos_e -= 1;
            this.ViewState["vs"] = pos_e;
            databind1();
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            pos_e = (int)this.ViewState["vs"];
            pos_e += 1;
            this.ViewState["vs"] = pos_e;
            databind1();
        }

        protected void btnlast_Click(object sender, EventArgs e)
        {

            pos_e = adsource_e.PageCount - 1; this.ViewState["vs"] = pos_e; databind1();
        }

        protected void gvDepartment_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            DataTable dt = new DataTable();
            Int32 Id = Convert.ToInt32(gvDepartment.DataKeys[e.NewEditIndex].Value);

            Session["Serial_no"] = Id;

           // Session["FacultyID"] = Id;
            Session["FacultyMemberReport"] = 1;

            gvDepartment.Visible = false;
            gvFacultyDtl.Visible = true;
            Serial_no = Convert.ToString(Session["Serial_no"]);
            BindList(Serial_no);
            
           // string webUrl = "Reports/ReportViewer.aspx";
           // string webUrl = "FacultyDtl.aspx";
          //  ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "window.open('" + webUrl + "','_blank','width=1550,height=650,resizable=yes,scrollbars = yes');", true);

        }

        protected void gvDepartment_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDepartment.PageIndex = e.NewPageIndex;
           // BindListDesig();
            if (txtName.Text == "" && ddlDesignation.SelectedIndex == 0 && ddlFaculty.SelectedIndex == 0)
            {
                Label1.Text = "You Have Not Selected Anything";

                result.Visible = false;

                //BindListDesg();
            }
            else
            {
                BindFacultyList();
            }



           
           
        }

        private void BindList(String Serial_no)
        {
            DataTable dt = new DataTable();
            dt = Faculty_GetAll("FacultyMemberDtl", Serial_no);
            gvFacultyDtl.DataSource = dt;
            gvFacultyDtl.DataBind();
        }

        public DataTable Faculty_GetAll(string storeProcedure, string Serial_no)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Serial_no", DbType.String, Serial_no);
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