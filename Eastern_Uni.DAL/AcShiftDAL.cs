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
    public  class AcShiftDAL
    {
        private void BuildEntity(DbDataReader reader, AcShift _AcShift)
        {

            _AcShift.ShiftID = Convert.ToInt32(reader["ShiftID"]);

            if (reader["Shift"] != DBNull.Value)
                _AcShift.Shift = Convert.ToString(reader["Shift"]);

            if (reader["Priority"] != DBNull.Value)
                _AcShift.Priority = Convert.ToString(reader["Priority"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public int AcShift_Update(AcShift _AcShift)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcShift_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@ShiftID", DbType.Int32, _AcShift.ShiftID);


                if (_AcShift.Shift != "")
                    AddParameter(oDbCommand, "@Shift", DbType.String, _AcShift.Shift);
                else
                    AddParameter(oDbCommand, "@Shift", DbType.String, null);

                if (_AcShift.Priority != "")
                    AddParameter(oDbCommand, "@Priority", DbType.String, _AcShift.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, null);



                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int AcShift_Delete(int ShiftID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcShift_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ShiftID", DbType.Int32, ShiftID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public AcShift AcShift_GetBySl(int ShiftID)
        {
            try
            {
                AcShift objAcShift = new AcShift();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcShift_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ShiftID", DbType.Int32, ShiftID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objAcShift);
                }
                oDbDataReader.Close();
                return objAcShift;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
