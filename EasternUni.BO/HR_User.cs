using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{

    [Serializable()]
    public class HR_User
    {
        public int Id { get; set; }
        public int BrId { get; set; }
        public string HR_UserId { get; set; }
        public string HR_UserName { get; set; }
        public string EmailID { get; set; }
        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
        public DateTime? CreateDate { get; set; }
        public DateTime? UpdateDate { get; set; }
        public bool? IsRemoved { get; set; }
        public string HR_UserFullName { get; set; }
        public Int64? PhoneNo { get; set; }
        public int Faculty_ID { get; set; }
        public string Faculty { get; set; }

        public int CreatedBy { get; set; }
        public int UpdatedBy { get; set; }

        public HR_User()
        { }

        public HR_User(int Id, int BrId, string HR_UserId, string HR_UserName, 
            string EmailID, string Password, string ConfirmPassword, Nullable<DateTime> CreateDate, 
            Nullable<DateTime> UpdateDate, Nullable<bool> IsRemoved, string HR_UserFullName, Int64 PhoneNo,
            int Faculty_ID, int CreatedBy, int UpdatedBy)
        {
            this.Id = Id;
            this.BrId = BrId;
            this.HR_UserId = HR_UserId;
            this.HR_UserName = HR_UserName;
            this.EmailID = EmailID;
            this.Password = Password;
            this.ConfirmPassword = ConfirmPassword;
            this.CreateDate = CreateDate;
            this.UpdateDate = UpdateDate;
            this.IsRemoved = IsRemoved;
            this.HR_UserFullName = HR_UserFullName;
            this.PhoneNo = PhoneNo;

            this.Faculty_ID = Faculty_ID;
            this.CreatedBy = CreatedBy;
            this.UpdatedBy = UpdatedBy;

        }

        //public override string ToString()
        //{
        //    return "Id = " + Id.ToString() + ",HR_UserId = " + HR_UserId + ",HR_UserName = " + HR_UserName + ",EmailID = " + EmailID + ",Password = " + Password + ",ConfirmPassword = " + ConfirmPassword + ",ProjectId = " + ProjectId.ToString() + ",HR_UserLocation = " + HR_UserLocation + ",CreateDate = " + CreateDate.ToString() + ",UpdateDate = " + UpdateDate.ToString() + ",IsRemoved = " + IsRemoved.ToString() + ", Role = " + Role + ", HR_UserFullName=" + HR_UserFullName + ", PhoneNo=" + PhoneNo ;
        //}
    }

}
