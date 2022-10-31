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
   public class AcSubjectDAL
    {
        private void BuildEntity(DbDataReader reader, AcSubject _AcSubject)
        {

            _AcSubject.SubjectID = Convert.ToInt32(reader["SubjectID"]);

            if (reader["FacultyID"] != DBNull.Value)
                _AcSubject.FacultyID = Convert.ToInt32(reader["FacultyID"]);

            if (reader["Faculty"] != DBNull.Value)
                _AcSubject.Faculty = Convert.ToString(reader["Faculty"]);

            if (reader["AcaProgID"] != DBNull.Value)
                _AcSubject.AcaProgID = Convert.ToInt32(reader["AcaProgID"]);         


            if (reader["Program"] != DBNull.Value)
                _AcSubject.Program = Convert.ToString(reader["Program"]);

            if (reader["Subject"] != DBNull.Value)
                _AcSubject.Subject = Convert.ToString(reader["Subject"]);

            if (reader["Priority"] != DBNull.Value)
                _AcSubject.Priority = Convert.ToString(reader["Priority"]);





        }

        public int Add_Subject(AcSubject _AcSubject)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_AcSubject", CommandType.StoredProcedure);




                if (_AcSubject.FacultyID >= 0)
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _AcSubject.FacultyID);
                else
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);

               

                if (_AcSubject.AcaProgID >= 0)
                    AddParameter(oDbCommand, "@AcaProgID", DbType.Int32, _AcSubject.AcaProgID);
                else
                    AddParameter(oDbCommand, "@AcaProgID", DbType.Int32, DBNull.Value);

               

                if (_AcSubject.Subject != null)
                    AddParameter(oDbCommand, "@Subject", DbType.String, _AcSubject.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, DBNull.Value);

                if (_AcSubject.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _AcSubject.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int Update_Subject(AcSubject _AcSubject)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcSubject_Update", CommandType.StoredProcedure);



                if (_AcSubject.FacultyID >= 0)
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _AcSubject.FacultyID);
                else
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);



                if (_AcSubject.AcaProgID >= 0)
                    AddParameter(oDbCommand, "@AcaProgID", DbType.Int32, _AcSubject.AcaProgID);
                else
                    AddParameter(oDbCommand, "@AcaProgID", DbType.Int32, DBNull.Value);



                if (_AcSubject.Subject != null)
                    AddParameter(oDbCommand, "@Subject", DbType.String, _AcSubject.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, DBNull.Value);

                if (_AcSubject.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _AcSubject.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);



                AddParameter(oDbCommand, "@SubjectID", DbType.Int32, _AcSubject.SubjectID);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public List<AcSubject> LoadAcSubject_GetAll()
        {
            try
            {
                List<AcSubject> AcSubjectList = new List<AcSubject>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcSubjectInfo_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    AcSubject oAcSubject = new AcSubject();
                    BuildEntity(oDbDataReader, oAcSubject);
                    AcSubjectList.Add(oAcSubject);
                }
                oDbDataReader.Close();
                return AcSubjectList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable AcSubjectInfo_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcSubjectInfo_GetAll", CommandType.StoredProcedure);
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

        public AcSubject Get_AcSubjectById(int SubjectID)
        {
            try
            {
                AcSubject objAcSubject = new AcSubject();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcSubject_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SubjectID", DbType.Int64, SubjectID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objAcSubject);
                }
                oDbDataReader.Close();
                return objAcSubject;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int AcSubjectDelete(int SubjectID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcSubject_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SubjectID", DbType.Int32, SubjectID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
