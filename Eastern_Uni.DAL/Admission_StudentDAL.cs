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
   public class Admission_StudentDAL
    {
       private void BuildEntity(DbDataReader reader, Admission_Student _Admission_Student)
       {

           _Admission_Student.SerialNo = Convert.ToInt32(reader["SerialNo"]);

           if (reader["StudentID"] != DBNull.Value)
               _Admission_Student.StudentID = Convert.ToInt32(reader["StudentID"]);

           if (reader["Name"] != DBNull.Value)
               _Admission_Student.Name = Convert.ToString(reader["Name"]);

           if (reader["Address"] != DBNull.Value)
               _Admission_Student.Address = Convert.ToString(reader["Address"]);


           if (reader["FacultyID"] != DBNull.Value)
               _Admission_Student.FacultyID = Convert.ToInt32(reader["FacultyID"]);

           if (reader["DepartmentID"] != DBNull.Value)
               _Admission_Student.DepartmentID = Convert.ToInt32(reader["DepartmentID"]);

           if (reader["SemisterID"] != DBNull.Value)
               _Admission_Student.SemisterID = Convert.ToInt32(reader["SemisterID"]);


           if (reader["Faculty"] != DBNull.Value)
               _Admission_Student.Faculty = Convert.ToString(reader["Faculty"]);

           if (reader["Department"] != DBNull.Value)
               _Admission_Student.Department = Convert.ToString(reader["Department"]);

           if (reader["Semister"] != DBNull.Value)
               _Admission_Student.Semister = Convert.ToString(reader["Semister"]);


           if (reader["AdmissionDate"] != DBNull.Value)
               _Admission_Student.AdmissionDate = Convert.ToString(reader["AdmissionDate"]);


           if (reader["AdmissionMonth"] != DBNull.Value)
               _Admission_Student.AdmissionMonth = Convert.ToString(reader["AdmissionMonth"]);


           if (reader["AdmissionYear"] != DBNull.Value)
               _Admission_Student.AdmissionYear = Convert.ToString(reader["AdmissionYear"]);

           if (reader["Student_Result"] != DBNull.Value)
               _Admission_Student.Student_Result = Convert.ToString(reader["Student_Result"]);

       }

       private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
       {
           oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
       }

       public List<Admission_Student> LoadAdmission_Student_GetAll()
       {
           try
           {
               List<Admission_Student> Admission_StudentList = new List<Admission_Student>();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Admission_StudentInfo_GetAll", CommandType.StoredProcedure);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   Admission_Student oAdmission_Student = new Admission_Student();
                   BuildEntity(oDbDataReader, oAdmission_Student);
                   Admission_StudentList.Add(oAdmission_Student);
               }
               oDbDataReader.Close();
               return Admission_StudentList;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

       public int Admission_StudentDelete(int SerialNo)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Admission_StudentDelete", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@SerialNo", DbType.Int32, SerialNo);
               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }


       public int Add_Admission_Student(Admission_Student _Admission_Student)
       {
           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Admission_Student", CommandType.StoredProcedure);

               if (_Admission_Student.StudentID >= 0)
                   AddParameter(oDbCommand, "@StudentID", DbType.Int32, _Admission_Student.StudentID);
               else
                   AddParameter(oDbCommand, "@StudentID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.Name != null)
                   AddParameter(oDbCommand, "@Name", DbType.String, _Admission_Student.Name);
               else
                   AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

               if (_Admission_Student.Address != null)
                   AddParameter(oDbCommand, "@Address", DbType.String, _Admission_Student.Address);
               else
                   AddParameter(oDbCommand, "@Address", DbType.String, DBNull.Value);

               if (_Admission_Student.FacultyID >= 0)
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _Admission_Student.FacultyID);
               else
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.DepartmentID >= 0)
                   AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, _Admission_Student.DepartmentID);
               else
                   AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.SemisterID >= 0)
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _Admission_Student.SemisterID);
               else
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.AdmissionDate != null)
                   AddParameter(oDbCommand, "@AdmissionDate", DbType.String, _Admission_Student.AdmissionDate);
               else
                   AddParameter(oDbCommand, "@AdmissionDate", DbType.String, DBNull.Value);

               if (_Admission_Student.AdmissionMonth != null)
                   AddParameter(oDbCommand, "@AdmissionMonth", DbType.String, _Admission_Student.AdmissionMonth);
               else
                   AddParameter(oDbCommand, "@AdmissionMonth", DbType.String, DBNull.Value);

               if (_Admission_Student.AdmissionYear != null)
                   AddParameter(oDbCommand, "@AdmissionYear", DbType.String, _Admission_Student.AdmissionYear);
               else
                   AddParameter(oDbCommand, "@AdmissionYear", DbType.String, DBNull.Value);

              

               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

       public int Update_Admission_Student(Admission_Student _Admission_Student)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Update_Admission_Student", CommandType.StoredProcedure);

               if (_Admission_Student.StudentID >= 0)
                   AddParameter(oDbCommand, "@StudentID", DbType.Int32, _Admission_Student.StudentID);
               else
                   AddParameter(oDbCommand, "@StudentID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.Name != null)
                   AddParameter(oDbCommand, "@Name", DbType.String, _Admission_Student.Name);
               else
                   AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

               if (_Admission_Student.Address != null)
                   AddParameter(oDbCommand, "@Address", DbType.String, _Admission_Student.Address);
               else
                   AddParameter(oDbCommand, "@Address", DbType.String, DBNull.Value);

               if (_Admission_Student.FacultyID != null)
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _Admission_Student.FacultyID);
               else
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.DepartmentID != null)
                   AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, _Admission_Student.DepartmentID);
               else
                   AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.SemisterID != null)
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _Admission_Student.SemisterID);
               else
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);

               if (_Admission_Student.AdmissionDate != null)
                   AddParameter(oDbCommand, "@AdmissionDate", DbType.String, _Admission_Student.AdmissionDate);
               else
                   AddParameter(oDbCommand, "@AdmissionDate", DbType.String, DBNull.Value);

               if (_Admission_Student.AdmissionMonth != null)
                   AddParameter(oDbCommand, "@AdmissionMonth", DbType.String, _Admission_Student.AdmissionMonth);
               else
                   AddParameter(oDbCommand, "@AdmissionMonth", DbType.String, DBNull.Value);

               if (_Admission_Student.AdmissionYear != null)
                   AddParameter(oDbCommand, "@AdmissionYear", DbType.String, _Admission_Student.AdmissionYear);
               else
                   AddParameter(oDbCommand, "@AdmissionYear", DbType.String, DBNull.Value);



               AddParameter(oDbCommand, "@SerialNo", DbType.Int32, _Admission_Student.SerialNo);

               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }


       public Admission_Student AdStntInfo_GetById(int SerialNo)
       {
           try
           {
               Admission_Student objAdmission_Student = new Admission_Student();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("AdmissionStntInfo_GetById", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@SerialNo", DbType.Int64, SerialNo);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   BuildEntity(oDbDataReader, objAdmission_Student);
               }
               oDbDataReader.Close();
               return objAdmission_Student;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }
    }
}
