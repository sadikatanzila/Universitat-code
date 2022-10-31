using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EasternUni.BO
{
      [Serializable()]
   public class HR_Candidate
    {
          public int CandidateSL { get; set; }
          public string CandidateNID { get; set; }
          public string TrackingNo { get; set; }
          public int JobCircular_ID { get; set; }
          public string Name { get; set; }
          public DateTime Birth_Date { get; set; }
          public string Mobile { get; set; }
          public string Phone_Number { get; set; }
          public string Gardian { get; set; }
          public string Mother { get; set; }
          public int GenderID { get; set; }
          public string Gender { get; set; }
          public int Religion { get; set; }
          public int Maritial { get; set; }
          public int Nationality { get; set; }
          public string P_Address { get; set; }
          public string Per_Address { get; set; }
          public string E_Mail { get; set; }
          public int DepatmentID { get; set; }
          public string Job_Type { get; set; }
          public int JobCat_Id { get; set; }
          public int JobType_Id { get; set; }
          public DateTime Join_Date { get; set; }
          public string Dept { get; set; }
          public string Password { get; set; }
          public DateTime InsertionTime { get; set; }




           public HR_Candidate()
        { }

           public HR_Candidate(
               
                int CandidateSL ,
           string CandidateNID ,
           string TrackingNo ,
           int JobCircular_ID ,
           string Name ,
           DateTime Birth_Date ,
           string Mobile ,
           string Phone_Number ,
           string Gardian ,
               string Mother,
           int GenderID ,
               string Gender,
           int Religion ,
           int Maritial ,
               int Nationality,
           string P_Address ,
           string Per_Address ,
           string E_Mail ,
           int DepatmentID ,
           string Job_Type ,
           int JobCat_Id ,
           int JobType_Id ,
           DateTime Join_Date ,
           string Dept ,
           string Password ,
           DateTime InsertionTime )
        {
           this.CandidateSL 	=	CandidateSL ;
            this.CandidateNID 	=	CandidateNID ;
            this.TrackingNo	=	TrackingNo ;
            this.JobCircular_ID 	=	JobCircular_ID ;
            this.Name 	=	Name ;
            this.Birth_Date 	=	Birth_Date ;
            this.Mobile 	=	Mobile ;
            this.Phone_Number 	=	Phone_Number ;
            this.Gardian 	=	Gardian ;
            this.Mother = Mother;
            this.GenderID =		GenderID ;
            this.Gender = Gender;
            this.Religion =		Religion ;
            this.Maritial 	=	Maritial ;
            this.Nationality = Nationality;
            this.P_Address 	=	P_Address;
            this.Per_Address =		Per_Address ;
            this.E_Mail 	=	E_Mail ;
            this.DepatmentID =		DepatmentID ;
            this.Job_Type =		Job_Type ;
            this.JobCat_Id 	=	JobCat_Id ;
            this.JobType_Id 	=	JobType_Id ;
            this.Join_Date 	=	Join_Date ;
            this.Dept 	=	Dept ;
            this.Password 	=	Password ;
            this.InsertionTime = InsertionTime;

        }
    }
}
