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
  public class EUBC_GroupDAL
    {
        private void BuildEntityAll(DbDataReader reader, EUBC_Group _EUBC_Group)
        {

            _EUBC_Group.GroupSl = Convert.ToInt32(reader["GroupSl"]);

            if (reader["GroupTruckingExt"] != DBNull.Value)
                _EUBC_Group.GroupTruckingExt = Convert.ToString(reader["GroupTruckingExt"]);

            if (reader["Institution"] != DBNull.Value)
                _EUBC_Group.Institution = Convert.ToString(reader["Institution"]);

            if (reader["Address"] != DBNull.Value)
                _EUBC_Group.Address = Convert.ToString(reader["Address"]);

            if (reader["Board"] != DBNull.Value)
                _EUBC_Group.Board = Convert.ToString(reader["Board"]);

            if (reader["TotalStudent"] != DBNull.Value)
                _EUBC_Group.TotalStudent = Convert.ToString(reader["TotalStudent"]);

            if (reader["SSC_Olevel"] != DBNull.Value)
                _EUBC_Group.SSC_Olevel = Convert.ToString(reader["SSC_Olevel"]);

            if (reader["Deleted"] != DBNull.Value)
                _EUBC_Group.Deleted = Convert.ToInt32(reader["Deleted"]);

            if (reader["DataInsert_Time"] != DBNull.Value)
                _EUBC_Group.DataInsert_Time = Convert.ToDateTime(reader["DataInsert_Time"]);

            
        }


        public List<EUBC_Group> LoadEUBC_Group_GetAll()
        {
            try
            {
                List<EUBC_Group> EUBC_GroupList = new List<EUBC_Group>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_GroupGetAll", CommandType.StoredProcedure);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    EUBC_Group oEUBC_Group = new EUBC_Group();
                    BuildEntityAll(oDbDataReader, oEUBC_Group);
                    EUBC_GroupList.Add(oEUBC_Group);
                }
                oDbDataReader.Close();
                return EUBC_GroupList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataTable EUBC_GroupInfo_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_GroupInfo_GetAll", CommandType.StoredProcedure);
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


        public int Add_EUBC_Group(EUBC_Group _EUBC_Group)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_EUBC_Group", CommandType.StoredProcedure);



                if (_EUBC_Group.GroupTruckingExt != null)
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, _EUBC_Group.GroupTruckingExt);
                else
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, DBNull.Value);

                if (_EUBC_Group.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _EUBC_Group.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);

                if (_EUBC_Group.Address != null)
                    AddParameter(oDbCommand, "@Address", DbType.String, _EUBC_Group.Address);
                else
                    AddParameter(oDbCommand, "@Address", DbType.String, DBNull.Value);

                if (_EUBC_Group.Board != null)
                    AddParameter(oDbCommand, "@Board", DbType.String, _EUBC_Group.Board);
                else
                    AddParameter(oDbCommand, "@Board", DbType.String, DBNull.Value);


                if (_EUBC_Group.TotalStudent != null)
                    AddParameter(oDbCommand, "@TotalStudent", DbType.String, _EUBC_Group.TotalStudent);
                else
                    AddParameter(oDbCommand, "@TotalStudent", DbType.String, DBNull.Value);

                if (_EUBC_Group.SSC_Olevel != null)
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, _EUBC_Group.SSC_Olevel);
                else
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, DBNull.Value);


                if (_EUBC_Group.Deleted != null)
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, _EUBC_Group.Deleted);
                else
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, DBNull.Value);


                if (_EUBC_Group.DataInsert_Time != null)
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, _EUBC_Group.DataInsert_Time);
                else
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, DBNull.Value);

              
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public EUBC_Group GetInfo_GrpTrackingNo(String GrpTrackingNo)
        {
            try
            {
                EUBC_Group objEUBC_Group = new EUBC_Group();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBCGrpinfo_GetByGrpTrackingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@GrpTrackingNo", DbType.String, GrpTrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEUBC_Group);
                }
                oDbDataReader.Close();
                return objEUBC_Group;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public EUBC_Group Get_StntInfoById(int GroupSl)
        {
            try
            {
                EUBC_Group objEUBC_Group = new EUBC_Group();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_GroupInfo_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@GroupSl", DbType.Int64, GroupSl);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objEUBC_Group);
                }
                oDbDataReader.Close();
                return objEUBC_Group;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public int EUBC_Group_Delete(int GroupSl)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_GroupDelete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@GroupSl", DbType.Int32, GroupSl);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_EUBC_Group(EUBC_Group _EUBC_Group)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("EUBC_Group_Update", CommandType.StoredProcedure);
                
                if (_EUBC_Group.GroupTruckingExt != null)
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, _EUBC_Group.GroupTruckingExt);
                else
                    AddParameter(oDbCommand, "@GroupTruckingExt", DbType.String, DBNull.Value);

                if (_EUBC_Group.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _EUBC_Group.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);

                if (_EUBC_Group.Address != null)
                    AddParameter(oDbCommand, "@Address", DbType.String, _EUBC_Group.Address);
                else
                    AddParameter(oDbCommand, "@Address", DbType.String, DBNull.Value);

                if (_EUBC_Group.Board != null)
                    AddParameter(oDbCommand, "@Board", DbType.String, _EUBC_Group.Board);
                else
                    AddParameter(oDbCommand, "@Board", DbType.String, DBNull.Value);


                if (_EUBC_Group.TotalStudent != null)
                    AddParameter(oDbCommand, "@TotalStudent", DbType.String, _EUBC_Group.TotalStudent);
                else
                    AddParameter(oDbCommand, "@TotalStudent", DbType.String, DBNull.Value);

                if (_EUBC_Group.SSC_Olevel != null)
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, _EUBC_Group.SSC_Olevel);
                else
                    AddParameter(oDbCommand, "@SSC_Olevel", DbType.String, DBNull.Value);


                if (_EUBC_Group.Deleted != null)
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, _EUBC_Group.Deleted);
                else
                    AddParameter(oDbCommand, "@Deleted", DbType.Int32, DBNull.Value);


                if (_EUBC_Group.DataInsert_Time != null)
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, _EUBC_Group.DataInsert_Time);
                else
                    AddParameter(oDbCommand, "@DataInsert_Time", DbType.DateTime, DBNull.Value);

                AddParameter(oDbCommand, "@GroupSl", DbType.Int32, _EUBC_Group.GroupSl);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
