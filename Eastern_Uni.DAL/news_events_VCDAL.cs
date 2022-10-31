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
   public class news_events_VCDAL
    {
       private void BuildEntity(DbDataReader reader, news_events_VC _news_events_VC)
       {

           _news_events_VC.serial_no = Convert.ToInt32(reader["serial_no"]);

           _news_events_VC.date = reader["date"] is DBNull ? 0 : Convert.ToInt32(reader["date"]);

           if (reader["month"] != DBNull.Value)
               _news_events_VC.month = Convert.ToString(reader["month"]);

           _news_events_VC.year = reader["year"] is DBNull ? 0 : Convert.ToInt32(reader["year"]);

           if (reader["headline"] != DBNull.Value)
               _news_events_VC.headline = Convert.ToString(reader["headline"]);


           if (reader["brief"] != DBNull.Value)
               _news_events_VC.brief = Convert.ToString(reader["brief"]);


           if (reader["PictureLocation"] != DBNull.Value)
               _news_events_VC.PictureLocation = Convert.ToString(reader["PictureLocation"]);


           if (reader["Ref"] != DBNull.Value)
               _news_events_VC.Ref = Convert.ToString(reader["Ref"]);


           if (reader["Posting_date"] != DBNull.Value)
               _news_events_VC.Posting_date = Convert.ToString(reader["Posting_date"]);


           if (reader["details"] != DBNull.Value)
               _news_events_VC.details = Convert.ToString(reader["details"]);

           if (reader["InsertionTime"] != DBNull.Value)
               _news_events_VC.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


           if (reader["UpdateTime"] != DBNull.Value)
               _news_events_VC.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

           if (reader["UserID"] != DBNull.Value)
               _news_events_VC.UserID = Convert.ToInt32(reader["UserID"]);

           if (reader["UpdateUser"] != DBNull.Value)
               _news_events_VC.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


           if (reader["HeaderImage"] != DBNull.Value)
               _news_events_VC.HeaderImage = Convert.ToString(reader["HeaderImage"]);






           if (reader["Priority"] != DBNull.Value)
               _news_events_VC.Priority = Convert.ToInt32(reader["Priority"]);

           if (reader["LastView_Date"] != DBNull.Value)
               _news_events_VC.LastView_Date = Convert.ToDateTime(reader["LastView_Date"]);

       }

       public news_events_VC NewsEvents_GetBySl(int serial_no)
       {
           try
           {
               news_events_VC onews_events_VC = new news_events_VC();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsEventsVC_GetBySl", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@serial_no", DbType.Int32, serial_no);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   BuildEntity(oDbDataReader, onews_events_VC);
               }
               oDbDataReader.Close();
               return onews_events_VC;
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


       public int NewsEvents_Update(news_events_VC _news_events_VC)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("news_events_VC_Update", CommandType.StoredProcedure);

               AddParameter(oDbCommand, "@serial_no", DbType.Int32, _news_events_VC.serial_no);

               if (_news_events_VC.date > 0)
                   AddParameter(oDbCommand, "@date", DbType.Int32, _news_events_VC.date);
               else
                   AddParameter(oDbCommand, "@date", DbType.Int32, 0);

               if (_news_events_VC.month != "")
                   AddParameter(oDbCommand, "@month", DbType.String, _news_events_VC.month);
               else
                   AddParameter(oDbCommand, "@month", DbType.String, null);

               if (_news_events_VC.year > 0)
                   AddParameter(oDbCommand, "@year", DbType.Int32, _news_events_VC.year);
               else
                   AddParameter(oDbCommand, "@year", DbType.Int32, 0);


               if (_news_events_VC.headline != "")
                   AddParameter(oDbCommand, "@headline", DbType.String, _news_events_VC.headline);
               else
                   AddParameter(oDbCommand, "@headline", DbType.String, null);

               if (_news_events_VC.brief != "")
                   AddParameter(oDbCommand, "@brief", DbType.String, _news_events_VC.brief);
               else
                   AddParameter(oDbCommand, "@brief", DbType.String, null);

               if (_news_events_VC.PictureLocation != "")
                   AddParameter(oDbCommand, "@PictureLocation", DbType.String, _news_events_VC.PictureLocation);
               else
                   AddParameter(oDbCommand, "@PictureLocation", DbType.String, "");

               if (_news_events_VC.Ref != "")
                   AddParameter(oDbCommand, "@Ref", DbType.String, _news_events_VC.Ref);
               else
                   AddParameter(oDbCommand, "@Ref", DbType.String, "");

               if (_news_events_VC.Posting_date != "")
                   AddParameter(oDbCommand, "@Posting_date", DbType.String, _news_events_VC.Posting_date);
               else
                   AddParameter(oDbCommand, "@Posting_date", DbType.String, "");

               if (_news_events_VC.details != "")
                   AddParameter(oDbCommand, "@details", DbType.String, _news_events_VC.details);
               else
                   AddParameter(oDbCommand, "@details", DbType.String, "");

               // if (_news_events_VC.InsertionTime != null)
               //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _news_events_VC.InsertionTime);
               //else
               //    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, null);

               if (_news_events_VC.UpdateTime != null)
                   AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _news_events_VC.UpdateTime);
               else
                   AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, null);

               //  if (_news_events_VC.UserID > 0)
               //    AddParameter(oDbCommand, "@UserID", DbType.Int32, _news_events_VC.UserID);
               // else
               //    AddParameter(oDbCommand, "@UserID", DbType.Int32, 0);

               if (_news_events_VC.UpdateUser > 0)
                   AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _news_events_VC.UpdateUser);
               else
                   AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, 0);


               if (_news_events_VC.HeaderImage != "")
                   AddParameter(oDbCommand, "@HeaderImage", DbType.String, _news_events_VC.HeaderImage);
               else
                   AddParameter(oDbCommand, "@HeaderImage", DbType.String, "");



               if (_news_events_VC.Priority > 0)
                   AddParameter(oDbCommand, "@Priority", DbType.Int32, _news_events_VC.Priority);
               else
                   AddParameter(oDbCommand, "@Priority", DbType.Int32, 0);

               if (_news_events_VC.LastView_Date != null)
                   AddParameter(oDbCommand, "@LastView_Date", DbType.DateTime, _news_events_VC.LastView_Date);
               else
                   AddParameter(oDbCommand, "@LastView_Date", DbType.DateTime, null);


               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }

       public int NewsEvents_Delete(int serial_no)
       {

           try
           {
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("NewsEventsVC_Delete", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@serial_no", DbType.Int32, serial_no);
               return DbProviderHelper.ExecuteNonQuery(oDbCommand);
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }
    }
}
