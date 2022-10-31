using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
     [Serializable()]
    public class Board_Trustees
    {
         public int Serial_Id { get; set; }
         public string Priority_No { get; set; }
         public string Name { get; set; }
         public string Designation { get; set; }

          public Board_Trustees()
          { }

          public Board_Trustees(int Serial_Id, string Priority_No, string Name, string Designation)
            {
                this.Serial_Id = Serial_Id;
                this.Priority_No = Priority_No;
                this.Name = Name;
                this.Designation = Designation;
           
            }

    }
}
