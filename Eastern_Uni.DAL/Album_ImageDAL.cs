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
   public class Album_ImageDAL
    {
       public bool Add_AlbumPhotos(List<Album_Image> list)
       {
           try
           {
               DbCommand command = DbProviderHelper.CreateCommand("Add_AlbumPhotos", CommandType.StoredProcedure);

               foreach (Album_Image obj in list)
               {
                   command.Parameters.Clear();

               

                   if (obj.AlbumID != null)
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@AlbumID", DbType.Int32, obj.AlbumID));
                   else
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@AlbumID", DbType.Int32, DBNull.Value));

                   if (obj.AlbumID != null)
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@Location", DbType.String, obj.Location));
                   else
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@Location", DbType.String, DBNull.Value));
                   
                   if (obj.AlbumID != null)
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@title", DbType.String, obj.title));
                   else
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@title", DbType.String, DBNull.Value));

                   if (obj.AlbumID != null)
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@Album_Name", DbType.String, obj.Album_Name)); 
                   else
                       command.Parameters.Add(DbProviderHelper.CreateParameter("@Album_Name", DbType.String, DBNull.Value));



                   DbProviderHelper.ExecuteNonQuery(command);
               }
           }

           catch
           {
               throw;
           }

           return true;
       }

       private void AddParameter(DbCommand oDbCommand, string parameterName, DbType dbType, object value)
       {
           oDbCommand.Parameters.Add(DbProviderHelper.CreateParameter(parameterName, dbType, value));
       }

       private void BuildEntityAll(DbDataReader reader, Album_Image _Album_Image)
       {

           _Album_Image.PhotoID = Convert.ToInt32(reader["PhotoID"]);

           if (reader["AlbumID"] != DBNull.Value)
               _Album_Image.AlbumID = Convert.ToInt32(reader["AlbumID"]);

           if (reader["Location"] != DBNull.Value)
               _Album_Image.Location = Convert.ToString(reader["Location"]);

           if (reader["title"] != DBNull.Value)
               _Album_Image.title = Convert.ToString(reader["title"]);
           
           if (reader["Album_Name"] != DBNull.Value)
               _Album_Image.Album_Name = Convert.ToString(reader["Album_Name"]);




       }



       public Album_Image Get_Album_ImageInfoID(int AlbumID)
       {
           try
           {
               Album_Image objAlbum_Image = new Album_Image();
               DbCommand oDbCommand = DbProviderHelper.CreateCommand("AlbumImage_byID", CommandType.StoredProcedure);
               AddParameter(oDbCommand, "@AlbumID", DbType.Int32, AlbumID);
               DbDataReader oDbDataReader = DbProviderHelper.ExecuteReader(oDbCommand);
               while (oDbDataReader.Read())
               {
                   BuildEntityAll(oDbDataReader, objAlbum_Image);
               }
               oDbDataReader.Close();
               return objAlbum_Image;
           }
           catch (Exception ex)
           {
               throw ex;
           }
       }
    }
}
