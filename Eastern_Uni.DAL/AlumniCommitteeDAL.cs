using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using Eastern_Uni.DAL;
using EasternUni.BO;

namespace Eastern_Uni.DAL
{
  public  class AlumniCommitteeDAL
    {

      private void BuildEntityAll(DbDataReader reader, AlumniCommittee _AlumniCommittee)
      {

          _AlumniCommittee.Sl = Convert.ToInt32(reader["Sl"]);

          if (reader["Name"] != DBNull.Value)
              _AlumniCommittee.Name = Convert.ToString(reader["Name"]);


          if (reader["Priority"] != DBNull.Value)
              _AlumniCommittee.Priority = Convert.ToString(reader["Priority"]);



          if (reader["FacultyID"] != DBNull.Value)
              _AlumniCommittee.FacultyID = Convert.ToInt32(reader["FacultyID"]);

          if (reader["Faculty"] != DBNull.Value)
              _AlumniCommittee.Faculty = Convert.ToString(reader["Faculty"]);

          



          if (reader["Occupation"] != DBNull.Value)
              _AlumniCommittee.Occupation = Convert.ToString(reader["Occupation"]);

          if (reader["Designation"] != DBNull.Value)
              _AlumniCommittee.Designation = Convert.ToString(reader["Designation"]);

          if (reader["Present_Address"] != DBNull.Value)
              _AlumniCommittee.Present_Address = Convert.ToString(reader["Present_Address"]);

          if (reader["Present_ContactNo"] != DBNull.Value)
              _AlumniCommittee.Present_ContactNo = Convert.ToString(reader["Present_ContactNo"]);

          if (reader["MobileNo"] != DBNull.Value)
              _AlumniCommittee.MobileNo = Convert.ToString(reader["MobileNo"]);

          if (reader["Permanent_Address"] != DBNull.Value)
              _AlumniCommittee.Permanent_Address = Convert.ToString(reader["Permanent_Address"]);

          if (reader["Present_ContactNo"] != DBNull.Value)
              _AlumniCommittee.Present_ContactNo = Convert.ToString(reader["Present_ContactNo"]);

          
          if (reader["Job_Office"] != DBNull.Value)
              _AlumniCommittee.Job_Office = Convert.ToString(reader["Job_Office"]);

          if (reader["JobOffice_PhnNo"] != DBNull.Value)
              _AlumniCommittee.JobOffice_PhnNo = Convert.ToString(reader["JobOffice_PhnNo"]);


          if (reader["Job_Location"] != DBNull.Value)
              _AlumniCommittee.Job_Location = Convert.ToString(reader["Job_Location"]);

          if (reader["Job_Experience"] != DBNull.Value)
              _AlumniCommittee.Job_Experience = Convert.ToString(reader["Job_Experience"]);

          if (reader["EMail_Address"] != DBNull.Value)
              _AlumniCommittee.EMail_Address = Convert.ToString(reader["EMail_Address"]);


          if (reader["Father_Name"] != DBNull.Value)
              _AlumniCommittee.Father_Name = Convert.ToString(reader["Father_Name"]);

          if (reader["Father_Occupation"] != DBNull.Value)
              _AlumniCommittee.Father_Occupation = Convert.ToString(reader["Father_Occupation"]);

          if (reader["Mother_Name"] != DBNull.Value)
              _AlumniCommittee.Mother_Name = Convert.ToString(reader["Mother_Name"]);

          if (reader["Mother_Occupation"] != DBNull.Value)
              _AlumniCommittee.Mother_Occupation = Convert.ToString(reader["Mother_Occupation"]);

          if (reader["Marital_Status"] != DBNull.Value)
              _AlumniCommittee.Marital_Status = Convert.ToString(reader["Marital_Status"]);

          if (reader["Spouse"] != DBNull.Value)
              _AlumniCommittee.Spouse = Convert.ToString(reader["Spouse"]);

          if (reader["Child_dtl"] != DBNull.Value)
              _AlumniCommittee.Child_dtl = Convert.ToString(reader["Child_dtl"]);

          if (reader["Religion"] != DBNull.Value)
              _AlumniCommittee.Religion = Convert.ToString(reader["Religion"]);

          if (reader["Blood_Group"] != DBNull.Value)
              _AlumniCommittee.Blood_Group = Convert.ToString(reader["Blood_Group"]);


          if (reader["PictureLocation"] != DBNull.Value)
              _AlumniCommittee.PictureLocation = Convert.ToString(reader["PictureLocation"]);

          if (reader["Date_Birth"] != DBNull.Value)
              _AlumniCommittee.Date_Birth = Convert.ToDateTime(reader["Date_Birth"]);

          if (reader["Posting_Date"] != DBNull.Value)
              _AlumniCommittee.Posting_Date = Convert.ToDateTime(reader["Posting_Date"]);

          if (reader["InsertionTime"] != DBNull.Value)
              _AlumniCommittee.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);

          if (reader["UpdateTime"] != DBNull.Value)
              _AlumniCommittee.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

          if (reader["UserID"] != DBNull.Value)
              _AlumniCommittee.UserID = Convert.ToInt32(reader["UserID"]);

          if (reader["UpdateUser"] != DBNull.Value)
              _AlumniCommittee.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


          if (reader["Confirmation"] != DBNull.Value)
              _AlumniCommittee.Confirmation = Convert.ToInt32(reader["Confirmation"]);
      }

      public List<AlumniCommittee> AlumniCommittee_GetAll()
      {
          try
          {
              List<AlumniCommittee> AlumniCommitteeList = new List<AlumniCommittee>();
              DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlumniEUBCommittee_GetAll", CommandType.StoredProcedure);
              DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
              while (oDbDataReader.Read())
              {
                  AlumniCommittee oAlumni = new AlumniCommittee();
                  BuildEntityAll(oDbDataReader, oAlumni);
                  AlumniCommitteeList.Add(oAlumni);
              }
              oDbDataReader.Close();
              return AlumniCommitteeList;
          }
          catch (Exception ex)
          {
              throw ex;
          }
      }
    }
}
