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
   public class FacultyTypeDAL
    {
        private void BuildEntity(DbDataReader reader, FacultyType _FacultyType)
        {

            _FacultyType.FacultyID = Convert.ToInt32(reader["FacultyID"]);

            if (reader["Faculty"] != DBNull.Value)
                _FacultyType.Faculty = Convert.ToString(reader["Faculty"]);

            if (reader["Priority"] != DBNull.Value)
                _FacultyType.Priority = Convert.ToString(reader["Priority"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public int FacultyType_Update(FacultyType _FacultyType)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("FacultyType_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _FacultyType.FacultyID);


                if (_FacultyType.Faculty != "")
                    AddParameter(oDbCommand, "@Faculty", DbType.String, _FacultyType.Faculty);
                else
                    AddParameter(oDbCommand, "@Faculty", DbType.String, null);

                if (_FacultyType.Priority != "")
                    AddParameter(oDbCommand, "@Priority", DbType.String, _FacultyType.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, null);

               

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int FacultyType_Delete(int FacultyID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("FacultyType_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public FacultyType FacultyType_GetBySl(int FacultyID)
        {
            try
            {
                FacultyType objFacultyType = new FacultyType();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("FacultyType_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@FacultyID", DbType.Int32, FacultyID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objFacultyType);
                }
                oDbDataReader.Close();
                return objFacultyType;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
