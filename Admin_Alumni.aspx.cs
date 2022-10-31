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
    public partial class Admin_Alumni : System.Web.UI.Page
    {
        AlumniDAL objAlumniDAL = new AlumniDAL();

        
        string s_n;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CommonBinder.FacultyType_LoadForDll(ddlUnGFaculty);
                CommonBinder.LoadSubject_NULL(ddlUnGSubject);
                CommonBinder.SemisterType_LoadForDll(ddlUnGSemister);
                CommonBinder.Shift_LoadForDll(ddlUnGShift);
                CommonBinder.Type_LoadForDll(ddlUngType);

                
                CommonBinder.FacultyType_LoadForDll(ddlGrFaculty);
                CommonBinder.LoadSubject_NULL(ddlUnGSubject);
                CommonBinder.SemisterType_LoadForDll(ddlGrSemister);
                CommonBinder.Shift_LoadForDll(ddlGrShift);
                CommonBinder.Type_LoadForDll(ddlGrType);


                BindList();
            }
            else
            {

            }
        }


        private void BindList()
        {
            List<Alumni> AlumniList = objAlumniDAL.LoadAlumni_GetAll();
            grdAlumni.DataSource = AlumniList;
            grdAlumni.DataBind();
        }

        protected void grdAlumni_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(grdAlumni.DataKeys[e.RowIndex].Value);


            int success = objAlumniDAL.Alumni_Delete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("Admin_Alumni.aspx");
                BindList();
            }
        }

        protected void grdAlumni_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(sender,e);
            Submit.Text = "Update";
        }

        private void GetSelectedData(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Alumni entity = new Alumni();
            Int32 SerialNo = Convert.ToInt32(grdAlumni.DataKeys[e.NewEditIndex].Value);
            entity = objAlumniDAL.Get_AlumniInfoID(SerialNo);

            txtName.Text = Convert.ToString(entity.Name);
            txtSl.Text = Convert.ToString(entity.Sl);
            txtPriority.Text = entity.Priority;
            txtConfirmation.Text = Convert.ToString(entity.Confirmation);

            txtFName.Text = entity.Father_Name;
            txtMName.Text = entity.Mother_Name;
            txtFOcc.Text = entity.Father_Occupation;
            txtMOcc.Text = entity.Mother_Occupation;
            txtMarSt.Text = entity.Marital_Status;
            txtSpouse.Text = replaceOposite(entity.Spouse);
            txtChild.Text = replaceOposite(entity.Child_dtl);
            txtRelign.Text = entity.Religion;
            txtBlGr.Text = entity.Blood_Group;
            txtDate_Birth.Text = entity.Date_Birth.ToString("dd-MM-yyyy"); 

            txtPreLoc.Text = replaceOposite(entity.Present_Address);
            txtPrePhn.Text = entity.Present_ContactNo;
            txtPreMob.Text = entity.Present_Mobile;

            txtParLoc.Text = replaceOposite(entity.Permanent_Address);
            txtParPhn.Text = entity.Permanent_ContactNo;
            txtParMob.Text = entity.Permanent_Mobile;

            txtMail.Text = entity.EMail_Address;
            txtPictureLocation.Visible = true;
            txtPictureLocation.Text = entity.PictureLocation;

            txtUnGrID.Text = Convert.ToString(entity.UnderGraduation_ID);
            txtUnGrYear.Text = Convert.ToString(entity.PassingYear_UnderGraduate);

            ddlUnGFaculty.SelectedValue = entity.UnderGraduationFacultyID.ToString();

            if (entity.UnderGraSubj_ID > 0)
            {
                ddlUngFaculty_SelectedIndexChanged(sender,e);
                ddlUnGSubject.SelectedValue = entity.UnderGraSubj_ID.ToString();

            }
            
            
            ddlUnGShift.SelectedValue = entity.UndrGraShiftID.ToString();
            ddlUngType.SelectedValue = entity.UndrGraTypesID.ToString();
            ddlUnGSemister.SelectedValue = entity.SemisterID_UnderGraduate.ToString();

            txtGrID.Text = Convert.ToString(entity.Graduation_ID);
            txtGrYear.Text = Convert.ToString(entity.PassingYear_Graguate);

            ddlGrFaculty.SelectedValue = entity.GraduationFacultyID.ToString();
            if (entity.GraSubj_ID > 0)
            {
                ddlGFaculty_SelectedIndexChanged(sender, e);
                ddlGrSubject.SelectedValue=entity.GraSubj_ID.ToString();
            }
            ddlGrShift.SelectedValue = Convert.ToString(entity.GraShiftID);
            ddlGrType.SelectedValue = Convert.ToString(entity.GraTypesID);
            ddlGrSemister.SelectedValue = Convert.ToString(entity.SemisterID_Graduate);

            txtOccupation.Text = entity.Occupation;
            txtDeg.Text = entity.Designation;
            txtOfcLoc.Text = entity.Job_Location;
            txtExp.Text = entity.Job_Experience;
            txtOffPhn.Text = entity.JobOffice_PhnNo;

           // txtSl.Text = Convert.ToString(entity.Sl);


            //ddlFaculty.SelectedValue = entity.Admission_TypeID.ToString();
           // ddlSemister.SelectedValue = entity.Admission_SemisterID.ToString();


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //if ( txtYear.Text == null )
            //{
            //    lblMessage.Text = "Please fill-up the necessary box's information";
             //   return;
            //}
            //else
            //{
                Save();
            //}
        }


        protected string replace_(string st)
        {

           // Regex rx = new Regex(" ");
           // string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(st, "<br/>");
            return s2;


        }

        protected string replaceOposite(string st)
        {

           // Regex rx = new Regex("&nbsp;");
           // string s1 = rx.Replace(st, " ");
            Regex ry = new Regex("<br/>");
            string s2 = ry.Replace(st, "\r\n");
            return s2;


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
                string SaveLocation = Server.MapPath("Alumni") + "\\" + fn;
                Session["picloc"] = "Alumni" + "/" + fn;
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

        private void Save()
        {
            Alumni entity = new Alumni();

            entity.Priority     =txtPriority.Text; 
            
            entity.Name  = Convert.ToString(txtName.Text);

            if (txtGrID.Text != "")
                entity.Graduation_ID = Convert.ToInt32(txtGrID.Text);

               

            if(Convert.ToInt32(ddlGrFaculty.SelectedValue) > 0)
                entity.GraduationFacultyID =Convert.ToInt32(ddlGrFaculty.SelectedValue);

            if (Convert.ToInt32(ddlGrFaculty.SelectedValue) > 0)
            {
                if (Convert.ToInt32(ddlGrSubject.SelectedValue) > 0)
                    entity.GraSubj_ID = Convert.ToInt32(ddlGrSubject.SelectedValue);
            }

            if (Convert.ToInt32(ddlGrShift.SelectedValue ) > 0)
                entity.GraShiftID=Convert.ToInt32(ddlGrShift.SelectedValue);

            if (Convert.ToInt32(ddlGrType.SelectedValue) > 0)
                entity.GraTypesID=Convert.ToInt32(ddlGrType.SelectedValue);

                entity.PassingMonth_Graguate    =null;
                entity.PassingYear_Graguate = Convert.ToString(txtGrYear.Text); 

                entity.SemisterID_Graduate=Convert.ToInt32(ddlGrSemister.SelectedValue);

                if (txtUnGrID.Text != "")   
                entity.UnderGraduation_ID=Convert.ToInt32(txtUnGrID.Text);
              

                if (Convert.ToInt32(ddlUnGFaculty.SelectedValue) > 0)
                entity.UnderGraduationFacultyID     =Convert.ToInt32(ddlUnGFaculty.SelectedValue);

                if (Convert.ToInt32(ddlUnGFaculty.SelectedValue) > 0)
                {
                    if (Convert.ToInt32(ddlUnGSubject.SelectedValue) > 0)
                        entity.UnderGraSubj_ID = Convert.ToInt32(ddlUnGSubject.SelectedValue);
                }

                if (Convert.ToInt32(ddlUnGShift.SelectedValue ) > 0)
                entity.UndrGraShiftID=Convert.ToInt32(ddlUnGShift.SelectedValue);

                if (Convert.ToInt32(ddlUngType.SelectedValue) > 0)
                entity.UndrGraTypesID=Convert.ToInt32(ddlUngType.SelectedValue);

                entity.PassingMonth_UnderGraduate   =null;
                entity.PassingYear_UnderGraduate = Convert.ToString(txtUnGrYear.Text);     
                entity.SemisterID_UnderGraduate=Convert.ToInt32(ddlUnGSemister.SelectedValue);
                  
                entity.Occupation      =txtOccupation.Text;  
                entity.Designation        =txtDeg.Text;
                entity.Present_Address = replace_(txtPreLoc.Text); 
                entity.Present_ContactNo        =txtPrePhn.Text;
                entity.Present_Mobile        =txtPreMob.Text;
                entity.Permanent_Address = replace_(txtParLoc.Text);    
                entity.Permanent_ContactNo     =txtParPhn.Text;   
                entity.Permanent_Mobile      =txtParMob.Text;  
                entity.Job_Office        =txtOfcLoc.Text;
                entity.JobOffice_PhnNo      =txtOffPhn.Text;  
                entity.Job_Location        =txtOfcLoc.Text;
                entity.Job_Experience = replace_(txtExp.Text);  
                entity.EMail_Address        =txtMail.Text;


                entity.Father_Name        =txtFName.Text;
                entity.Father_Occupation    =txtFOcc.Text;    
                entity.Mother_Name        =txtMName.Text;
                entity.Mother_Occupation   =txtMOcc.Text;     
                entity.Marital_Status  =txtMarSt.Text;      
                entity.Child_dtl    =txtChild.Text;
                entity.Spouse = txtSpouse.Text;
                entity.Religion      =txtRelign.Text;  
                entity.Blood_Group   =txtBlGr.Text;

                if (txtDate_Birth.Text != "")
                {
                    string MyString = txtDate_Birth.Text;
                    entity.Date_Birth = DateTime.ParseExact(MyString, "dd-MM-yyyy", CultureInfo.InvariantCulture);
                }
                else
                {
                    entity.Date_Birth = DateTime.Now;
                }

                entity.PictureLocation    =   Convert.ToString(Session["picloc"]);
                entity.Confirmation = 0;
                entity.Posting_Date =   DateTime.Now;



                Int32 Id = 0; 
                Int32 Id1 = 0;
                Int32 Id2 = 0;

            if (Submit.Text == "Submit")
            {
                 entity.InsertionTime = DateTime.Now;
                 entity.UserID = Convert.ToInt32(Session["userID"]);

                Id = objAlumniDAL.Add_Alumni(entity);
                
                    

                    if (Id > 0)
                    {
                        lblMessage.Text = "Data is Inserted Successfully";
                        lblMessage.ForeColor = Color.Green;
                        Clear();
                        BindList();
                    }
            }
            else
            {
                 entity.UpdateTime = DateTime.Now;
                 entity.UpdateUser = Convert.ToInt32(Session["userID"]);

                entity.Sl = Convert.ToInt32(txtSl.Text);
                Id = objAlumniDAL.Update_Alumni(entity);

                lblMessage.Text = "Data is Updated Successfully";
                lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                Submit.Text = "Submit";

                Response.Redirect("Admin_Alumni.aspx");
            }

        }

        public void Clear()
        {

            txtName.Text =  "";
            txtSl.Text = "";
            txtPriority.Text = "";
            txtConfirmation.Text = "";

            txtFName.Text = "";
            txtMName.Text = "";
            txtFOcc.Text = "";
            txtMOcc.Text = "";
            txtMarSt.Text = "";
            txtSpouse.Text = "";
            txtChild.Text = "";
            txtRelign.Text = "";
            txtBlGr.Text = "";
            txtDate_Birth.Text = "";

            txtPreLoc.Text = "";
            txtPrePhn.Text = "";
            txtPreMob.Text = "";

            txtParLoc.Text = "";
            txtParPhn.Text = "";
            txtParMob.Text = "";

            txtMail.Text = "";
            txtPictureLocation.Visible = false;
            txtPictureLocation.Text = "";

            txtUnGrID.Text = "";
            txtUnGrYear.Text = "";


            ddlUnGFaculty.SelectedIndex = 0;
            CommonBinder.LoadSubject_NULL(ddlUnGSubject);
            ddlUnGShift.SelectedIndex = 0;
            ddlUngType.SelectedIndex = 0;
            ddlUnGSemister.SelectedIndex = 0;



            txtGrID.Text = "";
            txtGrYear.Text = "";
            ddlGrFaculty.SelectedIndex = 0;
            

            CommonBinder.LoadSubject_NULL(ddlGrSubject);
            ddlGrShift.SelectedIndex = 0;
            ddlGrType.SelectedIndex = 0;
            ddlGrSemister.SelectedIndex = 0;

            txtOccupation.Text = "";
            txtDeg.Text = "";
            txtOfcLoc.Text = "";
            txtExp.Text = "";
            txtOffPhn.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
            Response.Redirect("Admin_Alumni.aspx");


        }

        protected void ddlUngFaculty_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ddlUnGSubject
            if (ddlUnGFaculty.SelectedIndex > 0)
            {
                //  undergraduateid=2;

                CommonBinder.LoadSubjectByFaculty_Prog(ddlUnGSubject, Int32.Parse(ddlUnGFaculty.SelectedValue), 2);
                ddlUnGSubject.Focus();
            }
        }

        protected void ddlSemister_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlGFaculty_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ddlGrFaculty
            if (ddlGrFaculty.SelectedIndex > 0)
            {
                //  graduateid=1;
                CommonBinder.LoadSubjectByFaculty_Prog(ddlGrSubject, Int32.Parse(ddlGrFaculty.SelectedValue), 1);
                ddlGrSubject.Focus();
            }
        }
        int i = 1;
        protected void grdAlumni_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void ddlGrSubject_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grdAlumni_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdAlumni.PageIndex = e.NewPageIndex;
            BindList();
        }

    }
}