using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Common;
using Eastern_Uni.DAL;


namespace Eastern_Uni.DAL
{
    
   public class UserDAL
    {
       public UserDAL()
       {
           DbProviderHelper.GetConnection();
       }
       public DataTable User_GetRoleByUserID(string userName, string password)
       {
           DataTable dtUser = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtUser = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("User_GetUserIDByUserNamePassword", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@UserName", DbType.String, userName);
               AddParameter(oDbCommand, "@Password", DbType.String, password);
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

       public DataTable FindOutUserSectionId(string userID, string password)
       {
           DataTable dtUser = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtUser = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("FindOutUserSectionId", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@userID", DbType.String, userID);
               AddParameter(oDbCommand, "@Password", DbType.String, password);
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
       public string User_GetUserIDByUserNamePassword(string userName, string password)
       {
           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("User_GetUserIDByUserNamePassword", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@UserName", DbType.String, userName);
               AddParameter(oDbCommand, "@Password", DbType.String, password);
               return (string)DbProviderHelper.ExecuteScalar(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

       public DataTable User_GetRoleByUserID(string userID)
       {
           DataTable dtUser = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtUser = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("User_GetNameAndRoleByUserID", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@UserID", DbType.String, userID);
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
       public DataTable OfficerName_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_OfficersForDll", CommandType.StoredProcedure);

               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }

       public DataTable KeyPersonnelName_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_KeyPersonneForDll", CommandType.StoredProcedure);

               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable DeptName_LoadForDll(int FacultyID)
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_DeptbyFacultyForDll", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable SemisterType_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_SemisterTypeForDll", CommandType.StoredProcedure);
              // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }

       public DataTable ClubType_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_GetAll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }

       public DataTable User_GetRoleByUserIDSection(string userName, string password, int SectionID)
       {
           DataTable dtUser = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtUser = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("User_GetUserIDByUserNamePasswordSection", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@UserName", DbType.String, userName);
               AddParameter(oDbCommand, "@Password", DbType.String, password);
               AddParameter(oDbCommand, "@SectionID", DbType.Int32, SectionID);
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



       public DataTable AdmissionType_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_Admission_TypeForDll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable Shift_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_ShiftTypeForDll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable Type_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_TypesForDll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }

       public DataTable ProgramType_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_ProgramForDll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable LoadSubjectByFaculty_Prog(int FacultyID, int AcaProgID)
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_SubjectByFacultyProg", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               AddParameter(oDbCommand, "@AcaProgID", DbType.Int32, AcaProgID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable LoadSubjectByFaculty(int FacultyID)
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_SubjectByFaculty", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }

       public DataTable LoadSubjectByProg(int AcaProgID)
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_SubjectByProg", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@AcaProgID", DbType.Int32, AcaProgID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }

       public DataTable LoadSubjectNULL()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetNO_Subject", CommandType.StoredProcedure);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }

       public DataTable LoadSubject_Tution(int FacultyID)
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_Subject_forTutionFee", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }
       public DataTable Notice_Search(string storeProcedure, string Heading, string Detail)
       {
           DataTable table = new DataTable();
           try
           {
               // DbConnection conn_st=ge;
               DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
               AddParameter(command, "@Heading", DbType.String, Heading);
               AddParameter(command, "@Detail", DbType.String, Detail);

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



       public DataTable TutionFee_Search(string storeProcedure, int SubjectID)
       {
           DataTable table = new DataTable();
           try
           {
               // DbConnection conn_st=ge;
               DbCommand command = DbProviderHelper.CreateCommand(storeProcedure, CommandType.StoredProcedure);
               AddParameter(command, "@SubjectID", DbType.Int32, SubjectID);

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

       public DataTable Semister_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_SemisterForDll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable Year_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("GetAll_YearForDll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }


       public DataTable MenuHeadWeb_LoadForDll()
       {
           DataTable dtRequisition = null;
           DbDataReader oDbDataReader = null;
           try
           {
               dtRequisition = new DataTable();

               DbCommand oDbCommand = DbProviderHelper.CreateCommand("MenuHeadWeb_GetAll", CommandType.StoredProcedure);
               // AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
               oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               dtRequisition.Load(oDbDataReader);
               oDbDataReader.Close();
               return dtRequisition;
           }
           catch (Exception ex)
           {
               throw ex;
           }

           finally
           {
               dtRequisition.Dispose();
               oDbDataReader.Dispose();
           }
       }
    }
}
