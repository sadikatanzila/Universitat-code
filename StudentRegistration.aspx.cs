using Eastern_Uni.DAL;
using EasternUni.BO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eastern_Uni
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        MathOlympiadDAL objMathOlympiadDAL = new MathOlympiadDAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" || txtCellnumber.Text == "" || txtStudentID.Text == "" || txtInstitution.Text == "" ||
                txtYear.Text == "" || txtRoll.Text == "" || txtRegiNo.Text == "" || txtGPA.Text == ""
                 || Convert.ToString(ddlSSC.SelectedValue) == null)
            {
                lblMessage.Text = "Please fill-up the necessary box's(* marked) information";
                return;
            }
            else
            {
                Save();
            }
        }

        private void Save()
        {
            MathOlympiad entity = new MathOlympiad();


            entity.Name = txtName.Text;
            entity.Email = txtEmail.Text;
            entity.Cell = txtCellnumber.Text;
            entity.StudentID = txtStudentID.Text;
            entity.SSC_Olevel = Convert.ToString(ddlSSC.SelectedValue);
            entity.Roll = txtRoll.Text;
            entity.Registration = txtRegiNo.Text;
            entity.GPA = txtGPA.Text;

            entity.PicLocation = Convert.ToString(Session["picloc"]);

            entity.Year = txtYear.Text;
            entity.Institution = txtInstitution.Text;

            Int32 Id = 0;


            if (Submit.Text == "Submit")
            {
                //entity.InsertionTime = DateTime.Now;
               // entity.UserID = Convert.ToInt32(Session["userID"]);

                Id = objMathOlympiadDAL.Add_MathOlympiad(entity);



                if (Id > 0)
                {
                    lblMessage.Text = "Data is Inserted Successfully";
                    lblMessage.ForeColor = Color.Green;
                     Clear();
                   // BindList();
                }
            }
           
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }


        public void Clear()
        {
             txtName.Text="";
             txtEmail.Text = "";
             txtCellnumber.Text = "";
             txtStudentID.Text = "";
             txtRoll.Text = "";
             txtRegiNo.Text = "";
             txtGPA.Text = "";

             txtPictureLocation.Text  = "";

             txtYear.Text = "";
             txtInstitution.Text = "";
             lblmsg.Text = "";

        }
        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }


        private void InitializeComponent()
        {
            this.Submit1.ServerClick += new System.EventHandler(this.Submit1_ServerClick);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion
        private void Submit1_ServerClick(object sender, System.EventArgs e)
        {
            if ((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("Math_Olympiad") + "\\" + fn;
                Session["picloc"] = "Math_Olympiad" + "/" + fn;
                try
                {
                    File1.PostedFile.SaveAs(SaveLocation);
                    Response.Write("The file has been uploaded.");
                    lblmsg.Text = "The file has been uploaded.";
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                    lblMessage.Text = "Error to upload file";
                }
            }
            else
            {
                Response.Write("Please select a file to upload.");
            }
        }

    }
}