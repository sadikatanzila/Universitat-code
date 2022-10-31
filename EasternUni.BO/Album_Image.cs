using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
   public class Album_Image
    {

        public int PhotoID { get; set; }
        public int AlbumID { get; set; }
        public string Location { get; set; }
        public string title { get; set; }

        public string Album_Name { get; set; }



         public Album_Image()
        { }

         public Album_Image(
            int PhotoID, int AlbumID, string Location, string title, string Album_Name)
         {
             this.PhotoID = PhotoID;
             this.Location = Location;
             this.title = title;
             this.Album_Name = Album_Name;
             this.AlbumID = AlbumID;
         }
    }
}
