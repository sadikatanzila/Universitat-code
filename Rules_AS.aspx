<%@ Page Title="Academic System" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Rules_AS.aspx.cs" Inherits="Eastern_Uni.Rules_AS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style1 {
            width: 150px;
        }
        .auto-style2 {
            width: 105px;
        }
        .auto-style3 {
            width: 193px;
        }
        .auto-style4 {
            width: 196px;
        }
    </style>


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
      <div id="first">
          <div id='cssmenu'>
               <ul>



                    <li class='has-sub'><a href="#"><span>About EU</span></a>
                        <ul>

                            <li><a href="EU_Profile.aspx"><span>EU Profile</span></a></li>
                         
                            
                        <!--    <li><a href="AboutEU_Faculties.aspx"><span>Visiting Interntional Faculties</span></a></li>

                           <li><a href="AboutEU_HM.aspx"><span>Mission , Vision & Goal</span></a></li>-->
                            <li><a href="Trustee_Board.aspx"><span>Board of Trustees</span></a></li>  
                            <li><a href="Administration_OC.aspx"><span>Message from the Chairman</span></a></li>
                            <li><a href="Administration_OVC.aspx"><span>Message from the Vice-Chancellor</span></a></li><li><a href="Administration_ProVC.aspx"><span>Message from the Pro-Vice Chancellor</span></a></li>
                            <li><a href="AboutEU_Linkage.aspx"><span>International Academic Collaborations</span></a></li>
                            <li><a href="AboutEU_Advisors.aspx"><span>International Advisors</span></a></li>
                         <!--   <li><a href="AboutEU_A.aspx"><span>Accreditation</span></a></li>-->
                            <li><a href="Campus Map.aspx"><span>Campus Map</span></a></li>
                            <li class='last'><a href="Contact Us.aspx"><span>Contact Us</span></a></li>
                        </ul>
                    </li>


                    <li class="has-sub"><a href="#"><span>Academics</span></a>
                        <ul>
                            <li class="has-sub"><a href="#"><span>Academic Programs</span></a><ul><li><a href=" Academics_UP.aspx "><span>Undergraduate</span></a></li><li><a href="Academics_GP.aspx"><span>Graduate</span></a></li></ul></li>
                            <li ><a href="Academics_Sys.aspx" ><span>Academic Systems</span></a></li>
                            <li ><a href="Academics_Rules.aspx" ><span>Academic Rules & Procedures</span></a></li>
                            <li ><a href="Academics_Reg.aspx" ><span>Registration Procedures</span></a></li>
                            <li ><a href="Academics_ClsAtd.aspx" ><span>Rules of Class Attendance</span></a></li>
                            <li ><a href="Academics_Exm.aspx" ><span>Tests and Exams</span></a></li>
                            <li ><a href="Academics_Std.aspx" ><span>Academic Standing of a Student</span></a></li>
                             <li ><a href="Academics_Degree.aspx" ><span>Degree Requirements</span></a></li><li ><a href="EU_Conduct.aspx" ><span>Code of Conduct of EU Students</span></a></li>
                            
                            <!-- <li><a href="Academics_UP.aspx"><span>Undergraduate Programs</span></a></li> -->
                            <!-- <li><a href="Academics_GP.aspx"><span>Graduate Programs</span></a></li>-->
                           <!-- <li><a href="Academics_CC.aspx"><span>Course Catalogue</span></a></li>-->
                              <!--   <li class="last"><a href="Academics_SA.aspx"><span>Student Advising</span></a></li>-->
                        </ul>
                    </li>


                    <li class="has-sub"><a href="#"><span>Admission</span></a>
                        <ul>
                           <li><a href="Admission_Overview.aspx"><span>Overview</span></a></li><li><a href="http://old.easternuni.edu.bd:8080/onlineadmission/index.aspx"><span>Online Admission Form</span></a></li>
                            <li><a href="Admission_WEU.aspx"><span>Why Study at EU</span></a></li>
                            <li class="has-sub"><a href="#"><span>Admission Eligibility</span></a>

                                <ul>

                                    <li><a href="Admission_UA.aspx"><span>Undergraduate Admission</span></a></li>
                                    <li><a href="Admission_GA.aspx"><span>Graduate Admission</span></a></li>

                                </ul>
                            </li>
                            
                            <li><a href="Admission_TF.aspx"><span>Tution and Fees</span></a></li>
                             <li><a href="Admission_FAidSch.aspx"><span>Financial Aid & Scholarship</span></a></li>
                          <!--  <li><a href="Admission_AF.aspx"><span>Admission Forms</span></a></li>
                            --> <li><a href="Admission_PResult.aspx"><span>Admission Results</span></a></li><li><a href="Admission_TutionFee.aspx"><span>Tution Fee Waiver</span></a></li> 
                             
                        </ul>
                    </li>


                    <li class="has-sub"><a href="#"><span>Administration</span></a>
                        <ul>

                            <li><a href="Administration_G.aspx"><span>Governance</span></a></li>
                            <li><a href="Administration_S.aspx"><span>Syndicate</span></a></li>
                             <li><a href="Academics_Council.aspx"><span>Academic Council</span></a></li>
                            <li><a href="Administration_keyPersonnel.aspx"><span>Key Personnel</span></a></li>
                            <li><a href="Administration_Offices.aspx"><span>Offices</span></a></li>
                           <!-- <li><a href="Administration_VC.aspx"><span>Vice Chancellor</span></a></li>
                            <li><a href="Administration_UA.aspx"><span>University Administration</span></a></li>-->
                            <li><a href="Administration_UC.aspx"><span>Other Committees</span></a></li>
                            <!-- <li><a href="Administration_PO.aspx"><span>Proctor Office</span></a></li> -->
                            <!--
                            <li><a href="Administration_SA.aspx"><span>Student Affairs</span></a></li>
                            <li class="last"><a href="Administration_IA.aspx"><span>International Affairs</span></a></li>-->


                        </ul>
                    </li>


                    <li class="has-sub"><a href="#"><span>Faculty</span></a>
                        <ul>
                            <li><a href="Arts_Faculty.aspx"><span>Faculty of Arts</span></a></li>
                            <li><a href="BBA_Faculty.aspx"><span>Faculty of Business Administration</span></a></li>
                            <li><a href="Eng_Faculty.aspx"><span>Faculty of Engineering & Technology</span></a></li>
                            <li><a href="Law_Faculty.aspx"><span>Faculty of Law</span></a></li>
                          <!--  <li><a href="Faculties_LF.aspx"><span>List of Faculties</span></a></li>
                            <li class="last"><a href="Faculties_LD.aspx"><span>List of Departments</span></a></li>-->
                        </ul>
                    </li>


                    
                      
                    <li class="last"><a href="GED_Cell.aspx"><span>GED Cell</span></a></li><li class="last"><a href="Faculty Member_FS.aspx"><span>Faculty Members</span></a></li><li class="last"><a href="EmployeeSearch.aspx"><span>Employees</span></a></li>

                    <br />


                     <li class="has-sub"><a href="#"><span>Library</span></a><ul> <li class="last"><a href="http://library.easternuni.edu.bd/main/"><span>Library Home</span></a></li> <li class="last"><a href="http://library.easternuni.edu.bd/main/ebook"><span>e-Books</span></a></li><li class="last"><a href="http://library.easternuni.edu.bd/main/onlinejournals"><span>Online Journals</span></a></li></ul> </li>
                       <!--  <ul>
                             <li><a href="AboutEU_Library.aspx"><span>Library Service & Facilities</span></a></li>
                            <li class="has-sub"><a href="#"><span>Library</span></a><ul> <li class="last"><a href="http://library.easternuni.edu.bd/main/"><span>Library Home</span></a></li> <li class="last"><a href="http://library.easternuni.edu.bd/main/ebook"><span>e-Books</span></a></li><li class="last"><a href="http://library.easternuni.edu.bd/main/onlinejournals"><span>Online Journals</span></a></li></ul> </li>
                        </ul>
                    </li> -->




                    <!--
                    <li><a href="Journals.aspx"><span>EU Journals</span></a>

                        <ul>
                            <li class="has-sub"><a href="#"><span>Volume 1</span></a>

                                <ul>
                                    <li><a href="Journals_V11.aspx"><span>Issue 1</span></a></li>
                                    <li class="last"><a href="Journals_V12.aspx"><span>Issue 2</span></a></li>
                                </ul>

                            </li>
                            <li  class="has-sub"><a href="#"><span>Volume2</span></a>


                                <ul>
                                    <li><a href="Journals_V21.aspx"><span>Issue 1</span></a></li>
                                    <li class="last"><a href="Journals_V22.aspx"><span>Issue 2</span></a></li>
                                </ul>

                            </li>
                        </ul>

                    </li>
                    <li><a href="Research.aspx"><span>Research</span></a> </li>


                    -->
                  <li><a href="http://gsdl.easternuni.edu.bd/greenstone/collect/3eunewsletter/index/assoc/HASH0e35.dir/doc.pdf "><span>Newsletter</span></a></li>

                  

<!--
                    <li class="has-sub"><a href="#"><span>Career @EU</span></a>

                        <ul>
                            <li><a href="Career_LO.aspx"><span>List of Opening</span></a></li>
                            <li><a href="Career_WEU.aspx"><span>Why join EU</span></a></li>
                            <li class="last"><a href="Career_CV.aspx"><span>Drop your CV</span></a></li>
                        </ul>
                    </li>

                    -->

                     <li class="has-sub"><a href="#"><span>Career Services and International Office</span></a><ul><li><a href="Career_Service.aspx"><span>Career Services</span></a></li><li><a href="Int_Office.aspx"><span>International Office</span></a></li></ul></li>

                       


                     

                    

                    

                    <li class="last"><a href="StudentAffairs.aspx"><span>Office of Student Affairs</span></a></li>
                     <!--  <li class="last"><a href="StudentAffairs.aspx"><span>Office of Student Affairs</span></a></li> -->
                     <!--   <ul>
                            <li><a href="Life_Campus_Overview.aspx"><span>Overview</span></a></li>
                            <li class="last"><a href="Life_Campus_SC.aspx"><span>Students Clubs</span></a></li>
                        </ul>
                    </li>-->

                  


<!--

                    <li class="has-sub"><a href="#"><span>Rules & Regulations</span></a>
                        <ul>
                            <li><a href="Rules_CR.aspx"><span>Course Registration</span></a></li>
                            <li><a href="Rules_CTP.aspx"><span>Credit Transfer</span></a></li>
                            <li><a href="Rules_ER.aspx"><span>Examination Rules</span></a></li>
                            <li><a href="Rules_AS.aspx"><span>Academic System</span></a></li>
                            <li><a href="Rules_S.aspx"><span>Scholarships</span></a></li>
                            <li><a href="Rules_FA.aspx"><span>Financial Aids</span></a></li>
                            <li class="last"><a href="Rules_SE.aspx"><span>Students Ethics and Academic Discipline</span></a></li>
                        </ul>
                    </li>


                    <li class="has-sub"><a href="#"><span>Facilities for Students</span></a>
                        <ul>
                            <li><a href="Medical Services.aspx"><span>Medical Services</span></a></li>
                            <li><a href="Phychologist.aspx"><span>Phychologist</span></a></li>
                            <li><a href="Canteen.aspx"><span>Canteen</span></a></li>
                            <li><a href="WiFi.aspx"><span>Internal WiFi</span></a></li>
                            <li><a href="Games Arrangement.aspx"><span>Games Arrangement</span></a></li>
                            <li class="last"><a href="Audio Visual Unit.aspx"><span>Audio Visual Unit</span></a></li>
                        </ul>
                    </li>


                    <li class="has-sub"><a href="#"><span>Labs & Amenities</span></a>
                        <ul>
                            <li><a href="Labs_ICF.aspx"><span>Internet and Computing Facilities</span></a></li>
                            <li><a href="Labs_F.aspx"><span>Lab Facilities</span></a></li>
                            <li class="last"><a href="Labs_OF.aspx"><span>Other Facilities</span></a></li>
                        </ul>
                    </li>
                    -->
                   
                     <br /> 
                    
                  <!--  <li class="has-sub"><a href="#"><span>Career Counselling Centre</span></a>
                        <ul>

                            <li><a href="Counselling_H.aspx"><span>CCC Home</span></a></li>
                            <li class="last"><a href="Counselling_F.aspx"><span>Function of CCC</span></a></li>
                        </ul>
                    </li>-->


                    <li class="last"><a href="Phy_Coucilling.aspx"><span>Psycho-Social Counselling</span></a></li><li class="last"><a href="Calendar_U.aspx"><span>Academic Calendar</span></a></li>
                         <!--<ul>
                            <li><a href="Calendar_U.aspx"><span>Undergraduate</span></a></li>
                            <li class="last"><a href="Calendar_G.aspx"><span>Graduate</span></a></li>
                        </ul>
                    </li>-->


                    <li class="has-sub"><a href="#"><span>Convocation</span></a>
                        <ul>
                            <li><a href="http://gsdl.easternuni.edu.bd/greenstone/cgi-bin/library.cgi?e=d-01000-00---off-091convocation--00-1----0-10-0---0---0direct-10---4-------0-1l--11-en-50---20-about---00-3-1-00-0--4--0--0-0-11-00-0utfZz-8-00&a=d&c=91convocation&cl=CL2.1.1"><span>Convocation 2008</span></a></li>
                            <li><a href="http://gsdl.easternuni.edu.bd/greenstone/cgi-bin/library.cgi?e=d-01000-00---off-091convocation--00-1----0-10-0---0---0direct-10---4-------0-1l--11-en-50---20-about---00-3-1-00-0--4--0--0-0-11-00-0utfZz-8-00&a=d&c=91convocation&cl=CL2.1.2"><span>Convocation 2011</span></a></li>
                            <li class="last"><a href="http://gsdl.easternuni.edu.bd/greenstone/cgi-bin/library.cgi?e=d-01000-00---off-091convocation--00-1----0-10-0---0---0direct-10---4-------0-1l--11-en-50---20-about---00-3-1-00-0--4--0--0-0-11-00-0utfZz-8-00&a=d&c=91convocation&cl=CL2.1.3"><span>Convocation 2013</span></a></li> <li><a href="Convocation_15.aspx"><span>Convocation 2015</span></a></li>
                        </ul>
                    </li>

                    
                    <br />
                     <li class="last"><a href="Life_Campus_SC.aspx"><span>Co-curricular Activities</span></a></li>
                     <li class="last"><a href="Career_LO.aspx"><span>Career Opportunity</span></a></li><li class="has-sub"><a href="#"><span>Archive</span></a>

                        <ul>
                           <li><a href="News and Events Archive.aspx"><span>News & Events</span></a></li>
                           <li><a href="Student Notices  archive.aspx"><span>Notice Board</span></a></li>
                        </ul>
                    </li>
                   

                    
                    <!-- <li><a href="Photo Gallery.aspx"><span>Photo Gallary</span></a></li>
                  
                   <li><a href="FacultyReport.aspx"><span>Reports</span></a></li>-->


                </ul>
            </div>
           
        </div>






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container">

                    <br />

                <span id="heading">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Academic Systems</span>
                
                <br />
                <br />
                <br />


                The Academic System of Eastern University comprises Programs, Courses, Credit Hours, Semesters, Continuous Evaluation and Alphabetical Grading. Each of these components is described below.
                    <br />
                    <br />
                    1. Programs<br />
The University offers a number of undergraduate and graduate programs as mentioned earlier. The curriculum of the respective program provides the list of courses and other details.
                    <br />
                    <br />
                    2. Courses
                    <br />
                    Each program consists of a number of courses. For example, BBA Program consists of 45 courses. Each course is identified by a course number and course title. The course number consists of two parts – an alphabetical part followed by a three digit number. For example, ENG 107 Reading and Grammar is a course in English compulsory for all EU 1st and 2nd Semester students. The three alphabets preceding the number indicates the discipline area of the course. In the example, ENG stands for English. The first digit of the three numbers refers to the level of the course – higher the number, higher is the level of the course. For example, CSE 293 Object-Oriented Programming is a higher level course than CSE 103 Structured Programming, CSE 475 Software Engineering is yet a higher level course compared to CSE 293. The second and third digits refer to the serial number of the course. The course levels and the list of courses are shown in the Semester and Course Sequence Table of each Program. The students of each undergraduate program fall into four levels. Each level is determined by the credit hours completed by a student.
 
                    <br />
                    <br />
                    3. Credit Hours
                    <br />
                    Each course carries certain weights indicated by credit hours. Courses may carry different credit hours . A course may be of 1-credit hour, 2-credit hours, 3-credit hours or even 4 or 6 credit hours. For example, ENG 107 is a 2-credit hour course and LAW 440 carries 4 credit hours. Most courses in Eastern University are however of three credit hours.
A one-credit hour course meets at least for 13 hours and a three-credit hours course meets for at least 40 hours in class during the semester . Depending upon the need for frequency of meeting, a three-credit hour course may meet thrice a week for 60 minutes in each class or it may meet twice a week for 90 minutes in each class.
In addition to lecture classes, a course may have tutorial/workshop sessions or laboratory course/sessional. A Tutorial or Workshop is for facilitating the learning of the students by practice through working out exercises, solving problems, showing application of the concepts and theories, etc. Such sessions for a course usually meet for 90 minutes every week or every alternate week (depending upon the need) and do not carry additional credit hour. However, a Lab course or Sessional carries additional credit hour - usually one credit and meets for at least 90 minutes every week depending upon the nature of the course. For example, CSE 103 Structured Programming - a 3-credit hours theory course - is followed by a one-credit hour course CSE 104 Structured Programming Sessional.
 
                    <br />
                    <br />
                    4. Semester
                    <br />
                    The academic year of Eastern University comprises three semesters: 

Spring Semester: February – May 
Summer Semester: June – September 
Fall Semester: October – January
The duration of each semester is 15 weeks – 13 weeks for classes and 2 weeks for exam recess and final examinations. An additional week is needed for script examination and grading, and for processing and publication of results.
 
                    <br />
                    <br />
                    5. Continuous Evaluation
The performance of the students are measured and evaluated throughout the semester. Evaluation methods during the semester include quizzes, class tests, class /home assignments, exercises, case analysis and reporting, one or two mid term exams., etc. End of the semester evaluation include final exam., term papers, project report, thesis, etc.
                    <br />
                    <br />
                6. Grading
The numerical scores earned by a student in the quizzes, tests, exams., etc. as mentioned above during and at the end of the semester are cumulated for assignment of Grades in the following manner :
                    <br />
                    <br />
                    <table border="1" cellpadding="0" cellspacing="0" frame="box" style="color:black; font-family: sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color:white;">
                        <tr>
                            <td class="auto-style3"><strong>&nbsp;Out of 100 Marks</strong></td>
                            <td style="text-align: center;" class="auto-style2"><strong>Grade</strong></td>
                            <td style="text-align: center;" class="auto-style1"><strong>Grade Point</strong></td>
                            <td style="text-align: left;" class="auto-style4"><strong>&nbsp;Meaning (as interpreted by EU)</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style3">80 % &amp; above</td>
                            <td style="text-align: center;" class="auto-style2">&nbsp;&nbsp; A+</td>
                            <td style="text-align: center;" class="auto-style1">4.00</td>
                            <td class="auto-style4">Outstanding</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">75 % to less than 80</td>
                            <td style="text-align: center;" class="auto-style2">A</td>
                            <td style="text-align: center;" class="auto-style1">3.75</td>
                            <td class="auto-style4">Excellent</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">70 % to less than 75</td>
                            <td style="text-align: center;" class="auto-style2">&nbsp;A-</td>
                            <td style="text-align: center;" class="auto-style1">3.50</td>
                            <td class="auto-style4">Very Good</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">65% to less than 70</td>
                            <td style="text-align: center;" class="auto-style2">&nbsp; B+</td>
                            <td style="text-align: center;" class="auto-style1">3.25</td>
                            <td class="auto-style4">Good</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">60% to less than 65%</td>
                            <td style="text-align: center;" class="auto-style2">B</td>
                            <td style="text-align: center;" class="auto-style1">3.00</td>
                            <td class="auto-style4">Satisfactory&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">55% to less than 60%</td>
                            <td style="text-align: center;" class="auto-style2">&nbsp;B-</td>
                            <td style="text-align: center;" class="auto-style1">2.75</td>
                            <td class="auto-style4">Above Average</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">50% to less than 55%</td>
                            <td style="text-align: center;" class="auto-style2">&nbsp;&nbsp; C+</td>
                            <td style="text-align: center;" class="auto-style1">2.50</td>
                            <td class="auto-style4">Average</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">45% to less than 50%</td>
                            <td style="text-align: center;" class="auto-style2">C</td>
                            <td style="text-align: center;" class="auto-style1">2.25</td>
                            <td class="auto-style4">Below Average</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">40% to less than 45%</td>
                            <td style="text-align: center;" class="auto-style2">D</td>
                            <td style="text-align: center;" class="auto-style1">2.00</td>
                            <td class="auto-style4">Pass</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Less than 40%</td>
                            <td style="text-align: center;" class="auto-style2">F</td>
                            <td style="text-align: center;" class="auto-style1">0.00</td>
                            <td class="auto-style4">Fail</td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td style="text-align: center;" class="auto-style2">I</td>
                            <td style="text-align: center;" class="auto-style1">&nbsp;-</td>
                            <td class="auto-style4">Incomplete</td>
                        </tr>
                        <tr>
                            <td class="auto-style3"></td>
                            <td style="text-align: center;" class="auto-style2">W</td>
                            <td style="text-align: center;" class="auto-style1">&nbsp;-</td>
                            <td class="auto-style4">Withdrawn</td>
                        </tr>
                    </table>


                    <br />
                    <br />

                The Eastern University uses the following abbreviations to denote status of grading process : <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        I = Incomplete and W = Withdrawal 
                    <br />
                    <br />
Withdrawal (W) is assigned to a student who withdraws from the course within the deadline for withdrawal with (W) record. A student who withdraws after this date will earn the grade based on his performance before his withdrawal. Exception to this rule may be made on medical ground and on terms and conditions imposed by the University. 
                    <br />
                    <br />
Incomplete Grade(I): An Incomplete ( I ) grade is assigned only when a student has failed to complete one or more requirements of the course for an unavoidable reason/accidental circumstance and the application for (I) has been accepted by the Course Teacher.<br />
                    <br />
Computation of Grade Points Average(GPA ) and Cumulative Grade Points Average(CGPA) <br />
                    The Grade Point Average (GPA) is computed in the following manner:<br />
                    <br />

                <br />


                    <p class="MsoNormal" style="margin: 0in 0in 0pt; padding: 0px; color: rgb(255, 255, 255); font-family: sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color:#808080;">
                        <strong><span style="font-weight: normal; color: rgb(255, 255, 255); font-family: Verdana;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>(GP in C<sub>1</sub><span class="Apple-converted-space">&nbsp;</span>x CH<sub>1</sub>) + (GP in C<sub>2</sub><span class="Apple-converted-space">&nbsp;</span>x CH<sub>2</sub>) + ………+(GP in C<sub>n</sub><span class="Apple-converted-space">&nbsp;</span>x CH<sub>n</sub>)<o:p></o:p></span></strong></p>
                    <p class="MsoNormal" style="margin: 0in 0in 0pt; padding: 0px; color: rgb(255, 255, 255); font-family: sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color:#808080;">
                        <strong><span style="font-weight: normal; color: rgb(255, 255, 255); font-family: Verdana;">GPA =<span>&nbsp;<span class="Apple-converted-space">&nbsp;</span></span>---------------------------------------------------------------------------------<o:p></o:p></span></strong></p>
                    <p class="MsoNormal" style="margin: 0in 0in 0pt; padding: 0px; color: rgb(255, 255, 255); font-family: sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color:#808080;">
                        <strong><span style="font-weight: normal; color: rgb(255, 255, 255); font-family: Verdana;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="Apple-converted-space">&nbsp;</span></span>CH of C<sub>1</sub><span class="Apple-converted-space">&nbsp;</span>+ CH of C<sub>2</sub><span class="Apple-converted-space">&nbsp;</span>+………….+ CH of C<sub>n</sub></span></strong></p>

                <br />


                    <br />

                GP = Grade point earned <br />
CH = Credit hours of the course attended <br />
C1,2 …n = Courses <br />
                    <br />
                    <p class="MsoNormal" style="margin: 0in 0in 0pt; padding: 0px; color: rgb(255, 255, 255); font-family: sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: #808080;">
                        <strong><span style="font-weight: normal; color: rgb(255, 255, 255); font-family: Verdana;"><o:p>&nbsp;</o:p></span><span style="padding-left: 70px; font-weight: normal; color: rgb(255, 255, 255); font-family: Verdana;">(GPA of all courses completed) x (total credit hours attempted in all courses)<o:p></o:p></span></strong></p>
                    <p class="MsoNormal" style="margin: 0in 0in 0pt; padding: 0px; color: rgb(255, 255, 255); font-family: sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: #808080;">
                        <strong><span style="font-weight: normal; color: rgb(255, 255, 255); font-family: Verdana;">CGPA = ----------------------------------------------------------------------------------------------------<o:p></o:p></span></strong></p>
                    <p class="MsoNormal" style="margin: 0in 0in 0pt; padding: 0px; color: rgb(255, 255, 255); font-family: sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: #808080;">
                        <strong><span style="font-weight: normal; color: rgb(255, 255, 255); font-family: Verdana;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span>Total credit hours attempted in all semesters</span></strong></p>
            </div>


            
        </div>


    </div>


</asp:Content>


