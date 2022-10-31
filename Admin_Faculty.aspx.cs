using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Eastern_Uni.DAL;
using System.Data;
using EasternUni.BO;

namespace Eastern_Uni
{
    public partial class Admin_Faculty : System.Web.UI.Page
    {
        string s_n, d_Name, d_Deg, d_Pri;

        FacultyTypeDAL objFacultyTypeDAL = new FacultyTypeDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            GetLatestSerial_no();
            int i = Convert.ToInt32(s_n);
            i++;
            s_n = Convert.ToString(i);

            d_Name = txtFName.Text;
            d_Pri = txtPriority.Text;
            txtFName.Focus();

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Submit.Text == "Submit")
            {
                SetNewRow();
                lblMessage.Text = "Data is being Saved";
                Response.Redirect("Admin_Faculty.aspx");

            }
            else
            {
                UpdateData();
                lblMessage.Text = "Data is being Updated";
                Response.Redirect("Admin_Faculty.aspx");

            }
        }


        protected void SetNewRow()
        {
            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            //SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into FacultyType (Priority ,Faculty ) values ('" + d_Pri + "','" + d_Name + "' )", conn);

            /*
            cmd.Parameters.AddWithValue("@s_n",serial_no);
            cmd.Parameters.AddWithValue("@Headline.Text",headline);
            cmd.Parameters.AddWithValue("@Detail.Text",detail);  */

            cmd.ExecuteNonQuery();

            conn.Close();

            Clear();
        }


        public void Clear()
        {
            txtFName.Text = "";
            txtPriority.Text = "";

        }


        public void UpdateData()
        {
            // Id = 0;
            FacultyType entity = new FacultyType();

            entity.FacultyID = Convert.ToInt32(txtSl_No.Text);
            entity.Priority = Convert.ToString(txtPriority.Text);
            entity.Faculty = Convert.ToString(txtFName.Text);



            Int32 Id = objFacultyTypeDAL.FacultyType_Update(entity);


            if (Id > 0)
            {
                Clear();
                // BindList();
                Submit.Text = "Submit";
            }

        }

        protected string replace_(string st)
        {

            Regex rx = new Regex(" ");
            string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(s1, "<br/>");
            return s2;


        }

        protected string replaceOposite(string st)
        {

            Regex rx = new Regex("&nbsp;");
            string s1 = rx.Replace(st, " ");
            Regex ry = new Regex("<br/>");
            string s2 = ry.Replace(s1, "\r\n");
            return s2;


        }

        protected void GetLatestSerial_no()
        {

            SqlConnection conn = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
            // SqlConnection conn = new SqlConnection("Data Source=USER-PC\\SQLEXPRESSR2;Initial Catalog=Eastern_University;Integrated Security=SSPI;User ID=sa;Password=1086042g6;");
            conn.Open();

            SqlCommand cmd = new SqlCommand("select top 1 FacultyID from FacultyType order by FacultyID desc", conn);

            SqlDataReader dtr = cmd.ExecuteReader();
            while (dtr.Read())
            {
                s_n = (string)(dtr[0].ToString());
            }
            dtr.Close();
            conn.Close();


        }

        protected void gvFaculty_RowEditing(object sender, GridViewEditEventArgs e)
        {
            FacultyType objFacultyType = new FacultyType();
            Int32 Sl_No = Convert.ToInt32(gvFaculty.DataKeys[e.NewEditIndex].Value);

            objFacultyType = objFacultyTypeDAL.FacultyType_GetBySl(Sl_No);
            SetDataToControls(objFacultyType);
        }

        private void SetDataToControls(FacultyType entity)
        {
            try
            {
                txtPriority.Text = Convert.ToString(entity.Priority);
                txtFName.Text = Convert.ToString(entity.Faculty);

                txtSl_No.Text = Convert.ToString(entity.FacultyID);

                Submit.Text = "Update";
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }



        protected void gvFaculty_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 serial_no = Convert.ToInt32(gvFaculty.DataKeys[e.RowIndex].Value);
            int success = objFacultyTypeDAL.FacultyType_Delete(serial_no);
            if (success > 0)
            {
                //lblMessage.Text = ContextConstant.DELETE_SUCCESS;
                //lblMessage.ForeColor = Color.Green;
                Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("Admin_Faculty.aspx");
                //BindList();

            }
        }
    }
}