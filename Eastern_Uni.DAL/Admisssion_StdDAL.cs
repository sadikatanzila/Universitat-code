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
   public class Admisssion_StdDAL
    {
       private void BuildEntity(DbDataReader reader, Admisssion_Std _Admisssion_Std)
       {

           _Admisssion_Std.Sl_No = Convert.ToInt32(reader["Sl_No"]);

           if (reader["Admission_TypeID"] != DBNull.Value)
               _Admisssion_Std.Admission_TypeID = Convert.ToInt32(reader["Admission_TypeID"]);

           if (reader["Admission_SemisterID"] != DBNull.Value)
               _Admisssion_Std.Admission_SemisterID = Convert.ToInt32(reader["Admission_SemisterID"]);

           if (reader["Year"] != DBNull.Value)
               _Admisssion_Std.Year = Convert.ToString(reader["Year"]);

           if (reader["Passing_Std_Sl"] != DBNull.Value)
               _Admisssion_Std.Passing_Std_Sl = Convert.ToString(reader["Passing_Std_Sl"]);


           if (reader["Total_Student"] != DBNull.Value)
               _Admisssion_Std.Total_Student = Convert.ToString(reader["Total_Student"]);

           if (reader["Date_SrtFrm"] != DBNull.Value)
               _Admisssion_Std.Date_SrtFrm = Convert.ToString(reader["Date_SrtFrm"]);

           if (reader["Dateline"] != DBNull.Value)
               _Admisssion_Std.Dateline = Convert.ToString(reader["Dateline"]);


           if (reader["Admission_Fee"] != DBNull.Value)
               _Admisssion_Std.Admission_Fee = Convert.ToString(reader["Admission_Fee"]);

           if (reader["Admission_Date"] != DBNull.Value)
               _Admisssion_Std.Admission_Date = Convert.ToString(reader["Admission_Date"]);

           if (reader["Admission_Month"] != DBNull.Value)
               _Admisssion_Std.Admission_Month = Convert.ToString(reader["Admission_Month"]);

           if (reader["Admission_Year"] != DBNull.Value)
               _Admisssion_Std.Admission_Year = Convert.ToString(reader["Admission_Year"]);

           if (reader["Admission_Type"] != DBNull.Value)
               _Admisssion_Std.Admission_Type = Convert.ToString(reader["Admission_Type"]);


           if (reader["Admission_Semister"] != DBNull.Value)
               _Admisssion_Std.Admission_Semister = Convert.ToString(reader["Admission_Semister"]);


           if (reader["Orientation"] != DBNull.Value)
               _Admisssion_Std.Orientation = Convert.ToString(reader["Orientation"]);

           if (reader["Classes_Start"] != DBNull.Value)
               _Admisssion_Std.Classes_Start = Convert.ToString(reader["Classes_Start"]);

       }

       public int Add_Result(Admisssion_Std _Admisssion_Std)
       {
           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Admission_Std", CommandType.StoredProcedure);

               


               if (_Admisssion_Std.Admission_TypeID >= 0)
                   AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, _Admisssion_Std.Admission_TypeID);
               else
                   AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, DBNull.Value);

               if (_Admisssion_Std.Admission_SemisterID >= 0)
                   AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, _Admisssion_Std.Admission_SemisterID);
               else
                   AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, DBNull.Value);

               if (_Admisssion_Std.Year != null)
                   AddParameter(oDbCommand, "@Year", DbType.String, _Admisssion_Std.Year);
               else
                   AddParameter(oDbCommand, "@Year", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Passing_Std_Sl != null)
                   AddParameter(oDbCommand, "@Passing_Std_Sl", DbType.String, _Admisssion_Std.Passing_Std_Sl);
               else
                   AddParameter(oDbCommand, "@Passing_Std_Sl", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Total_Student != null)
                   AddParameter(oDbCommand, "@Total_Student", DbType.String, _Admisssion_Std.Total_Student);
               else
                   AddParameter(oDbCommand, "@Total_Student", DbType.String, DBNull.Value);


               if (_Admisssion_Std.Date_SrtFrm != null)
                   AddParameter(oDbCommand, "@Date_SrtFrm", DbType.String, _Admisssion_Std.Date_SrtFrm);
               else
                   AddParameter(oDbCommand, "@Date_SrtFrm", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Dateline != null)
                   AddParameter(oDbCommand, "@Dateline", DbType.String, _Admisssion_Std.Dateline);
               else
                   AddParameter(oDbCommand, "@Dateline", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Fee != null)
                   AddParameter(oDbCommand, "@Admission_Fee", DbType.String, _Admisssion_Std.Admission_Fee);
               else
                   AddParameter(oDbCommand, "@Admission_Fee", DbType.String, DBNull.Value);


               if (_Admisssion_Std.Admission_Date != null)
                   AddParameter(oDbCommand, "@Admission_Date", DbType.String, _Admisssion_Std.Admission_Date);
               else
                   AddParameter(oDbCommand, "@Admission_Date", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Month != null)
                   AddParameter(oDbCommand, "@Admission_Month", DbType.String, _Admisssion_Std.Admission_Month);
               else
                   AddParameter(oDbCommand, "@Admission_Month", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Year != null)
                   AddParameter(oDbCommand, "@Admission_Year", DbType.String, _Admisssion_Std.Admission_Year);
               else
                   AddParameter(oDbCommand, "@Admission_Year", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Type != null)
                   AddParameter(oDbCommand, "@Admission_Type", DbType.String, _Admisssion_Std.Admission_Type);
               else
                   AddParameter(oDbCommand, "@Admission_Type", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Semister != null)
                   AddParameter(oDbCommand, "@Admission_Semister", DbType.String, _Admisssion_Std.Admission_Semister);
               else
                   AddParameter(oDbCommand, "@Admission_Semister", DbType.String, DBNull.Value);


               if (_Admisssion_Std.Orientation != null)
                   AddParameter(oDbCommand, "@Orientation", DbType.String, _Admisssion_Std.Orientation);
               else
                   AddParameter(oDbCommand, "@Orientation", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Classes_Start != null)
                   AddParameter(oDbCommand, "@Classes_Start", DbType.String, _Admisssion_Std.Classes_Start);
               else
                   AddParameter(oDbCommand, "@Classes_Start", DbType.String, DBNull.Value);

               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }


       public int Update_Result(Admisssion_Std _Admisssion_Std)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Admisssion_Std_Update", CommandType.StoredProcedure);



               if (_Admisssion_Std.Admission_TypeID >= 0)
                   AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, _Admisssion_Std.Admission_TypeID);
               else
                   AddParameter(oDbCommand, "@Admission_TypeID", DbType.Int32, DBNull.Value);

               if (_Admisssion_Std.Admission_SemisterID >= 0)
                   AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, _Admisssion_Std.Admission_SemisterID);
               else
                   AddParameter(oDbCommand, "@Admission_SemisterID", DbType.Int32, DBNull.Value);

               if (_Admisssion_Std.Year != null)
                   AddParameter(oDbCommand, "@Year", DbType.String, _Admisssion_Std.Year);
               else
                   AddParameter(oDbCommand, "@Year", DbType.String, DBNull.Value);



               if (_Admisssion_Std.Passing_Std_Sl != null)
                   AddParameter(oDbCommand, "@Passing_Std_Sl", DbType.String, _Admisssion_Std.Passing_Std_Sl);
               else
                   AddParameter(oDbCommand, "@Passing_Std_Sl", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Total_Student != null)
                   AddParameter(oDbCommand, "@Total_Student", DbType.String, _Admisssion_Std.Total_Student);
               else
                   AddParameter(oDbCommand, "@Total_Student", DbType.String, DBNull.Value);


               if (_Admisssion_Std.Date_SrtFrm != null)
                   AddParameter(oDbCommand, "@Date_SrtFrm", DbType.String, _Admisssion_Std.Date_SrtFrm);
               else
                   AddParameter(oDbCommand, "@Date_SrtFrm", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Dateline != null)
                   AddParameter(oDbCommand, "@Dateline", DbType.String, _Admisssion_Std.Dateline);
               else
                   AddParameter(oDbCommand, "@Dateline", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Fee != null)
                   AddParameter(oDbCommand, "@Admission_Fee", DbType.String, _Admisssion_Std.Admission_Fee);
               else
                   AddParameter(oDbCommand, "@Admission_Fee", DbType.String, DBNull.Value);


               if (_Admisssion_Std.Admission_Date != null)
                   AddParameter(oDbCommand, "@Admission_Date", DbType.String, _Admisssion_Std.Admission_Date);
               else
                   AddParameter(oDbCommand, "@Admission_Date", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Month != null)
                   AddParameter(oDbCommand, "@Admission_Month", DbType.String, _Admisssion_Std.Admission_Month);
               else
                   AddParameter(oDbCommand, "@Admission_Month", DbType.String, DBNull.Value);


               if (_Admisssion_Std.Admission_Year != null)
                   AddParameter(oDbCommand, "@Admission_Year", DbType.String, _Admisssion_Std.Admission_Year);
               else
                   AddParameter(oDbCommand, "@Admission_Year", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Type != null)
                   AddParameter(oDbCommand, "@Admission_Type", DbType.String, _Admisssion_Std.Admission_Type);
               else
                   AddParameter(oDbCommand, "@Admission_Type", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Admission_Semister != null)
                   AddParameter(oDbCommand, "@Admission_Semister", DbType.String, _Admisssion_Std.Admission_Semister);
               else
                   AddParameter(oDbCommand, "@Admission_Semister", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Orientation != null)
                   AddParameter(oDbCommand, "@Orientation", DbType.String, _Admisssion_Std.Orientation);
               else
                   AddParameter(oDbCommand, "@Orientation", DbType.String, DBNull.Value);

               if (_Admisssion_Std.Classes_Start != null)
                   AddParameter(oDbCommand, "@Classes_Start", DbType.String, _Admisssion_Std.Classes_Start);
               else
                   AddParameter(oDbCommand, "@Classes_Start", DbType.String, DBNull.Value);

               AddParameter(oDbCommand, "@Sl_No", DbType.Int32, _Admisssion_Std.Sl_No);

               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }




       public List<Admisssion_Std> LoadAdmisssion_Std_GetAll()
       {
           try
           {
               List<Admisssion_Std> Admisssion_StdList = new List<Admisssion_Std>();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Admission_StdInfo_GetAll", CommandType.StoredProcedure);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   Admisssion_Std oAdmisssion_Std = new Admisssion_Std();
                   BuildEntity(oDbDataReader, oAdmisssion_Std);
                   Admisssion_StdList.Add(oAdmisssion_Std);
               }
               oDbDataReader.Close();
               return Admisssion_StdList;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

       public DataTable Admission_StdInfo_GetAll()
       {
           DataTable dtUser = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtUser = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Admission_StdInfo_GetAll", CommandType.StoredProcedure);
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


       private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
       {
           oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
       }

       public Admisssion_Std Get_StntInfoById(int Sl_No)
       {
           try
           {
               Admisssion_Std objAdmisssion_Std = new Admisssion_Std();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("AdmissionStntInfo_GetById", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@Sl_No", DbType.Int64, Sl_No);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   BuildEntity(oDbDataReader, objAdmisssion_Std);
               }
               oDbDataReader.Close();
               return objAdmisssion_Std;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }


       public int Admisssion_StdDelete(int Sl_No)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Admission_StdDelete", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@Sl_No", DbType.Int32, Sl_No);
               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

    }
}
