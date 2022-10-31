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
   public class CourseDAL
    {
       private void BuildEntityAll(DbDataReader reader, Course _Course)
       {

           _Course.CourseID = Convert.ToInt32(reader["CourseID"]);

          
           if (reader["FacultyID"] != DBNull.Value)
               _Course.FacultyID = Convert.ToInt32(reader["FacultyID"]);

           if (reader["Faculty"] != DBNull.Value)
               _Course.Faculty = Convert.ToString(reader["Faculty"]);

           if (reader["SubjectID"] != DBNull.Value)
               _Course.SubjectID = Convert.ToInt32(reader["SubjectID"]);

           if (reader["Subject"] != DBNull.Value)
               _Course.Subject = Convert.ToString(reader["Subject"]);

           if (reader["Course_Type"] != DBNull.Value)
               _Course.Course_Type = Convert.ToString(reader["Course_Type"]);

           if (reader["Course_Group"] != DBNull.Value)
               _Course.Course_Group = Convert.ToString(reader["Course_Group"]);

           if (reader["YearID"] != DBNull.Value)
               _Course.YearID = Convert.ToInt32(reader["YearID"]);

           if (reader["Year"] != DBNull.Value)
               _Course.Year = Convert.ToString(reader["Year"]);

           if (reader["SemisterID"] != DBNull.Value)
               _Course.SemisterID = Convert.ToInt32(reader["SemisterID"]);

           if (reader["Semister"] != DBNull.Value)
               _Course.Semister = Convert.ToString(reader["Semister"]);


           if (reader["Course_Code"] != DBNull.Value)
               _Course.Course_Code = Convert.ToString(reader["Course_Code"]);

           if (reader["Course_Title"] != DBNull.Value)
               _Course.Course_Title = Convert.ToString(reader["Course_Title"]);


           if (reader["Course_Detail"] != DBNull.Value)
               _Course.Course_Detail = Convert.ToString(reader["Course_Detail"]);

           if (reader["Credit"] != DBNull.Value)
               _Course.Credit = Convert.ToString(reader["Credit"]);

           if (reader["Prerequisite"] != DBNull.Value)
               _Course.Prerequisite = Convert.ToString(reader["Prerequisite"]);

         

           if (reader["InsertionTime"] != DBNull.Value)
               _Course.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);

           if (reader["UpdateTime"] != DBNull.Value)
               _Course.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

           if (reader["UserID"] != DBNull.Value)
               _Course.UserID = Convert.ToInt32(reader["UserID"]);

           if (reader["UpdateUser"] != DBNull.Value)
               _Course.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


       }

       public List<Course> Course_GetAll()
       {
           try
           {
               List<Course> CourseList = new List<Course>();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Course_GetAll", CommandType.StoredProcedure);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   Course oCourse = new Course();
                   BuildEntityAll(oDbDataReader, oCourse);
                   CourseList.Add(oCourse);
               }
               oDbDataReader.Close();
               return CourseList;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

       public int Course_Delete(int CourseID)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Course_Delete", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@CourseID", DbType.Int32, CourseID);
               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }


       private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
       {
           oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
       }

       public DataTable LoadCourse_GetAll()
       {
           DataTable dtUser = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtUser = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Course_GetAll", CommandType.StoredProcedure);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtUser.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtUser;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtUser.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public int Add_Course(Course _Course)
       {
           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Course", CommandType.StoredProcedure);



               if (_Course.FacultyID >= 0)
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _Course.FacultyID);
               else
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);


               if (_Course.SubjectID >= 0)
                   AddParameter(oDbCommand, "@SubjectID", DbType.Int32, _Course.SubjectID);
               else
                   AddParameter(oDbCommand, "@SubjectID", DbType.Int32, DBNull.Value);

               if (_Course.Course_Type != null)
                   AddParameter(oDbCommand, "@Course_Type", DbType.String, _Course.Course_Type);
               else
                   AddParameter(oDbCommand, "@Course_Type", DbType.String, DBNull.Value);

               if (_Course.Course_Group != null)
                   AddParameter(oDbCommand, "@Course_Group", DbType.String, _Course.Course_Group);
               else
                   AddParameter(oDbCommand, "@Course_Group", DbType.String, DBNull.Value);

               if (_Course.Course_Code != null)
                   AddParameter(oDbCommand, "@Course_Code", DbType.String, _Course.Course_Code);
               else
                   AddParameter(oDbCommand, "@Course_Code", DbType.String, DBNull.Value);

               if (_Course.Course_Title != null)
                   AddParameter(oDbCommand, "@Course_Title", DbType.String, _Course.Course_Title);
               else
                   AddParameter(oDbCommand, "@Course_Title", DbType.String, DBNull.Value);


               if (_Course.Course_Detail != null)
                   AddParameter(oDbCommand, "@Course_Detail", DbType.String, _Course.Course_Detail);
               else
                   AddParameter(oDbCommand, "@Course_Detail", DbType.String, DBNull.Value);

               if (_Course.Credit != null)
                   AddParameter(oDbCommand, "@Credit", DbType.String, _Course.Credit);
               else
                   AddParameter(oDbCommand, "@Credit", DbType.String, DBNull.Value);

               if (_Course.Prerequisite != null)
                   AddParameter(oDbCommand, "@Prerequisite", DbType.String, _Course.Prerequisite);
               else
                   AddParameter(oDbCommand, "@Prerequisite", DbType.String, DBNull.Value);



               if (_Course.YearID >= 0)
                   AddParameter(oDbCommand, "@YearID", DbType.Int32, _Course.YearID);
               else
                   AddParameter(oDbCommand, "@YearID", DbType.Int32, DBNull.Value);


               if (_Course.SemisterID >= 0)
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _Course.SemisterID);
               else
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);



               if (_Course.InsertionTime != null)
                   AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _Course.InsertionTime);
               else
                   AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, DBNull.Value);

               if (_Course.UserID >= 0)
                   AddParameter(oDbCommand, "@UserID", DbType.Int32, _Course.UserID);
               else
                   AddParameter(oDbCommand, "@UserID", DbType.Int32, DBNull.Value);

               




               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }



       public int Update_Course(Course _Course)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Course_Update", CommandType.StoredProcedure);

               if (_Course.FacultyID >= 0)
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _Course.FacultyID);
               else
                   AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);


               if (_Course.SubjectID >= 0)
                   AddParameter(oDbCommand, "@SubjectID", DbType.Int32, _Course.SubjectID);
               else
                   AddParameter(oDbCommand, "@SubjectID", DbType.Int32, DBNull.Value);

               if (_Course.Course_Type != null)
                   AddParameter(oDbCommand, "@Course_Type", DbType.String, _Course.Course_Type);
               else
                   AddParameter(oDbCommand, "@Course_Type", DbType.String, DBNull.Value);

               if (_Course.Course_Group != null)
                   AddParameter(oDbCommand, "@Course_Group", DbType.String, _Course.Course_Group);
               else
                   AddParameter(oDbCommand, "@Course_Group", DbType.String, DBNull.Value);

               if (_Course.Course_Code != null)
                   AddParameter(oDbCommand, "@Course_Code", DbType.String, _Course.Course_Code);
               else
                   AddParameter(oDbCommand, "@Course_Code", DbType.String, DBNull.Value);

               if (_Course.Course_Title != null)
                   AddParameter(oDbCommand, "@Course_Title", DbType.String, _Course.Course_Title);
               else
                   AddParameter(oDbCommand, "@Course_Title", DbType.String, DBNull.Value);


               if (_Course.Course_Detail != null)
                   AddParameter(oDbCommand, "@Course_Detail", DbType.String, _Course.Course_Detail);
               else
                   AddParameter(oDbCommand, "@Course_Detail", DbType.String, DBNull.Value);

               if (_Course.Credit != null)
                   AddParameter(oDbCommand, "@Credit", DbType.String, _Course.Credit);
               else
                   AddParameter(oDbCommand, "@Credit", DbType.String, DBNull.Value);

               if (_Course.Prerequisite != null)
                   AddParameter(oDbCommand, "@Prerequisite", DbType.String, _Course.Prerequisite);
               else
                   AddParameter(oDbCommand, "@Prerequisite", DbType.String, DBNull.Value);



               if (_Course.YearID >= 0)
                   AddParameter(oDbCommand, "@YearID", DbType.Int32, _Course.YearID);
               else
                   AddParameter(oDbCommand, "@YearID", DbType.Int32, DBNull.Value);


               if (_Course.SemisterID >= 0)
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, _Course.SemisterID);
               else
                   AddParameter(oDbCommand, "@SemisterID", DbType.Int32, DBNull.Value);


               if (_Course.UpdateTime != null)
                   AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _Course.UpdateTime);
               else
                   AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, DBNull.Value);

               if (_Course.UpdateUser >= 0)
                   AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _Course.UpdateUser);
               else
                   AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, DBNull.Value);




               AddParameter(oDbCommand, "@CourseID", DbType.Int32, _Course.CourseID);

               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }



       public Course Get_CourseInfoID(int CourseID)
       {
           try
           {
               Course objCourse = new Course();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Course_GetById", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@CourseID", DbType.Int32, CourseID);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   BuildEntityAll(oDbDataReader, objCourse);
               }
               oDbDataReader.Close();
               return objCourse;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }
    }
}
