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
   public class Faculty_DesignationDAL
    {
        private void BuildEntity(DbDataReader reader, Faculty_Designation _Faculty_Designation)
        {

            _Faculty_Designation.DesignationID = Convert.ToInt32(reader["DesignationID"]);

            if (reader["Designation"] != DBNull.Value)
                _Faculty_Designation.Designation = Convert.ToString(reader["Designation"]);

            if (reader["Priority"] != DBNull.Value)
                _Faculty_Designation.Priority = Convert.ToString(reader["Priority"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public int Faculty_Designation_Update(Faculty_Designation _Faculty_Designation)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Faculty_Designation_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@DesignationID", DbType.Int32, _Faculty_Designation.DesignationID);


                if (_Faculty_Designation.Designation != "")
                    AddParameter(oDbCommand, "@Designation", DbType.String, _Faculty_Designation.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, null);

                if (_Faculty_Designation.Priority != "")
                    AddParameter(oDbCommand, "@Priority", DbType.String, _Faculty_Designation.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, null);



                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Faculty_Designation_Delete(int DesignationID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Faculty_Designation_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DesignationID", DbType.Int32, DesignationID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public Faculty_Designation Faculty_Designation_GetBySl(int DesignationID)
        {
            try
            {
                Faculty_Designation objFaculty_Designation = new Faculty_Designation();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Faculty_Designation_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@DesignationID", DbType.Int32, DesignationID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objFaculty_Designation);
                }
                oDbDataReader.Close();
                return objFaculty_Designation;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
