using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
   public class HR_WebCode
    {
       public int WebCode_Sl { get; set; }
       public string Code { get; set; }
       public string Object { get; set; }
       public string ObjectCode { get; set; }

        public HR_WebCode()
        { }

        public HR_WebCode(
          int WebCode_Sl, string Code, string Object, string ObjectCode)
        {
            this.WebCode_Sl = WebCode_Sl;
            this.Code = Code;
            this.Object = Object;
            this.ObjectCode = ObjectCode;

        }
    }
}
