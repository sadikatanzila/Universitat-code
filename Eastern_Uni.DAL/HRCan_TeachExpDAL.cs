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
   public class HRCan_TeachExpDAL
    {

        private void BuildEntityAll(DbDataReader reader, HRCan_TeachExp _HRCan_TeachExp)
        {

            _HRCan_TeachExp.Can_TeachExpID = Convert.ToInt32(reader["Can_TeachExpID"]);


            if (reader["TrackingNo"] != DBNull.Value)
                _HRCan_TeachExp.TrackingNo = Convert.ToString(reader["TrackingNo"]);


            if (reader["FacultyID"] != DBNull.Value)
                _HRCan_TeachExp.FacultyID = Convert.ToInt32(reader["FacultyID"]);

            if (reader["Faculty"] != DBNull.Value)
                _HRCan_TeachExp.Faculty = Convert.ToString(reader["Faculty"]);

            if (reader["DesignationID"] != DBNull.Value)
                _HRCan_TeachExp.DesignationID = Convert.ToInt32(reader["DesignationID"]);


            if (reader["Designation"] != DBNull.Value)
                _HRCan_TeachExp.Designation = Convert.ToString(reader["Designation"]);



            if (reader["Uni_Inst"] != DBNull.Value)
                _HRCan_TeachExp.Uni_Inst = Convert.ToString(reader["Uni_Inst"]);

            if (reader["Address"] != DBNull.Value)
                _HRCan_TeachExp.Address = Convert.ToString(reader["Address"]);

            if (reader["Faculty_others"] != DBNull.Value)
                _HRCan_TeachExp.Faculty_others = Convert.ToString(reader["Faculty_others"]);

            if (reader["Subject"] != DBNull.Value)
                _HRCan_TeachExp.Subject = Convert.ToString(reader["Subject"]);

            if (reader["SprVisrContactNo"] != DBNull.Value)
                _HRCan_TeachExp.SprVisrContactNo = Convert.ToString(reader["SprVisrContactNo"]);
            


            if (reader["Job_Responsibility"] != DBNull.Value)
                _HRCan_TeachExp.Job_Responsibility = Convert.ToString(reader["Job_Responsibility"]);


            if (reader["ResearchInst"] != DBNull.Value)
                _HRCan_TeachExp.ResearchInst = Convert.ToString(reader["ResearchInst"]);

            if (reader["Supervisor"] != DBNull.Value)
                _HRCan_TeachExp.Supervisor = Convert.ToString(reader["Supervisor"]);


            if (reader["ExpFrm"] != DBNull.Value)
                _HRCan_TeachExp.ExpFrm = Convert.ToDateTime(reader["ExpFrm"]);


            if (reader["ExpTo"] != DBNull.Value)
                _HRCan_TeachExp.ExpTo = Convert.ToDateTime(reader["ExpTo"]);


            if (reader["Tyear"] != DBNull.Value)
                _HRCan_TeachExp.Tyear = Convert.ToString(reader["Tyear"]);

            if (reader["Tmonth"] != DBNull.Value)
                _HRCan_TeachExp.Tmonth = Convert.ToString(reader["Tmonth"]);

            if (reader["Tday"] != DBNull.Value)
                _HRCan_TeachExp.Tday = Convert.ToString(reader["Tday"]);


            if (reader["InsertionTime"] != DBNull.Value)
                _HRCan_TeachExp.InsertionTime = Convert.ToDateTime(reader["InsertionTime"]);


            if (reader["UpdateTime"] != DBNull.Value)
                _HRCan_TeachExp.UpdateTime = Convert.ToDateTime(reader["UpdateTime"]);
        }

        public List<HRCan_TeachExp> HRCan_TeachExp_GetAll(string TrackingNo)
        {
            try
            {
                List<HRCan_TeachExp> HRCan_TeachExpList = new List<HRCan_TeachExp>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HRCan_TeachExp_GetAllbyTruckingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TrackingNo", DbType.String, TrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HRCan_TeachExp oHRCan_TeachExp = new HRCan_TeachExp();
                    BuildEntityAll(oDbDataReader, oHRCan_TeachExp);
                    HRCan_TeachExpList.Add(oHRCan_TeachExp);
                }
                oDbDataReader.Close();
                return HRCan_TeachExpList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HRCan_TeachExp_Delete(int Can_TeachExpID)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HRCan_TeachExp_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Can_TeachExpID", DbType.Int32, Can_TeachExpID);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        private void AddParameter(DbCommand oDbCommand, string parameterDesignation, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterDesignation, dbType, value));
        }

        public DataTable LoadHRCan_TeachExp_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HRCan_TeachExp_GetAll", CommandType.StoredProcedure);
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


        public int Add_HRCan_TeachExp(HRCan_TeachExp _HRCan_TeachExp)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_HRCan_TeachExp", CommandType.StoredProcedure);




                if (_HRCan_TeachExp.TrackingNo != null)
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HRCan_TeachExp.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Uni_Inst != null)
                    AddParameter(oDbCommand, "@Uni_Inst", DbType.String, _HRCan_TeachExp.Uni_Inst);
                else
                    AddParameter(oDbCommand, "@Uni_Inst", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Address != null)
                    AddParameter(oDbCommand, "@Address", DbType.String, _HRCan_TeachExp.Address);
                else
                    AddParameter(oDbCommand, "@Address", DbType.String, DBNull.Value);


                if (_HRCan_TeachExp.DesignationID >= 0)
                    AddParameter(oDbCommand, "@DesignationID", DbType.Int32, _HRCan_TeachExp.DesignationID);
                else
                    AddParameter(oDbCommand, "@DesignationID", DbType.Int32, DBNull.Value);



                

                if (_HRCan_TeachExp.Faculty_others != null)
                    AddParameter(oDbCommand, "@Faculty_others", DbType.String, _HRCan_TeachExp.Faculty_others);
                else
                    AddParameter(oDbCommand, "@Faculty_others", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Subject != null)
                    AddParameter(oDbCommand, "@Subject", DbType.String, _HRCan_TeachExp.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, DBNull.Value);


                if (_HRCan_TeachExp.FacultyID >= 0)
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _HRCan_TeachExp.FacultyID);
                else
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);

                /* if (_HRCan_TeachExp.Faculty != null)
                     AddParameter(oDbCommand, "@Faculty", DbType.String, _HRCan_TeachExp.Faculty);
                 else
                     AddParameter(oDbCommand, "@Faculty", DbType.String, DBNull.Value);
              
                 * 
                 if (_HRCan_TeachExp.Designation != null)
                     AddParameter(oDbCommand, "@Designation", DbType.String, _HRCan_TeachExp.Designation);
                 else
                     AddParameter(oDbCommand, "@Designation", DbType.String, DBNull.Value);
                 */



                if (_HRCan_TeachExp.Job_Responsibility != null)
                    AddParameter(oDbCommand, "@Job_Responsibility", DbType.String, _HRCan_TeachExp.Job_Responsibility);
                else
                    AddParameter(oDbCommand, "@Job_Responsibility", DbType.String, DBNull.Value);


                if (_HRCan_TeachExp.ResearchInst != null)
                    AddParameter(oDbCommand, "@ResearchInst", DbType.String, _HRCan_TeachExp.ResearchInst);
                else
                    AddParameter(oDbCommand, "@ResearchInst", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Supervisor != null)
                    AddParameter(oDbCommand, "@Supervisor", DbType.String, _HRCan_TeachExp.Supervisor);
                else
                    AddParameter(oDbCommand, "@Supervisor", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_HRCan_TeachExp(HRCan_TeachExp _HRCan_TeachExp)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HRCan_TeachExp_Update", CommandType.StoredProcedure);



                if (_HRCan_TeachExp.TrackingNo != null)
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HRCan_TeachExp.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, DBNull.Value);


                if (_HRCan_TeachExp.DesignationID >= 0)
                    AddParameter(oDbCommand, "@DesignationID", DbType.Int32, _HRCan_TeachExp.DesignationID);
                else
                    AddParameter(oDbCommand, "@DesignationID", DbType.Int32, DBNull.Value);



                if (_HRCan_TeachExp.Uni_Inst != null)
                    AddParameter(oDbCommand, "@Uni_Inst", DbType.String, _HRCan_TeachExp.Uni_Inst);
                else
                    AddParameter(oDbCommand, "@Uni_Inst", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Address != null)
                    AddParameter(oDbCommand, "@Address", DbType.String, _HRCan_TeachExp.Address);
                else
                    AddParameter(oDbCommand, "@Address", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Faculty_others != null)
                    AddParameter(oDbCommand, "@Faculty_others", DbType.String, _HRCan_TeachExp.Faculty_others);
                else
                    AddParameter(oDbCommand, "@Faculty_others", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Subject != null)
                    AddParameter(oDbCommand, "@Subject", DbType.String, _HRCan_TeachExp.Subject);
                else
                    AddParameter(oDbCommand, "@Subject", DbType.String, DBNull.Value);


                if (_HRCan_TeachExp.FacultyID >= 0)
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, _HRCan_TeachExp.FacultyID);
                else
                    AddParameter(oDbCommand, "@FacultyID", DbType.Int32, DBNull.Value);




                if (_HRCan_TeachExp.Job_Responsibility != null)
                    AddParameter(oDbCommand, "@Job_Responsibility", DbType.String, _HRCan_TeachExp.Job_Responsibility);
                else
                    AddParameter(oDbCommand, "@Job_Responsibility", DbType.String, DBNull.Value);


                if (_HRCan_TeachExp.ResearchInst != null)
                    AddParameter(oDbCommand, "@ResearchInst", DbType.String, _HRCan_TeachExp.ResearchInst);
                else
                    AddParameter(oDbCommand, "@ResearchInst", DbType.String, DBNull.Value);

                if (_HRCan_TeachExp.Supervisor != null)
                    AddParameter(oDbCommand, "@Supervisor", DbType.String, _HRCan_TeachExp.Supervisor);
                else
                    AddParameter(oDbCommand, "@Supervisor", DbType.String, DBNull.Value);




                AddParameter(oDbCommand, "@Can_TeachExpID", DbType.Int32, _HRCan_TeachExp.Can_TeachExpID);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public HRCan_TeachExp Get_HRCan_TeachExpInfoID(int Can_TeachExpID)
        {
            try
            {
                HRCan_TeachExp objHRCan_TeachExp = new HRCan_TeachExp();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HRCan_TeachExp_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@Can_TeachExpID", DbType.Int32, Can_TeachExpID);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objHRCan_TeachExp);
                }
                oDbDataReader.Close();
                return objHRCan_TeachExp;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




        public DataTable HRCan_TeachExpInsType_LoadForDll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HRCan_TeachExpInsType_LoadForDll", CommandType.StoredProcedure);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }



        public DataTable ExamType_LoadForDll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_ExamType_LoadForDll", CommandType.StoredProcedure);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }




        public DataTable LoadFacDegType_LoadForDll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_LoadFacDegType_LoadForDll", CommandType.StoredProcedure);

                oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                dtRequisition.Load(oDbDataReader);
                oDbDataReader.Close();
                return dtRequisition;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            finally
            {
                dtRequisition.Dispose();
                oDbDataReader.Dispose();
            }
        }
    }
}
