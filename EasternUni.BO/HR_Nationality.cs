using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    [Serializable()]
    public class HR_Nationality
    {
        public int NationSl { get; set; }
        public string NationName { get; set; }
        public int Nation_ID { get; set; }




          public HR_Nationality()
        { }

          public HR_Nationality(
            int NationSl,  string NationName, int Nation_ID )
        {            
            this.NationSl = NationSl;           
            this.NationName = NationName;
            this.Nation_ID = Nation_ID;
        }
    }
}
