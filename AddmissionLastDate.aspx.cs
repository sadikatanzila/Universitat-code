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
    public partial class AddmissionLastDate : System.Web.UI.Page
    {
        Addmission_LastDateDAL objAddmission_LastDateDAL = new Addmission_LastDateDAL();
        string s_n;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                CommonBinder.AdmissionType_LoadForDll(ddlAdmsnType);
                CommonBinder.SemisterType_LoadForDll(ddlSemister);
                BindList();

            }
            else
            {

            }

        }

        private void BindList()
        {
            List<Addmission_LastDate> Admisssion_StdList = objAddmission_LastDateDAL.LoadAddmission_LastDate_GetAll();
            gvAdStd.DataSource = Admisssion_StdList;
            gvAdStd.DataBind();
        }



        protected void gvAdStd_RowEditing(object sender, GridViewEditEventArgs e)
        {
            lblMessage.Text = string.Empty;
            e.Cancel = true;

            GetSelectedData(e);
            Submit.Text = "Update";
        }

        private void GetSelectedData(System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            Addmission_LastDate entity = new Addmission_LastDate();
            Int32 ID = Convert.ToInt32(gvAdStd.DataKeys[e.NewEditIndex].Value);
            entity = objAddmission_LastDateDAL.Get_StntInfoById(ID);

            ddlAdmsnType.SelectedValue = entity.Admission_TypeID.ToString();
            ddlSemister.SelectedValue = entity.Admission_SemisterID.ToString();

            txtYear.Text = Convert.ToString(entity.Admission_Year);

            txtAppLastDate.Text = replaceOposite(Convert.ToString(entity.App_LastDate));

            txtAdd_Date.Text = replaceOposite(Convert.ToString(entity.Admission_Date));
            txtAdd_Office.Text = replaceOposite(Convert.ToString(entity.Admission_Office));
            txtForeignStd.Text = replaceOposite(Convert.ToString(entity.Foreigners_Office));



            txtSl.Text = Convert.ToString(entity.ID);


            


        }


        protected void gvAdStd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Int32 SerialNo = Convert.ToInt32(gvAdStd.DataKeys[e.RowIndex].Value);
            int success = objAddmission_LastDateDAL.Addmission_LastDateDelete(SerialNo);
            if (success > 0)
            {
                // Clear();
                lblMessage.Text = "Data is being Deleted";
                Response.Redirect("AddmissionLastDate.aspx");
                BindList();
            }


        }



        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlAdmsnType.SelectedValue) == 0 || Convert.ToInt32(ddlSemister.SelectedValue) == 0 || txtYear.Text == null || txtAppLastDate.Text == null || txtAdd_Date.Text == null || txtAdd_Office.Text == null || txtForeignStd.Text == null)
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
            Addmission_LastDate entity = new Addmission_LastDate();


            entity.Admission_Year = Convert.ToString(txtYear.Text);

            entity.Admission_TypeID = Convert.ToInt32(ddlAdmsnType.SelectedValue);
            entity.Admission_SemisterID = Convert.ToInt32(ddlSemister.SelectedValue);

            entity.Admission_Type = Convert.ToString(ddlAdmsnType.SelectedItem);
            entity.Admission_Semister = Convert.ToString(ddlSemister.SelectedItem);


            entity.App_LastDate = replace_(txtAppLastDate.Text);
            entity.Admission_Date = replace_(txtAdd_Date.Text);

            entity.Admission_Office = replace_(txtAdd_Office.Text);
            entity.Foreigners_Office = replace_(txtForeignStd.Text);

            Int32 Id = 0;

            if (Submit.Text == "Submit")
            {
                entity.InsertionTime = Convert.ToDateTime(DateTime.Now);
                entity.UserID = Convert.ToInt32(Session["UserID_Admission"]);

                Id = objAddmission_LastDateDAL.Add_Addmission_LastDate(entity);
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
                entity.UpdateTime = Convert.ToDateTime(DateTime.Now);
                 entity.UpdateUser = Convert.ToInt32(Session["UserID_Admission"]);

                entity.ID = Convert.ToInt32(txtSl.Text);
                Id = objAddmission_LastDateDAL.Update_Addmission_LastDate(entity);

                lblMessage.Text = "Data is Updated Successfully";
                //lblMessage.ForeColor = Color.Green;
                Clear();
                BindList();
                Submit.Text = "Submit";

                Response.Redirect("AddmissionLastDate.aspx");
            }

        }

        public void Clear()
        {
            txtYear.Text = "";
            txtAppLastDate.Text = "";
            txtAdd_Date.Text = "";
            txtAdd_Office.Text = "";
            txtForeignStd.Text = "";

            txtSl.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
            Response.Redirect("AddmissionLastDate.aspx");


        }

        protected void ddlAdmsnType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlSemister_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}