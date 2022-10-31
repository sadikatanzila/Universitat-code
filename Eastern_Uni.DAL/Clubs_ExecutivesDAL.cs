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
   public class Clubs_ExecutivesDAL
    {
        private void BuildEntity(DbDataReader reader, Clubs_Executives _Clubs_Executives)
        {

            _Clubs_Executives.ExecutiveID = Convert.ToInt32(reader["ExecutiveID"]);

            if (reader["ClubsID"] != DBNull.Value)
                _Clubs_Executives.ClubsID = Convert.ToInt32(reader["ClubsID"]);

            if (reader["ClubName"] != DBNull.Value)
                _Clubs_Executives.ClubName = Convert.ToString(reader["ClubName"]);


            if (reader["Name"] != DBNull.Value)
                _Clubs_Executives.Name = Convert.ToString(reader["Name"]);





            if (reader["Post"] != DBNull.Value)
                _Clubs_Executives.Post = Convert.ToString(reader["Post"]);

            if (reader["ID"] != DBNull.Value)
                _Clubs_Executives.ID = Convert.ToString(reader["ID"]);



            if (reader["InsertionTime"] != DBNull.Value)
                _Clubs_Executives.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);

            if (reader["UpdateTime"] != DBNull.Value)
                _Clubs_Executives.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _Clubs_Executives.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _Clubs_Executives.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


        }

        public List<Clubs_Executives> Clubs_Executives_GetAll()
        {
            try
            {
                List<Clubs_Executives> Clubs_ExecutivesList = new List<Clubs_Executives>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Executives_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Clubs_Executives oClubs_Executives = new Clubs_Executives();
                    BuildEntity(oDbDataReader, oClubs_Executives);
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

        public int Clubs_Executives_Delete(int Clubs_ExecutivesID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Executives_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Clubs_ExecutivesID", DbType.Int32, Clubs_ExecutivesID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
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

        public DataTable LoadClubs_Executives_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Executives_GetAll", CommandType.StoredProcedure);
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


        public int Add_Clubs_Executives(Clubs_Executives _Clubs_Executives)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_Clubs_Executives", CommandType.StoredProcedure);


                if (_Clubs_Executives.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Clubs_Executives.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs_Executives.ClubsID != null)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _Clubs_Executives.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);

                if (_Clubs_Executives.Post != null)
                    AddParameter(oDbCommand, "@Post", DbType.String, _Clubs_Executives.Post);
                else
                    AddParameter(oDbCommand, "@Post", DbType.String, DBNull.Value);

                if (_Clubs_Executives.ID != null)
                    AddParameter(oDbCommand, "@ID", DbType.String, _Clubs_Executives.ID);
                else
                    AddParameter(oDbCommand, "@ID", DbType.String, DBNull.Value);







                if (_Clubs_Executives.InsertionTime != null)
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, _Clubs_Executives.InsertionTime);
                else
                    AddParameter(oDbCommand, "@InsertionTime", DbType.DateTime, DBNull.Value);

                if (_Clubs_Executives.UserID >= 0)
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, _Clubs_Executives.UserID);
                else
                    AddParameter(oDbCommand, "@UserID", DbType.Int32, DBNull.Value);






                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_Clubs_Executives(Clubs_Executives _Clubs_Executives)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Executives_Update", CommandType.StoredProcedure);



                if (_Clubs_Executives.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _Clubs_Executives.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_Clubs_Executives.Post != null)
                    AddParameter(oDbCommand, "@Post", DbType.String, _Clubs_Executives.Post);
                else
                    AddParameter(oDbCommand, "@Post", DbType.String, DBNull.Value);

                if (_Clubs_Executives.ID != null)
                    AddParameter(oDbCommand, "@ID", DbType.String, _Clubs_Executives.ID);
                else
                    AddParameter(oDbCommand, "@ID", DbType.String, DBNull.Value);
              

                if (_Clubs_Executives.ClubsID != null)
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, _Clubs_Executives.ClubsID);
                else
                    AddParameter(oDbCommand, "@ClubsID", DbType.Int32, DBNull.Value);




                if (_Clubs_Executives.UpdateTime != null)
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, _Clubs_Executives.UpdateTime);
                else
                    AddParameter(oDbCommand, "@UpdateTime", DbType.DateTime, DBNull.Value);

                if (_Clubs_Executives.UpdateUser >= 0)
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, _Clubs_Executives.UpdateUser);
                else
                    AddParameter(oDbCommand, "@UpdateUser", DbType.Int32, DBNull.Value);




                AddParameter(oDbCommand, "@ExecutiveID", DbType.Int32, _Clubs_Executives.ExecutiveID);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public Clubs_Executives Get_Clubs_ExecutivesInfoID(int Clubs_ExecutivesID)
        {
            try
            {
                Clubs_Executives objClubs_Executives = new Clubs_Executives();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Clubs_Executives_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Clubs_ExecutivesID", DbType.Int32, Clubs_ExecutivesID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntity(oDbDataReader, objClubs_Executives);
                }
                oDbDataReader.Close();
                return objClubs_Executives;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public List<Clubs_Executives> Selected_ClubsExecutives(int ClubsID)
        {
            try
            {
                List<Clubs_Executives> Clubs_ExecutivesList = new List<Clubs_Executives>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Selected_ClubsExecutives", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ClubsID", DbType.Int32, ClubsID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    Clubs_Executives oClubs_Executives = new Clubs_Executives();
                    BuildEntity(oDbDataReader, oClubs_Executives);
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
    }
}
