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


namespace Eastern_Uni
{
    public partial class HR_AcademicInfo : System.Web.UI.Page
    {

        HR_CanEduDAL objHR_CanEduDAL = new HR_CanEduDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Trucking = Convert.ToString(Session["TrackingNo"]);
                CommonBinder.InsType_LoadForDll(ddlInsType);
                CommonBinder.ExamType_LoadForDll(ddlExam);
                txt_trucking.Text = Convert.ToString(Trucking);


                BindGridAcademic();

                txt_Grade.Visible = false;
                txt_CGPA_outOf.Visible = false;
                txt_Devision.Visible = false;
                txt_Marks.Visible = false;

                lblGrade_div.Text = "";
                lblGrade_div1.Text = "";
            }
        }


        private void BindGridAcademic()
        {
            string TruckingNo = Convert.ToString(Session["TrackingNo"]);
            List<HR_CanEdu> HR_CandidateList = objHR_CanEduDAL.HR_CanEdu_GetAll(TruckingNo);
            grdAcademic.DataSource = HR_CandidateList;
            grdAcademic.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            save();


           // Response.Redirect("HR_CandidateForm.aspx");
        }

        public void save()
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
                    lblMsg.Text = "Use atleast one result insertion type";
                    ddlResType.Focus();
                }

            entity.TrackingNo = txt_trucking.Text;

            Int32 Id = 0;
            Id = objHR_CanEduDAL.Add_HR_CanEdu(entity);

            if (Id > 0 )
            {

                lblMsg.Text = "saved successfully";
                BindGridAcademic();
                Clear();

            }
            else
                lblMsg.Text = "insertion Failed";


        }

        private void Clear()
        {
             txt_Ins.Text="";
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
        protected void ddlResType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlResType.SelectedValue) == 1)
            {
                txt_Grade.Visible = true;
                txt_CGPA_outOf.Visible = true;
                txt_Devision.Visible = false;
                txt_Marks.Visible = false;

                lblGrade_div.Text = "Result Achieved";
                lblGrade_div1.Text = "Result Out Of";
            }
            else if (Convert.ToInt32(ddlResType.SelectedValue) == 2)
            {
                txt_Grade.Visible = false;
                txt_CGPA_outOf.Visible = false;
                txt_Devision.Visible = true;
                txt_Marks.Visible = true;

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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HR_CandidateForm.aspx");
        }

        
    }
}