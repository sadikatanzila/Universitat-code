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
    public class Board_TrusteesDAL
    {
        private void BuildEntity(DbDataReader reader, Board_Trustees _Board_Trustees)
        {

            _Board_Trustees.Serial_Id = Convert.ToInt32(reader["Serial_Id"]);

            if (reader["Priority_No"] != DBNull.Value)
                _Board_Trustees.Priority_No = Convert.ToString(reader["Priority_No"]);

            if (reader["Name"] != DBNull.Value)
                _Board_Trustees.Name = Convert.ToString(reader["Name"]);


            if (reader["Designation"] != DBNull.Value)
                _Board_Trustees.Designation = Convert.ToString(reader["Designation"]);

        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public int Board_Trustees_Update(Board_Trustees _Board_Trustees)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Board_Trustees_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@Serial_Id", DbType.Int32, _Board_Trustees.Serial_Id);


                if (_Board_Trustees.Priority_No != "")
                    AddParameter(oDbCommand, "@Priority_No", DbType.String, _Board_Trustees.Priority_No);
                else
                    AddParameter(oDbCommand, "@Priority_No", DbType.String, null);
                
                if (_Board_Trustees.Name != "")
                    AddParameter(oDbCommand, "@Name", DbType.String, _Board_Trustees.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, null);

                if (_Board_Trustees.Designation != "")
                    AddParameter(oDbCommand, "@Designation", DbType.String, _Board_Trustees.Designation);
                else
                    AddParameter(oDbCommand, "@Designation", DbType.String, null);

                

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int Board_Trustees_Delete(int Serial_Id)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Board_Trustees_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Serial_Id", DbType.Int32, Serial_Id);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public Board_Trustees Board_Trustees_GetBySl(int Serial_Id)
        {
            try
            {
                Board_Trustees objBoard_Trustees = new Board_Trustees();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Board_Trustees_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Serial_Id", DbType.Int32, Serial_Id);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objBoard_Trustees);
                }
                oDbDataReader.Close();
                return objBoard_Trustees;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
