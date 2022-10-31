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
    public partial class RegistrationPoetry : System.Web.UI.Page
    {
        GPA_RegistrationDAL objGPA_RegistrationDAL = new GPA_RegistrationDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                DateTime t1 = DateTime.Now;
                DateTime last_Date = new DateTime(2015, 11, 17, 0, 0, 0);

                
                setCaptcha();
                lblMessage.Text = "";

               if (t1 < last_Date)
                {
                   
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
                    dt = Registration_GetAll("Reg_GetAllby_NameMobile", txtName.Text, txtMobile.Text);


                    if (dt.Rows.Count > 0)
                    {

                        lblMessage.Text = "Sorry!! This student already have registered";

                    }
                    else
                    {
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

        public DataTable Registration_GetAll(string storeProcedure, string Name, string MobileNo)
        {
            DataTable table = new DataTable();
            try
            {
                // DbConnection conn_st=ge;
                DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
                AddParameter(command, "@Name", DbType.String, Name);
                AddParameter(command, "@MobileNo", DbType.String, MobileNo);

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

        private void Save()
        {
            GPA_Registration entity = new GPA_Registration();


            entity.Name = txtName.Text;   //Name (Block Letter) English: name
            entity.Institution = txtInstitution.Text; //Name of the University: Institution
            
            entity.Board = txtDepartment.Text;    //Department: Board
            
            entity.Pre_Address = txtAddress.Text;//Contact Address: Pre_Address
            entity.Email = txtMail.Text;//Email: Email
            entity.MobileNo = txtMobile.Text;//Contact Number: MobileNo

            entity.Subject = Convert.ToString(ddlGroup.SelectedItem); //Which section of the competition you want to participate in: [tick mark] Subject
            entity.DataInsert_Time = Convert.ToDateTime(DateTime.Now);

            entity.Event = "Poetry15";


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
                    Clear();
                    setCaptcha();
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

            txtName.Text = "";
            txtInstitution.Text = "";

            txtDepartment.Text = "";
            txtAddress.Text = "";
            txtMail.Text = "";
            txtMobile.Text = "";
            ddlGroup.SelectedValue = "-1";

           // lblMessage.Text = "";


            lblNum1.Text = "";
            lblNum2.Text = "";
            lblPlus.Text = "";
            txtSum.Text = "";


        }
    }
}