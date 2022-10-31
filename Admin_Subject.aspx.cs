using System;
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
    public partial class Admin_Subject : System.Web.UI.Page
    {
        AcSubjectDAL objAcSubjectDAL = new AcSubjectDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //ddlProg
                CommonBinder.ProgramType_LoadForDll(ddlProg);
                CommonBinder.FacultyType_LoadForDll(ddlFaculty);
                


                BindList();
            }
            else
            {

            }
        }

        private void BindList()
        {
            List<AcSubject> AcSubjectList = objAcSubjectDAL.LoadAcSubject_GetAll();
            gvSubject.DataSource = AcSubjectList;
            gvSubject.DataBind();
        }

        protected void gvSubject_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(e);
            Submit.Text = "Update";
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            AcSubject entity = new AcSubject();
            Int32 SerialNo = Convert.ToInt32(gvSubject.DataKeys[e.NewEditIndex].Value);
            entity = objAcSubjectDAL.Get_AcSubjectById(SerialNo);

            txtSubject.Text = Convert.ToString(entity.Subject);
            txtPriority.Text = Convert.ToString(entity.Priority);

            txtSl_No.Text = Convert.ToString(entity.SubjectID);


            ddlProg.SelectedValue = entity.AcaProgID.ToString();
            ddlFaculty.SelectedValue = entity.FacultyID.ToString();


        }


        protected void gvSubject_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Int32 SerialNo = Convert.ToInt32(gvSubject.DataKeys[e.RowIndex].Value);
            int success = objAcSubjectDAL.AcSubjectDelete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("Admin_Subject.aspx");
                BindList();
            }


        }



        protected void Submit_Click(object sender, EventArgs e)
        {
            if (txtPriority.Text == null || Convert.ToInt32(ddlProg.SelectedValue) == 0 || Convert.ToInt32(ddlFaculty.SelectedValue) == 0 || txtSubject.Text == null)
            {
                lblMessage.Text = "Please fill-up the necessary box's information";
                return;
            }
            else
            {
                Save();
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
        private void Save()
        {
            AcSubject entity = new AcSubject();



            entity.Subject = Convert.ToString(txtSubject.Text);
            entity.Priority = Convert.ToString(txtPriority.Text);

            entity.FacultyID = Convert.ToInt32(ddlFaculty.SelectedValue);
            entity.AcaProgID = Convert.ToInt32(ddlProg.SelectedValue);

            

            Int32 Id = 0;

            if (Submit.Text == "Submit")
            {
                // entity.InsertionTime = DateTime.Now.ToString();
                // entity.UserID = Convert.ToInt32(Session["UserID_Admission"]);

                Id = objAcSubjectDAL.Add_Subject(entity);
                if (Id > 0)
                {
                    lblMessage.Text = "Data is Inserted Successfully";
                    //lblMessage.ForeColor = Color.Green;
                    Clear();
                    BindList();
                }
            }
            else
            {
                // entity.UpdateTime = DateTime.Now.ToString();
                // entity.UpdateUser = Convert.ToInt32(Session["UserID_Admission"]);

                entity.SubjectID = Convert.ToInt32(txtSl_No.Text);
                Id = objAcSubjectDAL.Update_Subject(entity);

                lblMessage.Text = "Data is Updated Successfully";
                //lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                Submit.Text = "Submit";

                Response.Redirect("Admin_Subject.aspx");
            }

        }

        public void Clear()
        {
            txtSubject.Text = "";
            txtPriority.Text = "";

            txtSl_No.Text = "";


            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
            Response.Redirect("Admin_Subject.aspx");


        }

        protected void ddlAdmsnType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlSemister_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}