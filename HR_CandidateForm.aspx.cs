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

using System.IO;

namespace Eastern_Uni
{
    public partial class HR_CandidateForm : System.Web.UI.Page
    {
        HR_JobCircularDAL objHR_JobCircularDAL = new HR_JobCircularDAL();
        HR_CandidateDAL objHR_CandidateDAL = new HR_CandidateDAL();
        HR_CanEduDAL objHR_CanEduDAL = new HR_CanEduDAL();
        HRCan_TeachExpDAL objHRCan_TeachExpDAL = new HRCan_TeachExpDAL();




        SqlConnection con = new SqlConnection("Data Source=localhost\\sqlexpress;Initial Catalog=Eastern_University;Persist Security Info=True;User ID=sa;Password=1086042g6");
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Convert.ToString(Session["JobPost_ID"]) != "" && Convert.ToString(Session["TrackingNo"]) != "")
                || (Convert.ToString(Session["TrackingNo"]) != "" && Convert.ToString(Session["Password"]) != ""))
            {
                if (!IsPostBack)
                {
                    if (Convert.ToString(Session["JobPost_ID"]) != "")
                    {
                        Int32 SerialNo = Convert.ToInt32(Session["JobPost_ID"]);
                    }


                    CommonBinder.NationName_LoadForDll(ddlNationality);
                    CommonBinder.InsType_LoadForDll(ddlInsType);
                    CommonBinder.ExamType_LoadForDll(ddlExam);

                    BindGridAcademic();
                    BindGridTeachingExp();

                    //   CommonBinder.NationName_LoadForDll(ddlInsType);

                    lbltrucking.Text = "your trucking number is " + " " + Convert.ToString(Session["TrackingNo"]);
                  
                    BindPrevData();


                    pnlAcademicInfo.Visible = false;
                    pnlAdminisInfo.Visible = false;
                    pnlTeachingInfo.Visible = false;

                    
                    //  else if (pnlAdminisInfo.Visible == true)
                    //  {
                    //      CommonBinder.LoadDept_byCategory(ddlFaculty, 1);
                    //  }
                    // CommonBinder.NationName_LoadForDll(ddlNationality);

                }


                Submit1_ServerClick(sender, e);
/*
                if (Session["imageName"] == "" || Session["imageName"] == null)
                {
                    if (IsPostBack && FileUpload1.PostedFile != null)
                    {

                        string name = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        Session["imageName"] = name;

                        FileUpload1.SaveAs(Server.MapPath("~/" + name));


                        Image1.ImageUrl = FileUpload1.FileName;

                        lblimage.Text = FileUpload1.FileName;

                     //   Session["imageName"] = lblimage.Text;

                    }
                }
                else
                {
                    if (IsPostBack && FileUpload1.PostedFile != null)
                    {

                        string name =Convert.ToString(Session["imageName"]);


                        FileUpload1.SaveAs(Server.MapPath("~/" + name));


                        Image1.ImageUrl = FileUpload1.FileName;

                        lblimage.Text = FileUpload1.FileName;

                    //    Session["imageName"] = lblimage.Text;

                    }
                }
              

                */
            }

            else
            {

                Response.Redirect("HR_CandLogin.aspx");
            }

        }

        protected string replace_(string st)
        {

            //Regex rx = new Regex(" ");
            //string s1 = rx.Replace(st, "&nbsp;");
            Regex ry = new Regex("\r\n|\n|\r");
            string s2 = ry.Replace(st, "<br/>");
            return s2;


        }

        protected string replaceOposite(string st)
        {

            //Regex rx = new Regex("&nbsp;");
            //string s1 = rx.Replace(st, " ");
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

        private void Submit1_ServerClick(object sender, System.EventArgs e)
        {

           

            if (File1.PostedFile != null)
            {
                int fileLen;
                fileLen = File1.PostedFile.ContentLength;
                byte[] input = new byte[fileLen];
                // input = File1.FileBytes;

                string fn = System.IO.Path.GetFileName(File1.PostedFile.FileName);
                string[] fileExtension = fn.Split('.');
                string f_name = fn.Split('\\')[fn.Split('\\').Length - 1];


                if (((File1.PostedFile != null) && (File1.PostedFile.ContentLength > 0)))
                {
                    string prePicName = System.IO.Path.GetFileName(File1.PostedFile.FileName);

                    string SaveLocation = Server.MapPath("Candidate") + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];
                    Session["SaveLocation"] = SaveLocation;
                    File1.PostedFile.SaveAs(SaveLocation);

                    //   string SaveLocation = Server.MapPath("Math_Olympiad") + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];
                    //Server.MapPath("Math_Olympiad") + "\\" + fn;
                    Session["picloc"] = "Candidate" + "/" + Session["TrackingNo"] + "." + prePicName.Split('.')[prePicName.Split('.').Length - 1];//"Math_Olympiad" + "/" + fn;
                    Session["imageName"] = Session["picloc"];

                    try
                    {
                        File1.PostedFile.SaveAs(SaveLocation);
                        // Response.Write("The file has been uploaded.");
                        lblUpImMsg.Text = "The file has been uploaded.";
                    }
                    catch (Exception ex)
                    {
                        // Response.Write("Error: " + ex.Message);
                        lblUpImMsg.Text = "Error to upload file";
                    }
                }
                else
                    if (Session["imageName"] != null)
                    {
                        Session["picloc"] = Session["imageName"];
                        lblUpImMsg.Text = Convert.ToString(Session["picloc"]);
                    }
                    else
                    {
                        if (Session["imageName"] == null && Session["picloc"] == null)
                            Response.Write("Please select a file to upload.");
                        //Session["picloc"] = null;
                    }



            }

            if (Session["imageName"] != null)
            {
                Session["picloc"] = Session["imageName"];
                lblUpImMsg.Text = Convert.ToString(Session["picloc"]);

            }
          

        }
            
        



        #endregion
        

        #region Submission
        protected void BindPrevData()
        {
            string truckingNo = Convert.ToString(Session["TrackingNo"]);

            HR_Candidate entity = new HR_Candidate();
            entity = objHR_CandidateDAL.Get_HR_CandidateInfo(truckingNo);
            txtName.Text = entity.Name;
            txtBirthDate.Text = entity.Birth_Date.ToString("dd/MM/yyyy"); //Convert.ToString(entity.Birth_Date);
            txtNationID.Text = Convert.ToString(entity.CandidateNID);




            ddlGender.SelectedValue = entity.GenderID.ToString();
            ddlReligion.SelectedValue = entity.Religion.ToString();
            ddlMaritial.SelectedValue = entity.Maritial.ToString();
            ddlNationality.SelectedValue = entity.Nationality.ToString();

            txtMobile.Text = entity.Mobile;
            txtGardian.Text = entity.Gardian;
            txtMother.Text = entity.Mother;

            txtMail.Text = entity.E_Mail;
            txtPreAdd.Text = replaceOposite(entity.P_Address);
            txtPerAdd.Text = replaceOposite(entity.Per_Address);

            ///bind data into readonly text box with their trucking no


        }
        #endregion



        /*

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            // find values for update
            TextBox txtname = (TextBox)GridView1.FooterRow.FindControl("txt_Name");
            TextBox txtbranch = (TextBox)GridView1.FooterRow.FindControl("txt_Branch");
            TextBox txtcity = (TextBox)GridView1.FooterRow.FindControl("txt_City");

            // insert values into database
            SqlCommand cmd = new SqlCommand("insert into Clubs(Name,Details,Objectives) values('" + txtname.Text + "','" + txtbranch.Text + "','" + txtcity.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            BindGridView();
        }

         
        

        protected void BindGridView()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("Select ClubsID, Name,Details,Objectives from Clubs", con);
            con.Open();
            da.Fill(dt);
            con.Close();

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
         * */
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label4.Text = "DeletedRow";
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Label4.Text = "EditedRow";
        }





        protected void btnSaveAdminisExp_Click(object sender, EventArgs e)
        {

        }













        #region AcademicBackground

        private void BindGridAcademic()
        {
            string TruckingNo = Convert.ToString(Session["TrackingNo"]);
            List<HR_CanEdu> HR_CandidateList = objHR_CanEduDAL.HR_CanEdu_GetAll(TruckingNo);
            grdAcademic.DataSource = HR_CandidateList;
            grdAcademic.DataBind();
        }

        protected void ddlResType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlResType.SelectedValue) == 1)
            {
                txt_Grade.Visible = true;
                txt_CGPA_outOf.Visible = true;
                txt_Devision.Visible = false;
                txt_Marks.Visible = false;

                txt_Grade.Focus();

                lblGrade_div.Text = "Result Achieved";
                lblGrade_div1.Text = "Result Out Of";
            }
            else if (Convert.ToInt32(ddlResType.SelectedValue) == 2)
            {
                txt_Grade.Visible = false;
                txt_CGPA_outOf.Visible = false;
                txt_Devision.Visible = true;
                txt_Marks.Visible = true;

                txt_Devision.Focus();

                lblGrade_div.Text = "Result Achieved";
                lblGrade_div1.Text = "Marks Obtained";
            }
            else
            {
                txt_Grade.Visible = false;
                txt_CGPA_outOf.Visible = false;
                txt_Devision.Visible = false;
                txt_Marks.Visible = false;

                lblGrade_div.Text = "";
                lblGrade_div.Text = "";
            }

        }



        protected void grdAcademic_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void grdAcademic_RowEditing(object sender, GridViewEditEventArgs e)
        {
            pnlAcademicInfo.Visible = true;
            pnlAdminisInfo.Visible = false;
            pnlTeachingInfo.Visible = false;



            lblmsgAcademic.Text = string.Empty;
            e.Cancel = true;

            GetAcademicSelectedData(e);
            btnSaveAcademic.Text = "Update";
        }


        private void GetAcademicSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            HR_CanEdu entity = new HR_CanEdu();
            Int32 CanEdu_Sl = Convert.ToInt32(grdAcademic.DataKeys[e.NewEditIndex].Value);
            entity = objHR_CanEduDAL.Get_HR_CanEduInfoID(CanEdu_Sl);

            ddlExam.SelectedValue = entity.ExamId.ToString();
            ddlInsType.SelectedValue = entity.InstitutionType_ID.ToString();
            txt_Ins.Text = entity.Institution;
            txt_PassYear.Text = entity.Passing_Year;
            txt_Subj.Text = entity.MajorSubject;

            ddlResType.SelectedValue = entity.Result_Type.ToString();




            if (Convert.ToInt32(ddlResType.SelectedValue) == 1)
            {
                txt_Grade.Text = entity.Grade;
                txt_CGPA_outOf.Text = entity.CGPA_outOf;
                lblGrade_div.Text = "Result Achieved";
                lblGrade_div1.Text = "Result Out Of";

                txt_Devision.Visible = false;
                txt_Marks.Visible = false;
            }
            else
                if (Convert.ToInt32(ddlResType.SelectedValue) == 2)
                {
                    txt_Devision.Text = entity.Devision;
                    txt_Marks.Text = entity.Marks;
                    lblGrade_div.Text = "Result Achieved";
                    lblGrade_div1.Text = "Marks Obtained";

                    txt_Grade.Visible = false;
                    txt_CGPA_outOf.Visible = false;

                }


            txtTruckingEdu.Text = entity.TrackingNo;
            txtAcademicInfoID.Text = Convert.ToString(entity.CanEdu_Sl);




        }

        protected void grdAcademic_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(grdAcademic.DataKeys[e.RowIndex].Value);


            int success = objHR_CanEduDAL.HR_CanEdu_Delete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblmsgAcademic.Text = "Data is being Deleted";
                BindGridAcademic();
            }
        }

        protected void grdAcademic_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdAcademic.PageIndex = e.NewPageIndex;
            BindGridAcademic();
        }


        protected void btnSaveAcademic_Click(object sender, EventArgs e)
        {
           string crntYear = DateTime.Now.Year.ToString();

           if (Convert.ToInt32(crntYear) < Convert.ToInt32(txt_PassYear.Text))
           {
               lblmsgAcademic.Text = "Passing year must be less or equal than current year";
               lblmsgAcademic.ForeColor = Color.Red;
               txt_PassYear.Focus();
           }
           else
           {
               saveAcademicInfo();
           }

            
        }


        private void saveAcademicInfo()
        {
            HR_CanEdu entity = new HR_CanEdu();
            entity.ExamId = Convert.ToInt32(ddlExam.SelectedValue);
            entity.InstitutionType_ID = Convert.ToInt32(ddlInsType.SelectedValue);
            entity.Institution = txt_Ins.Text;
            entity.Passing_Year = txt_PassYear.Text;
            entity.MajorSubject = txt_Subj.Text;


            entity.Result_Type = Convert.ToString(ddlResType.SelectedValue);

            if (Convert.ToInt32(ddlResType.SelectedValue) == 1)
            {
                entity.Grade = txt_Grade.Text;
                entity.CGPA_outOf = txt_CGPA_outOf.Text;
            }
            else
                if (Convert.ToInt32(ddlResType.SelectedValue) == 2)
                {
                    entity.Devision = txt_Devision.Text;
                    entity.Marks = txt_Marks.Text;
                }
                else
                {
                    lblmsgAcademic.Text = "Use atleast one result insertion type";
                    ddlResType.Focus();
                }
            entity.TrackingNo = Convert.ToString(Session["TrackingNo"]);// lbltrucking.Text;

            Int32 Id = 0;
            if (btnSaveAcademic.Text == "Save")
            {
                // txt_trucking.Text;


                Id = objHR_CanEduDAL.Add_HR_CanEdu(entity);

                if (Id > 0)
                {

                    lblmsgAcademic.Text = "saved successfully";
                    BindGridAcademic();
                    ClearAcademicInfo();

                }
                else
                    lblmsgAcademic.Text = "insertion Failed";

            }
            else
            {

                entity.CanEdu_Sl = Convert.ToInt32(txtAcademicInfoID.Text);

                Id = objHR_CanEduDAL.Update_HR_CanEdu(entity);

                lblmsgAcademic.Text = "Data is Updated Successfully";
                lblmsgAcademic.ForeColor = Color.Green;
                ClearAcademicInfo();
                BindGridAcademic();
                btnSaveAcademic.Text = "Save";
            }

        }
        protected void btnClearAcademic_Click(object sender, EventArgs e)
        {
            ClearAcademicInfo();
        }

        private void ClearAcademicInfo()
        {
            txt_Ins.Text = "";
            txt_PassYear.Text = "";
            txt_Subj.Text = "";
            txt_Grade.Text = "";
            txt_CGPA_outOf.Text = "";
            txt_Devision.Text = "";
            txt_Marks.Text = "";
            ddlExam.SelectedValue = "0";
            ddlInsType.SelectedValue = "0";
            ddlResType.SelectedValue = "-1";
        }

        #endregion







        #region Pnl_controlling
        protected void btnAddAcdInfo_Click(object sender, EventArgs e)
        {
            pnlAcademicInfo.Visible = true;
            pnlAdminisInfo.Visible = false;
            pnlTeachingInfo.Visible = false;

            ddlExam.Focus();
        }


        protected void btnAdminisInfo_Click(object sender, EventArgs e)
        {
            pnlAdminisInfo.Visible = true;
            pnlTeachingInfo.Visible = false;
            pnlAcademicInfo.Visible = false;


            txtCompany.Focus();
        }

        protected void btnTeachingInfo_Click(object sender, EventArgs e)
        {
           CommonBinder.LoadDept_byCategory(ddlFaculty, 2);
           CommonBinder.LoadFacDegType_LoadForDll(ddl_desg);

            pnlTeachingInfo.Visible = true;
            pnlAdminisInfo.Visible = false;
            pnlAcademicInfo.Visible = false;

            txt_Uni.Focus();
        }

       

        #endregion


      


        #region Teaching_Exp

        private void BindGridTeachingExp()
        {
            string TruckingNo = Convert.ToString(Session["TrackingNo"]);
            List<HRCan_TeachExp> HR_CandidateList = objHRCan_TeachExpDAL.HRCan_TeachExp_GetAll(TruckingNo);
            grdTeachingExp.DataSource = HR_CandidateList;
            grdTeachingExp.DataBind();
        }


        protected void txt_ExpTodate_TextChanged(object sender, EventArgs e)
        {
            // entity.ExpTo = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy"))

            if (txt_ExpFrmdate.Text != "" && txt_ExpTodate.Text != "")
            {
                DateTime FromYear = DateTime.ParseExact(txt_ExpFrmdate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);//Convert.ToDateTime(txt_ExpFrmdate.Text);
                DateTime ToYear = DateTime.ParseExact(txt_ExpTodate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);//Convert.ToDateTime(txt_ExpTodate.Text);

                TimeSpan objTimeSpan = ToYear - FromYear;

                int Years = ToYear.Year - FromYear.Year;
                int month = ToYear.Month - FromYear.Month;

                if (month < 0)
                {
                    Years = Years - 1;
                    month = month + 12;
                }

                int TotalMonths = (Years * 12) + month;
                double Days = Convert.ToDouble(objTimeSpan.TotalDays);

                Teaching_tdYear.InnerText = Years + "  Year  " + month + "  Months";

                lblTeaching_tdYear.Text = Convert.ToString(Years);
                lblTeaching_tdMonths.Text = Convert.ToString(month);

                Teaching_tdMonths.InnerText = Convert.ToString(TotalMonths);
                Teaching_tdDays.InnerText = Convert.ToString(Days);

            }

            else
            {
                lblMsgTeachingExp.Text = "";
            }

            //   TeachingExp_ModalPopupExtender.Show();
            txt_TSuper.Focus();
        }




        protected void btnSaveTeachingExp_Click(object sender, EventArgs e)
        {
            string crntYear = DateTime.Now.Year.ToString();
            if (Convert.ToInt32(ddlCurrentJob.SelectedValue) != 0)
            {
                saveTeachingExpInfo();
            }

            

        }

        protected void saveTeachingExpInfo()
        {
            HRCan_TeachExp entity = new HRCan_TeachExp();
            entity.TrackingNo = Convert.ToString(Session["TrackingNo"]);// lbltrucking.Text;
            entity.Uni_Inst = replace_(txt_Uni.Text);
            entity.Address = replace_(txt_OfficialUni.Text);
          


            entity.FacultyID = Convert.ToInt32(ddlFaculty.SelectedValue);
            entity.Faculty_others = txt_Dept.Text;
            entity.Subject = txt_Subject.Text;
            entity.DesignationID = Convert.ToInt32(ddl_desg.SelectedValue);
            entity.Designation = Convert.ToString(ddl_desg.SelectedItem);

           
            entity.Job_Responsibility = replace_(txt_JResponsT.Text);
            entity.ResearchInst = replace_(txt_Research.Text);
            entity.Supervisor = txt_TSuper.Text;
            entity.SprVisrContactNo = txt_TSuperContact.Text;
            entity.Tyear = lblTeaching_tdYear.Text;
            entity.Tmonth = lblTeaching_tdMonths.Text;
            entity.Tday = Teaching_tdDays.InnerText;

            entity.ExpFrm = DateTime.ParseExact(txt_ExpFrmdate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);
           // entity.Result_Type = Convert.ToString(ddlResType.SelectedValue);

            if (Convert.ToInt32(ddlCurrentJob.SelectedValue) == 1)
            {
                entity.ExpTo = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy")) ;//Convert.ToDateTime(DateTime.Now);

            }
            else
                if (Convert.ToInt32(ddlCurrentJob.SelectedValue) == 2)
                {
                    entity.ExpTo = DateTime.ParseExact(txt_ExpTodate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);

                }
               
               
          

            Int32 Id = 0;
            if (btnSaveTeachingExp.Text == "Save")
            {
                // txt_trucking.Text;


                Id = objHRCan_TeachExpDAL.Add_HRCan_TeachExp(entity);

                if (Id > 0)
                {

                    lblMsgTeachingExp.Text = "saved successfully";
                    BindGridTeachingExp();
                    ClearTeachingExp();

                }
                else
                    lblMsgTeachingExp.Text = "insertion Failed";

            }
            else
            {

                entity.Can_TeachExpID = Convert.ToInt32(txt_CanTeachExpID.Text);

                Id = objHRCan_TeachExpDAL.Update_HRCan_TeachExp(entity);

                lblMsgTeachingExp.Text = "Data is Updated Successfully";
                lblMsgTeachingExp.ForeColor = Color.Green;
                ClearTeachingExp();
                BindGridTeachingExp();
                btnSaveTeachingExp.Text = "Save";
            }

        }

        protected void btnClearTeachingExp_Click(object sender, EventArgs e)
        {
            ClearTeachingExp();
        }

        protected void ClearTeachingExp()
        {
            txt_Uni.Text = "";
            txt_OfficialUni.Text = "";
            ddlFaculty.SelectedIndex = 0;
            ddl_desg.SelectedIndex = 0;
            txt_Dept.Text = "";
            txt_Dept.Visible = false;
            txt_Desg.Text = "";
            txt_Desg.Visible = false;
            txt_JResponsT.Text = "";
            txt_Research.Text = "";
            txt_ExpFrmdate.Text = "";
            txt_ExpTodate.Visible = false;
            txt_ExpTodate.Text = "";
            txt_Subject.Text = "";

            txt_TSuper.Text = "";
            txt_TSuperContact.Text = "";

            Teaching_tdYear.InnerText = "";
            Teaching_tdMonths.InnerText = "";
            Teaching_tdDays.InnerText = "";

            lblTeaching_tdYear.Text = "";
            lblTeaching_tdMonths.Text = "";
            txt_CanTeachExpID.Text = "";


        }

        protected void ddlCurrentJob_SelectedIndexChanged(object sender, EventArgs e)
        {
            // TeachingExp_ModalPopupExtender.Show();

            if (Convert.ToInt32(ddlCurrentJob.SelectedValue) == 1)
            {
                lblExpTo.Visible = false;
                txt_ExpTodate.Visible = false;

                if (txt_ExpFrmdate.Text != "" && (txt_ExpTodate.Text == "" || Convert.ToInt32(ddlCurrentJob.SelectedValue) == 1))
                {


                    DateTime FromYear = DateTime.ParseExact(txt_ExpFrmdate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);//Convert.ToDateTime(txt_ExpFrmdate.Text);
                    DateTime ToYear = DateTime.ParseExact(DateTime.Now.ToString("dd/MM/yyyy"), "dd/MM/yyyy", CultureInfo.CurrentCulture);//Convert.ToDateTime(txt_ExpTodate.Text);

                    TimeSpan objTimeSpan = ToYear - FromYear;

                    int Years = ToYear.Year - FromYear.Year;
                    int month = ToYear.Month - FromYear.Month;

                    if (month < 0)
                    {
                        Years = Years - 1;
                        month = month + 12;
                    }

                    int TotalMonths = (Years * 12) + month;
                    double Days = Convert.ToDouble(objTimeSpan.TotalDays);

                    Teaching_tdYear.InnerText = Years + "  Year  " + month + "  Months";

                    lblTeaching_tdYear.Text = Convert.ToString(Years);
                    lblTeaching_tdMonths.Text = Convert.ToString(month);

                    Teaching_tdMonths.InnerText = Convert.ToString(TotalMonths);
                    Teaching_tdDays.InnerText = Convert.ToString(Days);



                    txt_TSuper.Focus();
                }
            }
            else if (Convert.ToInt32(ddlCurrentJob.SelectedValue) == 2)
            {
                lblExpTo.Visible = true;
                txt_ExpTodate.Visible = true;
                txt_ExpTodate.Focus();
            }
            else
            {
                lblMsgTeachingExp.Text = "";
            }
        }
        


        protected void ddlFaculty_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlFaculty.SelectedValue) != 10)
            {
                txt_Dept.Visible = false;
                txt_Subject.Focus();
            }
            else
            {
                txt_Dept.Visible = true;
                txt_Dept.Focus();
            }
        }
        #endregion











        #region Administrative_Exp
        protected void btnSaveAdExp_Click(object sender, EventArgs e)
        {

        }

        protected void btnClearAdExp_Click(object sender, EventArgs e)
        {

        }


        protected void ddlCrnt_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlCrnt.SelectedValue) == 1)
            {
                lbl_ExpTo.Visible = false;
                txtExpto_Ad.Visible = false;
                txtSupervisor.Focus();
            }
            else if (Convert.ToInt32(ddlCrnt.SelectedValue) == 2)
            {
                lbl_ExpTo.Visible = true;
                txtExpto_Ad.Visible = true;
                txtExpto_Ad.Focus();
            }
        }


        protected void txtExpto_Ad_TextChanged(object sender, EventArgs e)
        {
            if (txtExpfrm_Ad.Text != "" && txtExpto_Ad.Text != "")
            {

                DateTime FromYear = DateTime.ParseExact(txtExpfrm_Ad.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);//Convert.ToDateTime(txt_ExpFrmdate.Text);
                DateTime ToYear = DateTime.ParseExact(txtExpto_Ad.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);//Convert.ToDateTime(txt_ExpTodate.Text);

                TimeSpan objTimeSpan = ToYear - FromYear;

                int Years = ToYear.Year - FromYear.Year;
                int month = ToYear.Month - FromYear.Month;

                if (month < 0)
                {
                    Years = Years - 1;
                    month = month + 12;
                }

                int TotalMonths = (Years * 12) + month;
                double Days = Convert.ToDouble(objTimeSpan.TotalDays);

                Admins_tdYear.InnerText = Years + "  Year  " + month + "  Months";
                Admins_tdMonths.InnerText = Convert.ToString(TotalMonths);
                Admins_tdDays.InnerText = Convert.ToString(Days);
            }
        }


        #endregion

        /*  protected void chkFacOthers_CheckedChanged(object sender, EventArgs e)
        {
            if (chkFacOthers.Checked != true)
            {
                txt_Dept.Visible = false;
                txt_Subject.Focus();
            }
            else
            {
                txt_Dept.Visible = true;
                txt_Dept.Focus();
            }
        }
       
        protected void chkAdmOthers_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAdmOthers.Checked != true)
            {
                txt_Desg.Visible = false;
                txt_JResponsT.Focus();
            }
            else
            {
              
                txt_Desg.Visible = true;
                txt_Desg.Focus();
            }
            
        }
         */
       

       

















        /*  protected void grdAcademic_Ondatabound(object sender, EventArgs e)
         {
             DropDownList ddlInsType = (DropDownList)grdAcademic.FooterRow.FindControl("ddlInsType");
            // DropDownList ddlInsType = grdAcademic.FooterRow.FindControl("ddlInsType") as DropDownList;

            ddlInsType.DataSource = GetData("SELECT DISTINCT Country FROM Customers");
             ddlInsType.DataTextField = "Country";
             ddlInsType.DataValueField = "Country";
             ddlInsType.DataBind();
             ddlInsType.Items.Insert(0, new ListItem("Select Country", "0"));
             

             CommonBinder.InsType_LoadForDll(ddlInsType);
         }
        
        protected void grdAcademic_OnRowdatabound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                DropDownList ddlInsType = (DropDownList)e.Row.FindControl("ddlInsType");
                DataSet ds = new DataSet();
                con.Open();
                string cmdstr = "SELECT * FROM HR_InsType";
                SqlCommand cmd = new SqlCommand(cmdstr, con);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
                ddlInsType.DataSource = ds.Tables[0];
                ddlInsType.DataTextField = "InstitutionType";
                ddlInsType.DataValueField = "InstitutionType_ID";
                ddlInsType.DataBind();
                ddlInsType.Items.Insert(0, new ListItem("--Select--", "0"));
                con.Close();
            }

           // CommonBinder.InsType_LoadForDll(ddlInsType);


        }

        protected void grdAcademic_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("ADD"))
            {
                TextBox txtAddEmpID = (TextBox)grdAcademic.FooterRow.FindControl("txtAddEmpID");
                TextBox txtAddName = (TextBox)grdAcademic.FooterRow.FindControl("txtAddName");
                DropDownList ddlInsType = (DropDownList)grdAcademic.FooterRow.FindControl("ddlInsType");
                TextBox txtAddCity = (TextBox)grdAcademic.FooterRow.FindControl("txtAddCity");
                TextBox txtAddCountry = (TextBox)grdAcademic.FooterRow.FindControl("txtAddCountry");

                con.Open();
                string cmdstr = "insert into EmployeeDetails(empid,name,designation,city,country) values(@empid,@name,@designation,@city,@country)";
                SqlCommand cmd = new SqlCommand(cmdstr, con);
                cmd.Parameters.AddWithValue("@empid", txtAddEmpID.Text);
                cmd.Parameters.AddWithValue("@name", txtAddName.Text);
                cmd.Parameters.AddWithValue("@designation", ddlInsType.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@city", txtAddCity.Text);
                cmd.Parameters.AddWithValue("@country", txtAddCountry.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                BindGridAcademic();
            }
        }
         * 
         *  */
    }
}