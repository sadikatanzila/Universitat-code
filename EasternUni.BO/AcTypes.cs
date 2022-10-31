using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class AcTypes
    {
        public int TypesID { get; set; }
        public string Types { get; set; }
        public string Priority { get; set; }


         public AcTypes()
          { }

         public AcTypes(int TypesID, string Types, string Priority)
            {
                this.TypesID = TypesID;
                this.Types = Types;
                this.Priority = Priority;
               
           
            }
    }
}
