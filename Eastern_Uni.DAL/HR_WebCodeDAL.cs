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
  public class HR_WebCodeDAL
    {

      private void BuildEntity(DbDataReader reader, HR_WebCode _HR_WebCode)
      {
          _HR_WebCode.WebCode_Sl = Convert.ToInt32(reader["WebCode_Sl"]);

          if (reader["Code"] != DBNull.Value)
              _HR_WebCode.Code = Convert.ToString(reader["Code"]);

          if (reader["Object"] != DBNull.Value)
              _HR_WebCode.Object = Convert.ToString(reader["Object"]);


          if (reader["ObjectCode"] != DBNull.Value)
              _HR_WebCode.ObjectCode = Convert.ToString(reader["ObjectCode"]);

      }

      private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
      {
          oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
      }




      public int TruckingExt_Update(HR_WebCode _HR_WebCode)
      {

          try
          {
              DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_WebCode_Update", CommandType.StoredProcedure);

              AddParameter(oDbCommand, "@WebCode_Sl", DbType.Int32, _HR_WebCode.WebCode_Sl);

           /*   if (_HR_WebCode.Code != null)
                  AddParameter(oDbCommand, "@Code", DbType.String, _HR_WebCode.Code);
              else
                  AddParameter(oDbCommand, "@Code", DbType.String, null);

              if (_HR_WebCode.Object != null)
                  AddParameter(oDbCommand, "@Object", DbType.String, _HR_WebCode.Object);
              else
                  AddParameter(oDbCommand, "@Object", DbType.String, null);

              if (_HR_WebCode.ObjectCode != null)
                  AddParameter(oDbCommand, "@ObjectCode", DbType.String, _HR_WebCode.ObjectCode);
              else
                  AddParameter(oDbCommand, "@ObjectCode", DbType.String, null);

              */



              return DbProviderHelper.ExecuteNonQuery(oDbCommand);
          }
          catch (Exception ex)
          {
              throw ex;
          }
      }


      public HR_WebCode HR_WebCode_GetTruckingExt(string PostCode)
      {
          try
          {
              HR_WebCode objHR_WebCode = new HR_WebCode();
              DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_WebCode_TruckingExt", CommandType.StoredProcedure);
              AddParameter(oDbCommand, "@ObjectCode", DbType.String, PostCode);
              DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
              while (reader.Read())
              {
                  BuildEntity(reader, objHR_WebCode);
              }
              reader.Close();
              return objHR_WebCode;
          }
          catch (Exception ex)
          {
              throw ex;
          }
      }
    }
}
