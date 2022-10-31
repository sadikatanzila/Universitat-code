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
   public class HR_SubjectDAL
    {
        private void BuildEntity(DbDataReader reader, HR_Subject _HR_Subject)
        {
            _HR_Subject.SubjectID = Convert.ToInt32(reader["SubjectID"]);

            if (reader["Subject"] != DBNull.Value)
                _HR_Subject.Subject = Convert.ToString(reader["Subject"]);

            if (reader["DepartmentID"] != DBNull.Value)
                _HR_Subject.DepartmentID = Convert.ToInt32(reader["DepartmentID"]);           

            if (reader["Department"] != DBNull.Value)
                _HR_Subject.Department = Convert.ToString(reader["Department"]);



            if (reader["CreateDate"] != DBNull.Value)
                _HR_Subject.CreateDate = Convert.ToDateTime(reader["CreateDate"]);

            if (reader["UpdateDate"] != DBNull.Value)
                _HR_Subject.UpdateDate = Convert.ToDateTime(reader["UpdateDate"]);

            if (reader["CreatedBy"] != DBNull.Value)
                _HR_Subject.CreatedBy = Convert.ToInt32(reader["CreatedBy"]);

            if (reader["UpdatedBy"] != DBNull.Value)
                _HR_Subject.UpdatedBy = Convert.ToInt32(reader["UpdatedBy"]);

            if (reader["Priority"] != DBNull.Value)
                _HR_Subject.Priority = Convert.ToString(reader["Priority"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public List<HR_Subject> HR_Subject_GetAll()
        {
            try
            {
                List<HR_Subject> lstHR_Subject = new List<HR_Subject>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Subject_GetAll", CommandType.StoredProcedure);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    HR_Subject oHR_Subject = new HR_Subject();
                    BuildEntity(reader, oHR_Subject);
                    lstHR_Subject.Add(oHR_Subject);
                }
                reader.Close();
                return lstHR_Subject;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_Subject_Add(HR_Subject _HR_Subject)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Subject_Create", CommandType.StoredProcedure);


                if (_HR_Subject.DepartmentID != null)
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, _HR_Subject.DepartmentID);
                else
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DBNull.Value);

                if (_HR_Subject.Subject != null)
                    AddParameter(oDbCommand, "@Subject", DbType.String, _HR_Subject.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, DBNull.Value);

                if (_HR_Subject.CreateDate.HasValue)
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, _HR_Subject.CreateDate);
                else
                    AddParameter(oDbCommand, "@CreateDate", DbType.DateTime, DBNull.Value);

                if (_HR_Subject.CreatedBy != null)
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, _HR_Subject.CreatedBy);
                else
                    AddParameter(oDbCommand, "@CreatedBy", DbType.Int32, DBNull.Value);


                if (_HR_Subject.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_Subject.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable LoadDept_bySubject(int DepartmentID)
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_SubjectbySubject", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DepartmentID);
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




        public int HR_Subject_Update(HR_Subject _HR_Subject)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Subject_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@SubjectID", DbType.Int32, _HR_Subject.SubjectID);


                if (_HR_Subject.DepartmentID != null)
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, _HR_Subject.DepartmentID);
                else
                    AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DBNull.Value);


                if (_HR_Subject.Subject != "")
                    AddParameter(oDbCommand, "@Subject", DbType.String, _HR_Subject.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, null);

              //  if (_HR_Subject.Department != "")
               //     AddParameter(oDbCommand, "@Department", DbType.String, _HR_Subject.Department);
               // else
               //     AddParameter(oDbCommand, "@Department", DbType.String, null);



                if (_HR_Subject.UpdatedBy != null)
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, _HR_Subject.UpdatedBy);
                else
                    AddParameter(oDbCommand, "@UpdatedBy", DbType.Int32, DBNull.Value);

                if (_HR_Subject.UpdateDate.HasValue)
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, _HR_Subject.UpdateDate);
                else
                    AddParameter(oDbCommand, "@UpdateDate", DbType.DateTime, DBNull.Value);

                if (_HR_Subject.Priority != null)
                    AddParameter(oDbCommand, "@Priority", DbType.String, _HR_Subject.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_Subject_Delete(int SubjectID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Subject_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SubjectID", DbType.Int32, SubjectID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_Subject HR_Subject_GetBySl(int SubjectID)
        {
            try
            {
                HR_Subject objHR_Subject = new HR_Subject();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Subject_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SubjectID", DbType.Int32, SubjectID);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntity(reader, objHR_Subject);
                }
                reader.Close();
                return objHR_Subject;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public DataTable HR_FacultyDept_GetAllForDDL()
        {
            DataTable dtHR_User = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtHR_User = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_FacultyDept_GetAll", CommandType.StoredProcedure);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtHR_User.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtHR_User;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtHR_User.Dispose();
                oDbDataReader.Dispose();
            }
        }




        public DataTable LoadSubject_byDept(int DepartmentID)
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Subject_byDept", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DepartmentID", DbType.Int32, DepartmentID);
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
