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
    public partial class StdReg_Searching : System.Web.UI.Page
    {
        MathOlympiadDAL objMathOlympiadDAL = new MathOlympiadDAL();
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!Page.IsPostBack)
            {

                BindSearchingList();
                
            }
            else
            {

            }
        }


        int i = 1;
        protected void gvEUMOStd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = i.ToString();
                i++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#EEFFAA'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvEUMOStd_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEUMOStd.PageIndex = e.NewPageIndex;
            BindSearchingList();
            
        }

        protected void Submit_Click(object sender, System.EventArgs e)
        {
           
            if (txtName.Text == "" && txtCell.Text == "" && txtRoll.Text == "" && txtGPA.Text == "" && Convert.ToInt32(ddlBoard.SelectedValue) == 0)
            {
                Label1.Text = "You Have Not Selected Anything";
               
            }
            else
            {
              
                Label1.Text = "";
                BindSearchingList();
              
            }
        }

        private void Clear()
        {
            txtName.Text = ""; 
            txtCell.Text = ""; 
            txtRoll.Text = "" ;
            txtGPA.Text = "";
            ddlBoard.SelectedIndex = 0;
        }
        private void BindSearchingList()
        {
            string boardV = "";
            if (Convert.ToInt32(ddlBoard.SelectedValue) == 0)
            {
               boardV = "";
            }
            else
            {
                 boardV = Convert.ToString(ddlBoard.SelectedItem);
            }
            DataTable dt = new DataTable();
            

            dt = Faculty_GetAll("MathOlympiad_Search", Convert.ToString(txtName.Text), Convert.ToString(txtCell.Text), Convert.ToString(txtRoll.Text), Convert.ToString(txtGPA.Text), boardV);
            gvEUMOStd.DataSource = dt;
            gvEUMOStd.DataBind();
        }

        public DataTable Faculty_GetAll(string storeProcedure, string Name, string Cell, string Roll, string GPA, string Board)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@Cell", DbType.String, Cell);
                AddParameter(command, "@Roll", DbType.String, Roll);
                AddParameter(command, "@GPA", DbType.String, GPA);
                AddParameter(command, "@Board", DbType.String, Board);
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

        protected void btnClear_Click(object sender, System.EventArgs e)
        {
            Clear();
        }

        protected void gvEUMO_Search_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEUMOStd.PageIndex = e.NewPageIndex;
            BindSearchingList();
        }
        int j=1;
        protected void gvEUMO_Search_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSerial = (Label)e.Row.FindControl("lblSerial");
                lblSerial.Text = j.ToString();
                j++;
                //when mouse is over the row, save original color to new attribute, and change it to highlight yellow color
                e.Row.Attributes.Add("onmouseover", "this.originalstyle=this.style.backgroundColor;this.style.backgroundColor='#EEFFAA'");
                //when mouse leaves the row, change the bg color to its original value   
                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalstyle;");
            }
        }

        protected void gvEUMOStd_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSelectedData(e);
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Session["TrackingNo"] = Convert.ToString(((Label)gvEUMOStd.Rows[e.NewEditIndex].FindControl("lblTracking")).Text);
         //   Session["Serial"] = Convert.ToString(((Label)gvEUMOStd.Rows[e.NewEditIndex].FindControl("lblSerial")).Text);
            Response.Redirect("EUMO_AdmitCard.aspx");
        }

        protected void gvEUMOStd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(gvEUMOStd.DataKeys[e.RowIndex].Value);


            int success = objMathOlympiadDAL.EU_EUMOInfo_Delete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                //Response.Redirect("StdReg_Searching.aspx");
                BindSearchingList();
            }
        }
    }
}