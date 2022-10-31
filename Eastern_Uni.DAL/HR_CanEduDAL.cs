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
 public class HR_CanEduDAL
    {

        private void BuildEntityAll(DbDataReader reader, HR_CanEdu _HR_CanEdu)
        {

            _HR_CanEdu.CanEdu_Sl = Convert.ToInt32(reader["CanEdu_Sl"]);

          

            if (reader["TrackingNo"] != DBNull.Value)
                _HR_CanEdu.TrackingNo = Convert.ToString(reader["TrackingNo"]);


            if (reader["ExamId"] != DBNull.Value)
                _HR_CanEdu.ExamId = Convert.ToInt32(reader["ExamId"]);

            if (reader["Examination"] != DBNull.Value)
                _HR_CanEdu.Examination = Convert.ToString(reader["Examination"]);

            if (reader["InstitutionType_ID"] != DBNull.Value)
                _HR_CanEdu.InstitutionType_ID = Convert.ToInt32(reader["InstitutionType_ID"]);


            if (reader["InstitutionType"] != DBNull.Value)
                _HR_CanEdu.InstitutionType = Convert.ToString(reader["InstitutionType"]);

          

            if (reader["Institution"] != DBNull.Value)
                _HR_CanEdu.Institution = Convert.ToString(reader["Institution"]);

            if (reader["Passing_Year"] != DBNull.Value)
                _HR_CanEdu.Passing_Year = Convert.ToString(reader["Passing_Year"]);

            if (reader["MajorSubject"] != DBNull.Value)
                _HR_CanEdu.MajorSubject = Convert.ToString(reader["MajorSubject"]);

            if (reader["Result_Type"] != DBNull.Value)
                _HR_CanEdu.Result_Type = Convert.ToString(reader["Result_Type"]);           

            if (reader["Grade"] != DBNull.Value)
                _HR_CanEdu.Grade = Convert.ToString(reader["Grade"]);

            if (reader["Devision"] != DBNull.Value)
                _HR_CanEdu.Devision = Convert.ToString(reader["Devision"]);


            if (reader["Marks"] != DBNull.Value)
                _HR_CanEdu.Marks = Convert.ToString(reader["Marks"]);          

            if (reader["CGPA_outOf"] != DBNull.Value)
                _HR_CanEdu.CGPA_outOf = Convert.ToString(reader["CGPA_outOf"]);


            if (reader["Result"] != DBNull.Value)
                _HR_CanEdu.Result = Convert.ToString(reader["Result"]);

          
        }

        public List<HR_CanEdu> HR_CanEdu_GetAll(string TrackingNo)
        {
            try
            {
                List<HR_CanEdu> HR_CanEduList = new List<HR_CanEdu>();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_CanEdu_GetAllbyTruckingNo", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@TrackingNo", DbType.String, TrackingNo);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    HR_CanEdu oHR_CanEdu = new HR_CanEdu();
                    BuildEntityAll(oDbDataReader, oHR_CanEdu);
                    HR_CanEduList.Add(oHR_CanEdu);
                }
                oDbDataReader.Close();
                return HR_CanEduList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public int HR_CanEdu_Delete(int CanEdu_Sl)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_CanEdu_Delete", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@CanEdu_Sl", DbType.Int32, CanEdu_Sl);
                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        private void AddParameter(DbCommand oDbCommand, string parameterInstitutionType, DbType dbType, object value)
        {
            oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterInstitutionType, dbType, value));
        }

        public DataTable LoadHR_CanEdu_GetAll()
        {
            DataTable dtUser = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtUser = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_CanEdu_GetAll", CommandType.StoredProcedure);
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


        public int Add_HR_CanEdu(HR_CanEdu _HR_CanEdu)
        {
            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("Add_HR_CanEdu", CommandType.StoredProcedure);




                if (_HR_CanEdu.TrackingNo != null)
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HR_CanEdu.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, DBNull.Value);


                if (_HR_CanEdu.InstitutionType_ID >= 0)
                    AddParameter(oDbCommand, "@InstitutionType_ID", DbType.Int32, _HR_CanEdu.InstitutionType_ID);
                else
                    AddParameter(oDbCommand, "@InstitutionType_ID", DbType.Int32, DBNull.Value);            

                

                if (_HR_CanEdu.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _HR_CanEdu.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);

                if (_HR_CanEdu.Passing_Year != null)
                    AddParameter(oDbCommand, "@Passing_Year", DbType.String, _HR_CanEdu.Passing_Year);
                else
                    AddParameter(oDbCommand, "@Passing_Year", DbType.String, DBNull.Value);

                if (_HR_CanEdu.MajorSubject != null)
                    AddParameter(oDbCommand, "@MajorSubject", DbType.String, _HR_CanEdu.MajorSubject);
                else
                    AddParameter(oDbCommand, "@MajorSubject", DbType.String, DBNull.Value);

                if (_HR_CanEdu.Result_Type != null)
                    AddParameter(oDbCommand, "@Result_Type", DbType.String, _HR_CanEdu.Result_Type);
                else
                    AddParameter(oDbCommand, "@Result_Type", DbType.String, DBNull.Value);


                if (_HR_CanEdu.ExamId >= 0)
                    AddParameter(oDbCommand, "@ExamId", DbType.Int32, _HR_CanEdu.ExamId);
                else
                    AddParameter(oDbCommand, "@ExamId", DbType.Int32, DBNull.Value);

                /* if (_HR_CanEdu.Examination != null)
                     AddParameter(oDbCommand, "@Examination", DbType.String, _HR_CanEdu.Examination);
                 else
                     AddParameter(oDbCommand, "@Examination", DbType.String, DBNull.Value);
              
                 * 
                 if (_HR_CanEdu.InstitutionType != null)
                     AddParameter(oDbCommand, "@InstitutionType", DbType.String, _HR_CanEdu.InstitutionType);
                 else
                     AddParameter(oDbCommand, "@InstitutionType", DbType.String, DBNull.Value);
                 */





                if (_HR_CanEdu.Grade != null)
                    AddParameter(oDbCommand, "@Grade", DbType.String, _HR_CanEdu.Grade);
                else
                    AddParameter(oDbCommand, "@Grade", DbType.String, DBNull.Value);

                if (_HR_CanEdu.Devision != null)
                    AddParameter(oDbCommand, "@Devision", DbType.String, _HR_CanEdu.Devision);
                else
                    AddParameter(oDbCommand, "@Devision", DbType.String, DBNull.Value);


                if (_HR_CanEdu.Marks != null)
                    AddParameter(oDbCommand, "@Marks", DbType.String, _HR_CanEdu.Marks);
                else
                    AddParameter(oDbCommand, "@Marks", DbType.String, DBNull.Value);

                if (_HR_CanEdu.CGPA_outOf != null)
                    AddParameter(oDbCommand, "@CGPA_outOf", DbType.String, _HR_CanEdu.CGPA_outOf);
                else
                    AddParameter(oDbCommand, "@CGPA_outOf", DbType.String, DBNull.Value);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public int Update_HR_CanEdu(HR_CanEdu _HR_CanEdu)
        {

            try
            {
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_CanEdu_Update", CommandType.StoredProcedure);



                if (_HR_CanEdu.TrackingNo != null)
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, _HR_CanEdu.TrackingNo);
                else
                    AddParameter(oDbCommand, "@TrackingNo", DbType.String, DBNull.Value);


                if (_HR_CanEdu.InstitutionType_ID >= 0)
                    AddParameter(oDbCommand, "@InstitutionType_ID", DbType.Int32, _HR_CanEdu.InstitutionType_ID);
                else
                    AddParameter(oDbCommand, "@InstitutionType_ID", DbType.Int32, DBNull.Value);



                if (_HR_CanEdu.Institution != null)
                    AddParameter(oDbCommand, "@Institution", DbType.String, _HR_CanEdu.Institution);
                else
                    AddParameter(oDbCommand, "@Institution", DbType.String, DBNull.Value);

                if (_HR_CanEdu.Passing_Year != null)
                    AddParameter(oDbCommand, "@Passing_Year", DbType.String, _HR_CanEdu.Passing_Year);
                else
                    AddParameter(oDbCommand, "@Passing_Year", DbType.String, DBNull.Value);

                if (_HR_CanEdu.MajorSubject != null)
                    AddParameter(oDbCommand, "@MajorSubject", DbType.String, _HR_CanEdu.MajorSubject);
                else
                    AddParameter(oDbCommand, "@MajorSubject", DbType.String, DBNull.Value);

                if (_HR_CanEdu.Result_Type != null)
                    AddParameter(oDbCommand, "@Result_Type", DbType.String, _HR_CanEdu.Result_Type);
                else
                    AddParameter(oDbCommand, "@Result_Type", DbType.String, DBNull.Value);


                if (_HR_CanEdu.ExamId >= 0)
                    AddParameter(oDbCommand, "@ExamId", DbType.Int32, _HR_CanEdu.ExamId);
                else
                    AddParameter(oDbCommand, "@ExamId", DbType.Int32, DBNull.Value);

                

                if (_HR_CanEdu.Grade != null)
                    AddParameter(oDbCommand, "@Grade", DbType.String, _HR_CanEdu.Grade);
                else
                    AddParameter(oDbCommand, "@Grade", DbType.String, DBNull.Value);

                if (_HR_CanEdu.Devision != null)
                    AddParameter(oDbCommand, "@Devision", DbType.String, _HR_CanEdu.Devision);
                else
                    AddParameter(oDbCommand, "@Devision", DbType.String, DBNull.Value);


                if (_HR_CanEdu.Marks != null)
                    AddParameter(oDbCommand, "@Marks", DbType.String, _HR_CanEdu.Marks);
                else
                    AddParameter(oDbCommand, "@Marks", DbType.String, DBNull.Value);

                if (_HR_CanEdu.CGPA_outOf != null)
                    AddParameter(oDbCommand, "@CGPA_outOf", DbType.String, _HR_CanEdu.CGPA_outOf);
                else
                    AddParameter(oDbCommand, "@CGPA_outOf", DbType.String, DBNull.Value);
               



                AddParameter(oDbCommand, "@CanEdu_Sl", DbType.Int32, _HR_CanEdu.CanEdu_Sl);

                return DbProviderHelper.ExecuteNonQuery(oDbCommand);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        public HR_CanEdu Get_HR_CanEduInfoID(int CanEdu_Sl)
        {
            try
            {
                HR_CanEdu objHR_CanEdu = new HR_CanEdu();
                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_CanEdu_GetById", CommandType.StoredProcedure);
                AddParameter(oDbCommand, "@CanEdu_Sl", DbType.Int32, CanEdu_Sl);
                DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
                while (oDbDataReader.Read())
                {
                    BuildEntityAll(oDbDataReader, objHR_CanEdu);
                }
                oDbDataReader.Close();
                return objHR_CanEdu;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    


        public DataTable HR_CanEduInsType_LoadForDll()
        {
            DataTable dtRequisition = null;
            DbDataReader oDbDataReader = null;
            try
            {
                dtRequisition = new DataTable();

                DbCommand oDbCommand = DbProviderHelper.CreateCommand("HR_CanEduInsType_LoadForDll", CommandType.StoredProcedure);

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
    }
}
