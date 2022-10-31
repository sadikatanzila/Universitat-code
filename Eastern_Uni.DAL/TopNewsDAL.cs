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
   public class TopNewsDAL
    {
       private void BuildEntity(DbDataReader reader, TopNews _TopNews)
        {

            _TopNews.Serial_no = Convert.ToInt32(reader["Serial_no"]);
            
            if (reader["headline"] != DBNull.Value)
                _TopNews.headline = Convert.ToString(reader["headline"]);

            if (reader["detail"] != DBNull.Value)
                _TopNews.detail = Convert.ToString(reader["detail"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _TopNews.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


            if (reader["UpdateTime"] != DBNull.Value)
                _TopNews.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _TopNews.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _TopNews.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);

        }

       public TopNews TopNews_GetBySl(int Serial_no)
        {
            try
            {
                TopNews oTopNews = new TopNews();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("TopNews_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Serial_no", DbType.Int32, Serial_no);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, oTopNews);
                }
                oDbDataReader.Close();
                return oTopNews;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public int TopNews_Update(TopNews _TopNews)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("TopNews_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@Serial_no", DbType.Int32, _TopNews.Serial_no);

                
                if (_TopNews.headline != "")
                    AddParameter(oDbCommand, "@headline", DbType.String, _TopNews.headline);
                else
                    AddParameter(oDbCommand, "@headline", DbType.String, null);               

                if (_TopNews.detail != "")
                    AddParameter(oDbCommand, "@detail", DbType.String, _TopNews.detail);
                else
                    AddParameter(oDbCommand, "@detail", DbType.String, "");

                // if (_TopNews.InsertionTime != null)
                //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _TopNews.InsertionTime);
                //else
                //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, null);

                if (_TopNews.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _TopNews.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, null);

                //  if (_TopNews.UserID > 0)
                //    AddParameter(oDbCommand, "@UserID", DbType.Int32, _TopNews.UserID);
                // else
                //    AddParameter(oDbCommand, "@UserID", DbType.Int32, 0);

                if (_TopNews.UpdateUser > 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _TopNews.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, 0);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int TopNews_Delete(int Serial_no)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("TopNews_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Serial_no", DbType.Int32, Serial_no);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
