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
  public  class EUBCDAL
    {
        private void BuildEntityAll(DbDataReader reader, EUBC _EUBC)
        {

            _EUBC.Std_Sl = Convert.ToInt32(reader["Std_Sl"]);

            if (reader["Name"] != DBNull.Value)
                _EUBC.Name = Convert.ToString(reader["Name"]);

            if (reader["Department"] != DBNull.Value)
                _EUBC.Department = Convert.ToString(reader["Department"]);

            if (reader["GPA"] != DBNull.Value)
                _EUBC.GPA = Convert.ToString(reader["GPA"]);

            if (reader["Email"] != DBNull.Value)
                _EUBC.Email = Convert.ToString(reader["Email"]);

            if (reader["Cell"] != DBNull.Value)
                _EUBC.Cell = Convert.ToString(reader["Cell"]);

            if (reader["GroupTruckingExt"] != DBNull.Value)
                _EUBC.GroupTruckingExt = Convert.ToString(reader["GroupTruckingExt"]);

            if (reader["DesignationGrp"] != DBNull.Value)
                _EUBC.DesignationGrp = Convert.ToString(reader["DesignationGrp"]);

            if (reader["PicLocation"] != DBNull.Value)
                _EUBC.PicLocation = Convert.ToString(reader["PicLocation"]);

            if (reader["DataInsert_Time"] != DBNull.Value)
                _EUBC.DataInsert_Time = Convert.ToDateTime(reader["DataInsert_Time"]);

            if (reader["InsertionTime"] != DBNull.Value)
                _EUBC.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


            if (reader["UpdateTime"] != DBNull.Value)
                _EUBC.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);

            if (reader["UserID"] != DBNull.Value)
                _EUBC.UserID = Convert.ToInt32(reader["UserID"]);

            if (reader["UpdateUser"] != DBNull.Value)
                _EUBC.UpdateUser = Convert.ToInt32(reader["UpdateUser"]);


            if (reader["TruckingExt"] != DBNull.Value)
                _EUBC.TruckingExt = Convert.ToString(reader["TruckingExt"]);

            if (reader["Deleted"] != DBNull.Value)
                _EUBC.Deleted = Convert.ToInt32(reader["Deleted"]);

           
        }

        public List<EUBC> EUBC_GetAll()
        {
            try
            {
                List<EUBC> EUBCList = new List<EUBC>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_GetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    EUBC oEUBC = new EUBC();
                    BuildEntityAll(oDbDataReader, oEUBC);
                    EUBCList.Add(oEUBC);
                }
                oDbDataReader.Close();
                return EUBCList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int EUBC_Delete(int EUBCID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EUBCID", DbType.Int32, EUBCID);
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

        public DataTable LoadEUBC_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_GetAll", CommandType.StoredProcedure);
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


        public int Add_EUBC(EUBC _EUBC)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_EUBC", CommandType.StoredProcedure);

                if (_EUBC.GroupTruckingExt != null)
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, _EUBC.GroupTruckingExt);
                else
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, DBNull.Value);

                if (_EUBC.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _EUBC.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_EUBC.GPA != null)
                    AddParameter(oDbCommand, "@GPA", DbType.String, _EUBC.GPA);
                else
                    AddParameter(oDbCommand, "@GPA", DbType.String, DBNull.Value);

                if (_EUBC.Department != null)
                    AddParameter(oDbCommand, "@Department", DbType.String, _EUBC.Department);
                else
                    AddParameter(oDbCommand, "@Department", DbType.String, DBNull.Value);

                if (_EUBC.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _EUBC.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_EUBC.Cell != null)
                    AddParameter(oDbCommand, "@Cell", DbType.String, _EUBC.Cell);
                else
                    AddParameter(oDbCommand, "@Cell", DbType.String, DBNull.Value);

                if (_EUBC.Deleted != null)
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, _EUBC.Deleted);
                else
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, DBNull.Value);   

                if (_EUBC.DesignationGrp != null)
                    AddParameter(oDbCommand, "@DesignationGrp", DbType.String, _EUBC.DesignationGrp);
                else
                    AddParameter(oDbCommand, "@DesignationGrp", DbType.String, DBNull.Value);
                

                if (_EUBC.PicLocation != null)
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, _EUBC.PicLocation);
                else
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, DBNull.Value);

                if (_EUBC.DataInsert_Time != null)
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, _EUBC.DataInsert_Time);
                else
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, DBNull.Value);
                
                if (_EUBC.TruckingExt != null)
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, _EUBC.TruckingExt);
                else
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_EUBC(EUBC _EUBC)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_Update", CommandType.StoredProcedure);

                if (_EUBC.GroupTruckingExt != null)
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, _EUBC.GroupTruckingExt);
                else
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, DBNull.Value);

                if (_EUBC.Name != null)
                    AddParameter(oDbCommand, "@Name", DbType.String, _EUBC.Name);
                else
                    AddParameter(oDbCommand, "@Name", DbType.String, DBNull.Value);

                if (_EUBC.GPA != null)
                    AddParameter(oDbCommand, "@GPA", DbType.String, _EUBC.GPA);
                else
                    AddParameter(oDbCommand, "@GPA", DbType.String, DBNull.Value);

                if (_EUBC.Department != null)
                    AddParameter(oDbCommand, "@Department", DbType.String, _EUBC.Department);
                else
                    AddParameter(oDbCommand, "@Department", DbType.String, DBNull.Value);

                if (_EUBC.Email != null)
                    AddParameter(oDbCommand, "@Email", DbType.String, _EUBC.Email);
                else
                    AddParameter(oDbCommand, "@Email", DbType.String, DBNull.Value);

                if (_EUBC.Cell != null)
                    AddParameter(oDbCommand, "@Cell", DbType.String, _EUBC.Cell);
                else
                    AddParameter(oDbCommand, "@Cell", DbType.String, DBNull.Value);

                if (_EUBC.Deleted != null)
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, _EUBC.Deleted);
                else
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, DBNull.Value);   

                if (_EUBC.DesignationGrp != null)
                    AddParameter(oDbCommand, "@DesignationGrp", DbType.String, _EUBC.DesignationGrp);
                else
                    AddParameter(oDbCommand, "@DesignationGrp", DbType.String, DBNull.Value);


                if (_EUBC.PicLocation != null)
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, _EUBC.PicLocation);
                else
                    AddParameter(oDbCommand, "@PicLocation", DbType.String, DBNull.Value);

                if (_EUBC.DataInsert_Time != null)
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, _EUBC.DataInsert_Time);
                else
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, DBNull.Value);

                if (_EUBC.TruckingExt != null)
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, _EUBC.TruckingExt);
                else
                    AddParameter(oDbCommand, "@TruckingExt", DbType.String, DBNull.Value);

                AddParameter(oDbCommand, "@Std_Sl", DbType.Int32, _EUBC.Std_Sl);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public EUBC Get_EUBCInfoID(int EUBCID)
        {
            try
            {
                EUBC objEUBC = new EUBC();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@EUBCID", DbType.Int32, EUBCID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEUBC);
                }
                oDbDataReader.Close();
                return objEUBC;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public EUBC Get_CourseInfoID(String SerialID)
        {
            try
            {
                EUBC objEUBC = new EUBC();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("MOStdinfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@SerialID", DbType.String, SerialID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEUBC);
                }
                oDbDataReader.Close();
                return objEUBC;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int EU_EUMOInfo_Delete(int Std_Sl)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUMO_InfoDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Std_Sl", DbType.Int32, Std_Sl);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public EUBC GetInfo_GrpTrackingNo(String GrpTrackingNo)
        {
            try
            {
                EUBC objEUBC = new EUBC();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBCStdinfo_GetByGrpTrackingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@GrpTrackingNo", DbType.String, GrpTrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEUBC);
                }
                oDbDataReader.Close();
                return objEUBC;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public EUBC EUBC_GetTruckingExt(string PostCode)
        {
            try
            {
                EUBC objEUBC = new EUBC();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_WebCode_TruckingExt", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@ObjectCode", DbType.String, PostCode);
                DbDataReader reader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (reader.Read())
                {
                    BuildEntityAll(reader, objEUBC);
                }
                reader.Close();
                return objEUBC;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
