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
   public class AcTypesDAL
    {
        private void BuildEntity(DbDataReader reader, AcTypes _AcTypes)
        {

            _AcTypes.TypesID = Convert.ToInt32(reader["TypesID"]);

            if (reader["Types"] != DBNull.Value)
                _AcTypes.Types = Convert.ToString(reader["Types"]);

            if (reader["Priority"] != DBNull.Value)
                _AcTypes.Priority = Convert.ToString(reader["Priority"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }

        public int AcTypes_Update(AcTypes _AcTypes)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcTypes_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@TypesID", DbType.Int32, _AcTypes.TypesID);


                if (_AcTypes.Types != "")
                    AddParameter(oDbCommand, "@Types", DbType.String, _AcTypes.Types);
                else
                    AddParameter(oDbCommand, "@Types", DbType.String, null);

                if (_AcTypes.Priority != "")
                    AddParameter(oDbCommand, "@Priority", DbType.String, _AcTypes.Priority);
                else
                    AddParameter(oDbCommand, "@Priority", DbType.String, null);



                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int AcTypes_Delete(int TypesID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcTypes_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TypesID", DbType.Int32, TypesID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public AcTypes AcTypes_GetBySl(int TypesID)
        {
            try
            {
                AcTypes objAcTypes = new AcTypes();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("AcTypes_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TypesID", DbType.Int32, TypesID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objAcTypes);
                }
                oDbDataReader.Close();
                return objAcTypes;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
