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
    public partial class HR_Careerdtl : System.Web.UI.Page
    {
        SqlDataAdapter dadapter_e;
        DataSet dset_e;
        PagedDataSource adsource_e;
        string connstring_e = "database=Eastern_University;server=localhost\\sqlexpress;user=sa;password=1086042g6";
        int pos_e;

        HR_JobPostDAL objHR_JobPostDAL = new HR_JobPostDAL();
        string sql;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["JobPost_ID"]) != "")
            {
                if (!Page.IsPostBack)
                {
                    GetSelectedData();
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


        private void GetSelectedData()
        {
            HR_JobPost entity = new HR_JobPost();

            Int32 SerialNo = Convert.ToInt32(Session["JobPost_ID"]);

            entity = objHR_JobPostDAL.HR_JobPost_GetBySl(SerialNo);




            lblPost.Text =Convert.ToString(entity.Job_Post);


            if (Convert.ToString(entity.Responsibility) != "")
            {
                Label2.Visible = true;
                lblEU.Visible = true;

                lblResponsibility.Text = Convert.ToString(entity.Responsibility);
            }
            else
            {
                Label2.Visible = false;
                lblEU.Visible = false;
            }

            if (Convert.ToString(entity.Nature) != "")
            {
                lblNature.Text = Convert.ToString(entity.Nature);

                lblNature.Visible = true;
                Label4.Visible = true;
            }
            else
            {
                lblNature.Visible = false;
                Label4.Visible = false;
            }

            if (Convert.ToString(entity.Educational_Req) != "")
            {
                lblEducational_Req.Text = Convert.ToString(entity.Educational_Req);

                lblEducational_Req.Visible = true;
                Label3.Visible = true;
            }
            else
            {
                lblEducational_Req.Visible = false;
                Label3.Visible = false;
            }
            

            if (Convert.ToString(entity.JobTime_Experience) != "" && Convert.ToString(entity.Working_Experience) != "")
            {
                lblJobTime_Experience.Text = Convert.ToString(entity.JobTime_Experience);
                lblWorking_Experience.Text = Convert.ToString(entity.Working_Experience);

                lblJobTime_Experience.Visible = true;
                lblWorking_Experience.Visible = true;
                Label6.Visible = true;
            }
            else
            {
                lblJobTime_Experience.Visible = false;
                lblWorking_Experience.Visible = false;
                Label6.Visible = false;
            }

          
            if (Convert.ToString(entity.Additional_Req) != "")
            {
                lblAdditional_Req.Text = Convert.ToString(entity.Additional_Req);

                lblAdditional_Req.Visible = true;
                Label1.Visible = true;
            }
            else
            {
                lblAdditional_Req.Visible = false;
                Label1.Visible = false;
            }

            //----------------------------------------
            if (Convert.ToString(entity.Job_Location) != "")
            {
                lblJob_Location.Text = Convert.ToString(entity.Job_Location);

                lblJob_Location.Visible = true;
                Label7.Visible = true;
            }
            else
            {
                lblJob_Location.Visible = false;
                Label7.Visible = false;
            }

            if (Convert.ToString(entity.Salary_Range) != "")
            {
                lblSalary_Range.Text = Convert.ToString(entity.Salary_Range);

                lblSalary_Range.Visible = true;
                Label9.Visible = true;
            }
            else
            {
                lblSalary_Range.Visible = false;
                Label9.Visible = false;
            }

            if (Convert.ToString(entity.Value) != "")
            {
                lblValue.Text = Convert.ToString(entity.Value);

                lblValue.Visible = true;
                Label5.Visible = true;
            }
            else
            {
                lblValue.Visible = false;
                Label5.Visible = false;
            }


            lblID.Text = Convert.ToString(entity.JobPost_ID);



           
           
           
           
           
            lblDeadline.Text = entity.Deadline.ToString("dd/MM/yyyy");

          //  databind();
            SerialNo = 0;
            // txtdtl.Text = replaceOposite(entity.Course_Detail);
        }

        protected string replaceOposite(string st)
        {

            Regex ry = new Regex("<br/>");
            string s2 = ry.Replace(st, "\r\n");
            return s2;


        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Int32 SerialNo = Convert.ToInt32(Session["JobPost_ID"]);

            Session["JobPost_ID"] = Convert.ToInt32(SerialNo);
            Response.Redirect("HR_CandidateReg.aspx");
        }


        
    }
}