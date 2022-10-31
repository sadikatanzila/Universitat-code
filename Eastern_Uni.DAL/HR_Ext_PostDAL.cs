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
   public class HR_Ext_PostDAL
    {
        private void BuildEntity(DbDataReader reader, HR_Ext_Post _HR_Ext_Post)
        {

            _HR_Ext_Post.ExtPost_Sl = Convert.ToInt32(reader["ExtPost_Sl"]);

            if (reader["TrackingNo"] != DBNull.Value)
                _HR_Ext_Post.TrackingNo = Convert.ToString(reader["TrackingNo"]);

            if (reader["JobPost_ID"] != DBNull.Value)
                _HR_Ext_Post.JobPost_ID = Convert.ToInt32(reader["JobPost_ID"]);
        }


        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public int HR_Ext_Post_Add(HR_Ext_Post _HR_Ext_Post)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Ext_Post_Create", CommandType.StoredProcedure);

                if (_HR_Ext_Post.TrackingNo != "")
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HR_Ext_Post.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, DBNull.Value);

                if (_HR_Ext_Post.JobPost_ID >= 0)
                    AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, _HR_Ext_Post.JobPost_ID);
                else
                    AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, DBNull.Value);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int HR_Ext_Post_Update(HR_Ext_Post _HR_Ext_Post)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Ext_Post_Update", CommandType.StoredProcedure);

                AddParameter(oDbCommand, "@ExtPost_Sl", DbType.Int32, _HR_Ext_Post.ExtPost_Sl);


                if (_HR_Ext_Post.TrackingNo != "")
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HR_Ext_Post.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, null);

                if (_HR_Ext_Post.JobPost_ID >= 0)
                    AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, _HR_Ext_Post.JobPost_ID);
                else
                    AddParameter(oDbCommand, "@JobPost_ID", DbType.Int32, null);



                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_Ext_Post_Delete(int ExtPost_Sl)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Ext_Post_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ExtPost_Sl", DbType.Int32, ExtPost_Sl);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public HR_Ext_Post HR_Ext_Post_GetBySl(int ExtPost_Sl)
        {
            try
            {
                HR_Ext_Post objHR_Ext_Post = new HR_Ext_Post();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_Ext_Post_GetBySl", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ExtPost_Sl", DbType.Int32, ExtPost_Sl);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objHR_Ext_Post);
                }
                oDbDataReader.Close();
                return objHR_Ext_Post;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
