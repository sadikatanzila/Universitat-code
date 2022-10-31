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
using Eastern_Uni.DAL;
using EasternUni.BO;

namespace Eastern_Uni
{
    public partial class HR_CandidateReg : System.Web.UI.Page
    {
        HR_JobPostDAL objHR_JobPostDAL = new HR_JobPostDAL();
        HR_CandidateDAL objHR_CandidateDAL = new HR_CandidateDAL();
        HR_WebCodeDAL objHR_WebCodeDAL = new HR_WebCodeDAL();
        HR_Ext_PostDAL objHR_Ext_PostDAL = new HR_Ext_PostDAL();

        string dtVal = null;
        string truckingNo = null;
       




        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["JobPost_ID"]) != "")
            {
                if (!Page.IsPostBack)
                {
                    pnlRegistration.Visible = true;

                    Int32 SerialNo = Convert.ToInt32(Session["JobPost_ID"]);
                    GetData_withPosition(SerialNo);
                    cexDateFrm.EndDate = System.DateTime.Now;

                    CommonBinder.NationName_LoadForDll(ddlNationality);
                }
                else
                {

                }
            }
            else
            {
                Response.Redirect("HR_Career.aspx");
            }
        }

        private void GetData_withPosition(int SerialNo)
        {
            HR_JobPost entity = new HR_JobPost();
            entity = objHR_JobPostDAL.HR_JobPost_GetBySl(SerialNo);
            lblPost.Text = entity.Job_Post;
        }

        #region create_TrackingNo
        string truckingExt = null;
        protected void CreateTruckingNo()
        {
            Int32 SerialNo = Convert.ToInt32(Session["JobPost_ID"]);
            HR_JobPost entity = new HR_JobPost();
            entity = objHR_JobPostDAL.HR_JobPost_GetTruckingExt(SerialNo);
            truckingExt = Convert.ToString(entity.TruckingExt) + "" + Convert.ToString(entity.Year) + "" + Convert.ToString(entity.SemisterID);

            string ext = Convert.ToString(entity.TruckingExt);


            HR_WebCode Extention = new HR_WebCode();
            Extention = objHR_WebCodeDAL.HR_WebCode_GetTruckingExt(ext);
            int Sl = Extention.WebCode_Sl;

            string code = "";

            int no = Convert.ToInt32(Extention.Code); 
          
            if (no < 10)
                code = "00000000" + no;
            else if (no < 100)
                code = "0000000" + no;
            else if (no < 1000)
                code = "000000" + no;
            else if (no < 10000)
                code = "00000" + no;
            else if (no < 100000)
                code = "0000" + no;
            else if (no < 1000000)
                code = "000" + no;
            else if (no < 10000000)
                code = "00" + no;


            Int32 Id = objHR_WebCodeDAL.TruckingExt_Update(Extention);


            MsgError.Text = truckingExt +""+ code;

            Session["TrackingNo"] = MsgError.Text;
        }


      

        #endregion


        #region Submission
        

        protected void btnReg_Click(object sender, EventArgs e)
        {
           
            Save_CandidateInfo();
            
          //  pnlForm.Visible = true;

            
        }

        

        private void Save_CandidateInfo()
        {
            HR_Candidate entity = new HR_Candidate();
            HR_Ext_Post ent = new HR_Ext_Post();

            CreateTruckingNo();

            if (Convert.ToString(Session["TrackingNo"]) != null)
            {

                entity.Name = txtName.Text;
                entity.CandidateNID = txtNationID.Text;
                entity.Birth_Date = DateTime.ParseExact(txtBirthDate.Text, "MM/dd/yyyy", CultureInfo.CurrentCulture);
                entity.Nationality = Convert.ToInt32(ddlNationality.SelectedValue);
                entity.Mobile = txtMobile.Text;
                entity.Gardian = txtGardian.Text;
                entity.Mother = txtMother.Text;
                entity.GenderID = Convert.ToInt32(ddlGender.SelectedValue);
                entity.Gender = Convert.ToString(ddlGender.SelectedItem);
                entity.Religion = Convert.ToInt32(ddlReligion.SelectedValue);
                entity.Maritial = Convert.ToInt32(ddlMaritial.SelectedValue);
                entity.E_Mail = txtMail.Text;
                entity.P_Address = txtPreAdd.Text;
                entity.Per_Address = txtPerAdd.Text;

                entity.TrackingNo = Convert.ToString(Session["TrackingNo"]);

                entity.Join_Date = Convert.ToDateTime(DateTime.Now);
               

                //join date will be activated after joining
                //entity.Join_Date = DateTime.ParseExact(txttoDate.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture);

                //***** only for intertion time
                entity.InsertionTime = Convert.ToDateTime(DateTime.Now);




                ent.JobPost_ID = Convert.ToInt32(Session["JobPost_ID"]);
                ent.TrackingNo = Convert.ToString(Session["TrackingNo"]);

                Int32 Id = 0, Id1 =0;
                Id = objHR_CandidateDAL.Add_HR_Candidate(entity);
                Id1 = objHR_Ext_PostDAL.HR_Ext_Post_Add(ent);

                if (Id > 0 && Id1 > 0 && Convert.ToString(Session["JobPost_ID"]) != "" && Convert.ToString(Session["TrackingNo"]) != "")
                {

                    Response.Redirect("HR_CandidateForm.aspx");

                }
                else
                    MsgError.Text="insertion MergeFailed";

                string status = "";
            }

            else
            {
                MsgError.Text = "";//*************************************errormsg
            }
          //  string code = obj_db.get_pk_no("staff");
           // status = objHR_CandidateDAL.save_newTeacher_info(entity);
        }
        #endregion


        //---------------------------------------------------------------------------

        #region unnecessary_code
       

        private string CalculateAge(DateTime Dob)
        {
            DateTime Now = DateTime.Now;
            int Years = new DateTime(DateTime.Now.Subtract(Dob).Ticks).Year - 1;
            DateTime PastYearDate = Dob.AddYears(Years);
            int Months = 0;
            for (int i = 1; i <= 12; i++)
            {
                if (PastYearDate.AddMonths(i) == Now)
                {
                    Months = i;
                    break;
                }
                else if (PastYearDate.AddMonths(i) >= Now)
                {
                    Months = i - 1;
                    break;
                }
            }
            int Days = Now.Subtract(PastYearDate.AddMonths(Months)).Days;
            int Hours = Now.Subtract(PastYearDate).Hours;
            int Minutes = Now.Subtract(PastYearDate).Minutes;
            int Seconds = Now.Subtract(PastYearDate).Seconds;
            return String.Format("Age: {0} Year(s) {1} Month(s) {2} Day(s) ",
                                Years, Months, Days);

            //{3} Hour(s) {4} Second(s) 
            //, Hours, Seconds
        }

        protected void btnGetAge_Click(object sender, EventArgs e)
        {
            try
            {
                dtVal = Convert.ToString(DateTime.ParseExact(txtDOB.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture));

              //  dtVal = txtDOB.Text.Trim();
                DateTime Dob = Convert.ToDateTime(dtVal);
                txtCalculatedAge.Text = CalculateAge(Dob);
            }
            catch { }
        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {
           

            try
            {
                dtVal = Convert.ToString(DateTime.ParseExact(txtDOB.Text, "dd/MM/yyyy", CultureInfo.CurrentCulture));
                DateTime Dob = Convert.ToDateTime(dtVal);
                txtAge1.Text = CalculateAge(Dob);
            }
            catch { }
        }

        #endregion

       

    }
}