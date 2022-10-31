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
   public class Clubs_FutureEventsDAL
    {
       private void BuildEntityAll(DbDataReader reader, Clubs_FutureEvents _Clubs_FutureEvents)
       {

           _Clubs_FutureEvents.EventsID = Convert.ToInt32(reader["EventsID"]);

           if (reader["ClubsID"] != DBNull.Value)
               _Clubs_FutureEvents.ClubsID = Convert.ToInt32(reader["ClubsID"]);

           if (reader["Name"] != DBNull.Value)
               _Clubs_FutureEvents.Name = Convert.ToString(reader["Name"]);

           if (reader["Headline"] != DBNull.Value)
               _Clubs_FutureEvents.Headline = Convert.ToString(reader["Headline"]);

           if (reader["Details"] != DBNull.Value)
               _Clubs_FutureEvents.Details = Convert.ToString(reader["Details"]);

           if (reader["PictureLocation"] != DBNull.Value)
               _Clubs_FutureEvents.PictureLocation = Convert.ToString(reader["PictureLocation"]);

           if (reader["Mail"] != DBNull.Value)
               _Clubs_FutureEvents.Mail = Convert.ToString(reader["Mail"]);

           if (reader["FromDate"] != DBNull.Value)
               _Clubs_FutureEvents.FromDate = Convert.ToDateTime(reader["FromDate"]);

           if (reader["ToDate"] != DBNull.Value)
               _Clubs_FutureEvents.ToDate = Convert.ToDateTime(reader["ToDate"]);

           if (reader["Remarks"] != DBNull.Value)
               _Clubs_FutureEvents.Remarks = Convert.ToString(reader["Remarks"]);

           if (reader["Time"] != DBNull.Value)
               _Clubs_FutureEvents.Time = Convert.ToString(reader["Time"]);

           if (reader["Venue"] != DBNull.Value)
               _Clubs_FutureEvents.Venue = Convert.ToString(reader["Venue"]);
       }


       public List<Clubs_FutureEvents> LoadClubs_FutureEvents_GetAll()
       {
           try
           {
               List<Clubs_FutureEvents> Clubs_FutureEventsList = new List<Clubs_FutureEvents>();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_FutureEventsGetAll", CommandType.StoredProcedure);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   Clubs_FutureEvents oClubs_FutureEvents = new Clubs_FutureEvents();
                   BuildEntityAll(oDbDataReader, oClubs_FutureEvents);
                   Clubs_FutureEventsList.Add(oClubs_FutureEvents);
               }
               oDbDataReader.Close();
               return Clubs_FutureEventsList;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }


        public DataTable Clubs_FutureEventsInfo_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_FutureEventsInfo_GetAll", CommandType.StoredProcedure);
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


        public int Add_Clubs_FutureEvents(Clubs_FutureEvents _Clubs_FutureEvents)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Clubs_FutureEvents", CommandType.StoredProcedure);



                if (_Clubs_FutureEvents.ClubsID >= 0)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _Clubs_FutureEvents.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);
              
              //  if (_Clubs_FutureEvents.Name != null)
              //      AddParameter(oDbCommand, "@Name", DbType.String, _Clubs_FutureEvents.Name);
              //  else
              //      AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Headline != null)
                    AddParameter(oDbCommand, "@Headline", DbType.String, _Clubs_FutureEvents.Headline);
                else
                    AddParameter(oDbCommand, "@Headline", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _Clubs_FutureEvents.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Mail != null)
                    AddParameter(oDbCommand, "@Mail", DbType.String, _Clubs_FutureEvents.Mail);
                else
                    AddParameter(oDbCommand, "@Mail", DbType.String, DBNull.Value);


                if (_Clubs_FutureEvents.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _Clubs_FutureEvents.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);





                if (_Clubs_FutureEvents.FromDate != null)
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, _Clubs_FutureEvents.FromDate);
                else
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, DBNull.Value);

               
                if (_Clubs_FutureEvents.ToDate != null)
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, _Clubs_FutureEvents.ToDate);
                else
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, DBNull.Value);

                if (_Clubs_FutureEvents.Remarks != null)
                    AddParameter(oDbCommand, "@Remarks", DbType.String, _Clubs_FutureEvents.Remarks);
                else
                    AddParameter(oDbCommand, "@Remarks", DbType.String, DBNull.Value);


                if (_Clubs_FutureEvents.Time != null)
                    AddParameter(oDbCommand, "@Time", DbType.String, _Clubs_FutureEvents.Time);
                else
                    AddParameter(oDbCommand, "@Time", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Venue != null)
                    AddParameter(oDbCommand, "@Venue", DbType.String, _Clubs_FutureEvents.Venue);
                else
                    AddParameter(oDbCommand, "@Venue", DbType.String, DBNull.Value);


                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public List<Clubs_FutureEvents> Selected_Clubs_FutureEvents(int ClubsID, DateTime Current_Time)
        {
            try
            {
                List<Clubs_FutureEvents> Clubs_ExecutivesList = new List<Clubs_FutureEvents>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("FutureEventsInfo_GetByClubs", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ClubsID", DbType.Int32, ClubsID);
                AddParameter(oDbCommand, "@Current_Time", DbType.DateTime, Current_Time);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Clubs_FutureEvents oClubs_Executives = new Clubs_FutureEvents();
                    BuildEntityAll(oDbDataReader, oClubs_Executives);
                    Clubs_ExecutivesList.Add(oClubs_Executives);
                }
                oDbDataReader.Close();
                return Clubs_ExecutivesList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public List<Clubs_FutureEvents> FutureEvents_byDate(DateTime fDate, DateTime tDate)
        {
            try
            {
                List<Clubs_FutureEvents> Clubs_ExecutivesList = new List<Clubs_FutureEvents>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("FutureEvents_byDate", CommandType.StoredProcedure);
               
                AddParameter(oDbCommand, "@FromDate", DbType.DateTime, fDate);
                AddParameter(oDbCommand, "@ToDate", DbType.DateTime, tDate);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Clubs_FutureEvents oClubs_Executives = new Clubs_FutureEvents();
                    BuildEntityAll(oDbDataReader, oClubs_Executives);
                    Clubs_ExecutivesList.Add(oClubs_Executives);
                }
                oDbDataReader.Close();
                return Clubs_ExecutivesList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public Clubs_FutureEvents Get_StntInfoById(int EventsID)
        {
            try
            {
                Clubs_FutureEvents objClubs_FutureEvents = new Clubs_FutureEvents();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_FutureEventsInfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EventsID", DbType.Int64, EventsID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objClubs_FutureEvents);
                }
                oDbDataReader.Close();
                return objClubs_FutureEvents;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int Clubs_FutureEvents_Delete(int EventsID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_FutureEventsDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EventsID", DbType.Int32, EventsID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_Clubs_FutureEvents(Clubs_FutureEvents _Clubs_FutureEvents)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_FutureEvents_Update", CommandType.StoredProcedure);



                if (_Clubs_FutureEvents.ClubsID >= 0)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _Clubs_FutureEvents.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);

                //  if (_Clubs_FutureEvents.Name != null)
                //      AddParameter(oDbCommand, "@Name", DbType.String, _Clubs_FutureEvents.Name);
                //  else
                //      AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Headline != null)
                    AddParameter(oDbCommand, "@Headline", DbType.String, _Clubs_FutureEvents.Headline);
                else
                    AddParameter(oDbCommand, "@Headline", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Details != null)
                    AddParameter(oDbCommand, "@Details", DbType.String, _Clubs_FutureEvents.Details);
                else
                    AddParameter(oDbCommand, "@Details", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Mail != null)
                    AddParameter(oDbCommand, "@Mail", DbType.String, _Clubs_FutureEvents.Mail);
                else
                    AddParameter(oDbCommand, "@Mail", DbType.String, DBNull.Value);


                if (_Clubs_FutureEvents.PictureLocation != null)
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, _Clubs_FutureEvents.PictureLocation);
                else
                    AddParameter(oDbCommand, "@PictureLocation", DbType.String, DBNull.Value);


                if (_Clubs_FutureEvents.FromDate != null)
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, _Clubs_FutureEvents.FromDate);
                else
                    AddParameter(oDbCommand, "@FromDate", DbType.DateTime, DBNull.Value);


                if (_Clubs_FutureEvents.ToDate != null)
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, _Clubs_FutureEvents.ToDate);
                else
                    AddParameter(oDbCommand, "@ToDate", DbType.DateTime, DBNull.Value);

                if (_Clubs_FutureEvents.Remarks != null)
                    AddParameter(oDbCommand, "@Remarks", DbType.String, _Clubs_FutureEvents.Remarks);
                else
                    AddParameter(oDbCommand, "@Remarks", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Time != null)
                    AddParameter(oDbCommand, "@Time", DbType.String, _Clubs_FutureEvents.Time);
                else
                    AddParameter(oDbCommand, "@Time", DbType.String, DBNull.Value);

                if (_Clubs_FutureEvents.Venue != null)
                    AddParameter(oDbCommand, "@Venue", DbType.String, _Clubs_FutureEvents.Venue);
                else
                    AddParameter(oDbCommand, "@Venue", DbType.String, DBNull.Value);

                AddParameter(oDbCommand, "@EventsID", DbType.Int32, _Clubs_FutureEvents.EventsID);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
