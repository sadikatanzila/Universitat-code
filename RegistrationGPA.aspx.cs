using Eastern_Uni.DAL;
using EasternUni.BO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;

namespace Eastern_Uni
{
    public partial class RegistrationGPA1 : System.Web.UI.Page
    {
        GPA_RegistrationDAL objGPA_RegistrationDAL = new GPA_RegistrationDAL();
        HR_WebCodeDAL objHR_WebCodeDAL = new HR_WebCodeDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                DateTime t1 = DateTime.Now;
                DateTime last_Date = new DateTime(2017, 9, 26, 0, 0, 0);//year, month, day, time//lastreg registration date 24 september

                
                setCaptcha();
                lblMessage.Text = "";

               if (t1 < last_Date)
                {
                   //<p style="text-align:right; width:95%;"> <a href="http://www.easternuni.edu.bd/RegistrationGPA.aspx" style="color:blue"><span>Click here for Online Registration</span></a>  </p>
                }
                else
                {
                    lblmssg_lastDate.Text = "Registration date has been expired";
                    btnSubmit.Visible = false;
                }
              

            }
            else
            {

            }
        }

        private void setCaptcha()
        {

            var rand = new Random((int)DateTime.Now.Ticks);
            //generate new question
            int a = rand.Next(10, 99);
            int b = rand.Next(0, 9);

            lblNum1.Text = Convert.ToString(a);
            lblNum2.Text = Convert.ToString(b);
            lblPlus.Text = "+";

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

           

            if (txtSum.Text != "")
            {
                int result = Convert.ToInt32(txtSum.Text);

                int a = Convert.ToInt32(lblNum1.Text);
                int b = Convert.ToInt32(lblNum2.Text);


                if (a + b == result)
                {
                    dt = Registration_GetAll("GPAReg_GetAllby_NameRollMobile", txtName.Text, txtRoll.Text, txtMobile.Text, Convert.ToString(ddlBoard.SelectedItem));


                    if (dt.Rows.Count > 0)
                    {

                        lblMessage.Text = "Sorry!! This student already have registered";

                    }
                    else
                    {
                        CreateTruckingNo();
                        Save();
                    }
                }
                else
                {
                    lblMessage.Text = "this result is error, please check try again";
                    setCaptcha();

                }
            }
            else
            {
                lblMessage.Text = "Please Calculate the equation";
                setCaptcha();
            }
            


            
            /*   if (Chk_ds.Tables["RtnList1"].Rows.Count > 0)
               {
                   foreach (DataRow dr in Chk_ds.Tables["RtnList1"].Rows)
                   {
                       if (dr["Name"].ToString() == txtName.Text)
                       {
                           lblMessage.Text = "this student already have registered";
                       }
                   }
               }*/




        }
        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public DataTable Registration_GetAll(string storeProcedure, string Name, string Roll, string MobileNo, string Board)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@Roll", DbType.String, Roll);
                AddParameter(command, "@MobileNo", DbType.String, MobileNo);
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

        #region create_TrackingNo
        string truckingExt = null;
        protected void CreateTruckingNo()
        {

            MathOlympiad MOentity = new MathOlympiad();
            string ext = "GPA2017";
            //   MOentity = objMathOlympiadDAL.MathOlympiad_GetTruckingExt(ext);




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


            Session["TrackingNo"] = ext + "" + code;


        }




        #endregion
        private void Save()
        {
            if (Convert.ToString(Session["TrackingNo"]) != null)
            {
                GPA_Registration entity = new GPA_Registration();


                entity.Name = txtName.Text;
                entity.FatherName = txtFather_Name.Text;
                entity.MotherName = txtMother_Name.Text;
                entity.Institution = txt_ClgName.Text;
                entity.HSC_Year = lblYear.Text;
                entity.Subject = Convert.ToString(ddlGroup.SelectedItem);//txtGroup.Text;
                entity.Board = Convert.ToString(ddlBoard.SelectedItem);
                entity.Roll = txtRoll.Text;
                entity.GPA = txtGPA.Text;
                entity.Pre_Address = txtAddress.Text;
                entity.Email = txtMail.Text;
                entity.MobileNo = txtMobile.Text;
                entity.DataInsert_Time = Convert.ToDateTime(DateTime.Now);
                entity.TruckingExt = Convert.ToString(Session["TrackingNo"]);
                entity.RegNo = txtReg.Text;

                entity.Event = "GPA5";


                Int32 Id = 0;

                if (btnSubmit.Text == "Submit")
                {
                    //entity.InsertionTime = DateTime.Now;
                    // entity.UserID = Convert.ToInt32(Session["userID"]);

                    Id = objGPA_RegistrationDAL.Add_GPA_Registration(entity);



                    if (Id > 0)
                    {
                        lblMessage.Text = "Congratulation!! You are being Registered";
                        lblMessage.ForeColor = Color.Green;
                     //   Clear();
                     //   setCaptcha();

                        Session["TruckingExt"] = Convert.ToString(Session["TrackingNo"]);
                        Response.Redirect("GPA_AdmitCard.aspx");
                        // BindList();
                    }
                }
            }
            else
            {
                lblMessage.Text = "insertion Merge Failed; Please try again later";
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
        }


        public void Clear()
        {

            txtName.Text = "";
            txtFather_Name.Text = "";
            txtMother_Name.Text = "";
            txt_ClgName.Text = "";

          //  txtGroup.Text = "";
            txtRoll.Text = "";
            txtGPA.Text = "";
            txtAddress.Text = "";
            txtMail.Text = "";
            txtMobile.Text = "";
            ddlBoard.SelectedValue = "-1";
            ddlGroup.SelectedValue = "-1";

           // lblMessage.Text = "";


            lblNum1.Text = "";
            lblNum2.Text = "";
            lblPlus.Text = "";
            txtSum.Text = "";


        }
    }
}