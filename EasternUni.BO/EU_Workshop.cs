using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
    public class EU_Workshop
    {

        public int Sl { get; set; }
        public string TruckingExt { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Designation { get; set; }
        public string Company { get; set; }
        public string Edu_Qual { get; set; }
        public DateTime Data_Inserted { get; set; }
        public int Deleted { get; set; }


        public EU_Workshop()
        { }

        public EU_Workshop(int Sl, string Name, string Email,
            string Phone, string Designation, string Company, string Edu_Qual, int Deleted,
            DateTime Data_Inserted, string TruckingExt)
        {

            this.Sl = Sl;
            this.Name = Name;
            this.Email = Email;
            this.Phone = Phone;
            this.Designation = Designation;
            this.Company = Company;
            this.Edu_Qual = Edu_Qual;
            this.Deleted = Deleted;
            this.TruckingExt = TruckingExt;
            this.Data_Inserted = Data_Inserted;
        }

    }
}
