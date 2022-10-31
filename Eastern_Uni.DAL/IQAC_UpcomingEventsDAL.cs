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
   public class IQAC_UpcomingEventsDAL
    {
        private void BuildEntityAll(DbDataReader reader, IQAC_UpcomingEvents _IQAC_UpcomingEvents)
        {

            _IQAC_UpcomingEvents.EventsID = Convert.ToInt32(reader["EventsID"]);

            if (reader["ClubsID"] != DBNull.Value)
                _IQAC_UpcomingEvents.ClubsID = Convert.ToInt32(reader["ClubsID"]);

            if (reader["Name"] != DBNull.Value)
                _IQAC_UpcomingEvents.Name = Convert.ToString(reader["Name"]);

            if (reader["Headline"] != DBNull.Value)
                _IQAC_UpcomingEvents.Headline = Convert.ToString(reader["Headline"]);

            if (reader["Details"] != DBNull.Value)
                _IQAC_UpcomingEvents.Details = Convert.ToString(reader["Details"]);

            if (reader["PictureLocation"] != DBNull.Value)
                _IQAC_UpcomingEvents.PictureLocation = Convert.ToString(reader["PictureLocation"]);

            if (reader["Mail"] != DBNull.Value)
                _IQAC_UpcomingEvents.Mail = Convert.ToString(reader["Mail"]);

            if (reader["FromDate"] != DBNull.Value)
                _IQAC_UpcomingEvents.FromDate = Convert.ToDateTime(reader["FromDate"]);

            if (reader["ToDate"] != DBNull.Value)
                _IQAC_UpcomingEvents.ToDate = Convert.ToDateTime(reader["ToDate"]);

            if (reader["Remarks"] != DBNull.Value)
                _IQAC_UpcomingEvents.Remarks = Convert.ToString(reader["Remarks"]);

            if (reader["Time"] != DBNull.Value)
                _IQAC_UpcomingEvents.Time = Convert.ToString(reader["Time"]);

            if (reader["Venue"] != DBNull.Value)
                _IQAC_UpcomingEvents.Venue = Convert.ToString(reader["Venue"]);

            if (reader["Organized_by"] != DBNull.Value)
                _IQAC_UpcomingEvents.Organized_by = Convert.ToString(reader["Organized_by"]);


            if (reader["SliderImage"] != DBNull.Value)
                _IQAC_UpcomingEvents.SliderImage = Convert.ToString(reader["SliderImage"]);

        }


        public List<IQAC_UpcomingEvents> LoadIQAC_UpcomingEvents_GetAll()
        {
            try
            {
                List<IQAC_UpcomingEvents> IQAC_UpcomingEventsList = new List<IQAC_UpcomingEvents>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("IQAC_UpcomingEventsGetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    IQAC_UpcomingEvents oIQAC_UpcomingEvents = new IQAC_UpcomingEvents();
                    BuildEntityAll(oDbDataReader, oIQAC_UpcomingEvents);
                    IQAC_UpcomingEventsList.Add(oIQAC_UpcomingEvents);
                }
                oDbDataReader.Close();
                return IQAC_UpcomingEventsList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable IQAC_UpcomingEventsInfo_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("IQAC_UpcomingEventsInfo_GetAll", CommandType.StoredProcedure);
                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtUser.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtUser;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtUser.Dispose();
                oDbDataReader.Dispose();
            }
        }

        private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
        }


        public int Add_IQAC_UpcomingEvents(IQAC_UpcomingEvents _IQAC_UpcomingEvents)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_IQAC_UpcomingEvents", CommandType.StoredProcedure);



                if (_IQAC_UpcomingEvents.ClubsID >= 0)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _IQAC_UpcomingEvents.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);

                if (_IQAC_UpcomingEvents.Organized_by != null)
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, _IQAC_UpcomingEvents.Organized_by);
                else
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Headline != null)
                    AddParameter(oDbCommand, "@Headline", DbType.String, _IQAC_UpcomingEvents.Headline);
                else
                    AddParameter(oDbCommand, "@Headline", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _IQAC_UpcomingEvents.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Mail != null)
                    AddParameter(oDbCommand, "@Mail", DbType.String, _IQAC_UpcomingEvents.Mail);
                else
                    AddParameter(oDbCommand, "@Mail", DbType.String, DBNull.Value);


                if (_IQAC_UpcomingEvents.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _IQAC_UpcomingEvents.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);





                if (_IQAC_UpcomingEvents.FromDate != null)
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, _IQAC_UpcomingEvents.FromDate);
                else
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, DBNull.Value);


                if (_IQAC_UpcomingEvents.ToDate != null)
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, _IQAC_UpcomingEvents.ToDate);
                else
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, DBNull.Value);

                if (_IQAC_UpcomingEvents.Remarks != null)
                    AddParameter(oDbCommand, "@Remarks", DbType.String, _IQAC_UpcomingEvents.Remarks);
                else
                    AddParameter(oDbCommand, "@Remarks", DbType.String, DBNull.Value);


                if (_IQAC_UpcomingEvents.Time != null)
                    AddParameter(oDbCommand, "@Time", DbType.String, _IQAC_UpcomingEvents.Time);
                else
                    AddParameter(oDbCommand, "@Time", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Venue != null)
                    AddParameter(oDbCommand, "@Venue", DbType.String, _IQAC_UpcomingEvents.Venue);
                else
                    AddParameter(oDbCommand, "@Venue", DbType.String, DBNull.Value);


                if (_IQAC_UpcomingEvents.SliderImage != null)
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, _IQAC_UpcomingEvents.SliderImage);
                else
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }





        public IQAC_UpcomingEvents Get_StntInfoById(int EventsID)
        {
            try
            {
                IQAC_UpcomingEvents objIQAC_UpcomingEvents = new IQAC_UpcomingEvents();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("IQAC_UpcomingEventsInfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EventsID", DbType.Int64, EventsID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objIQAC_UpcomingEvents);
                }
                oDbDataReader.Close();
                return objIQAC_UpcomingEvents;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int IQAC_UpcomingEvents_Delete(int EventsID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("IQAC_UpcomingEventsDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EventsID", DbType.Int32, EventsID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_IQAC_UpcomingEvents(IQAC_UpcomingEvents _IQAC_UpcomingEvents)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("IQAC_UpcomingEvents_Update", CommandType.StoredProcedure);



                if (_IQAC_UpcomingEvents.ClubsID >= 0)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _IQAC_UpcomingEvents.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);

                if (_IQAC_UpcomingEvents.Organized_by != null)
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, _IQAC_UpcomingEvents.Organized_by);
                else
                    AddParameter(oDbCommand, "@Organized_by", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Headline != null)
                    AddParameter(oDbCommand, "@Headline", DbType.String, _IQAC_UpcomingEvents.Headline);
                else
                    AddParameter(oDbCommand, "@Headline", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _IQAC_UpcomingEvents.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Mail != null)
                    AddParameter(oDbCommand, "@Mail", DbType.String, _IQAC_UpcomingEvents.Mail);
                else
                    AddParameter(oDbCommand, "@Mail", DbType.String, DBNull.Value);


                if (_IQAC_UpcomingEvents.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _IQAC_UpcomingEvents.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);


                if (_IQAC_UpcomingEvents.FromDate != null)
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, _IQAC_UpcomingEvents.FromDate);
                else
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, DBNull.Value);


                if (_IQAC_UpcomingEvents.ToDate != null)
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, _IQAC_UpcomingEvents.ToDate);
                else
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, DBNull.Value);

                if (_IQAC_UpcomingEvents.Remarks != null)
                    AddParameter(oDbCommand, "@Remarks", DbType.String, _IQAC_UpcomingEvents.Remarks);
                else
                    AddParameter(oDbCommand, "@Remarks", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Time != null)
                    AddParameter(oDbCommand, "@Time", DbType.String, _IQAC_UpcomingEvents.Time);
                else
                    AddParameter(oDbCommand, "@Time", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.Venue != null)
                    AddParameter(oDbCommand, "@Venue", DbType.String, _IQAC_UpcomingEvents.Venue);
                else
                    AddParameter(oDbCommand, "@Venue", DbType.String, DBNull.Value);

                if (_IQAC_UpcomingEvents.SliderImage != null)
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, _IQAC_UpcomingEvents.SliderImage);
                else
                    AddParameter(oDbCommand, "@SliderImage", DbType.String, DBNull.Value);


                AddParameter(oDbCommand, "@EventsID", DbType.Int32, _IQAC_UpcomingEvents.EventsID);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    
    }
}
