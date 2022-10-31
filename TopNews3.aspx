<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="TopNews3.aspx.cs" Inherits="Eastern_Uni.TopNews3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style1 {
            width: 30px;
        }
        .auto-style2 {
            width: 739px;
        }
        .auto-style3 {
            width: 513.0pt;
            border-collapse: collapse;
            line-height: 115%;
            font-size: 11.0pt;
            font-family: Calibri, sans-serif;
            margin-left: 5.4pt;
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
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('image/Other/Content_Banner.png')">

                <form id="Form1" runat="server">
               
               
               <table>
                  <tr>
                      <td class="auto-style1">


                      </td>
                      <td class="auto-style2">
                          <br />
                            <p  style="text-align:left;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 28px;">

                     <asp:Label ID="Label1" runat="server"></asp:Label>
                   

                    </p>
<br /><br /><br />
                     
                     <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
                          <br />

<p style="font-size: 15px">
    Eastern University (EU) CSIO has arranged a training followed by workshop, titled ‘Map-a-thon’ (a coordinated mapping event using Geographic Information Systems - GIS) in association with Stanford Geospatial Center (Stanford University, California, USA) and World Bank on April 9th 2015 from 9:00 AM - 5:30 PM in Dhaka and simultaneously April 8th from 6pm to 10 pm in California time. <br /><br />
A total of 40 students from EU will join this training as volunteer mappers, who would be introduced to GIS and able to capture, store, manipulate, analyze, manage and present all types of spatial or geographical and base map data in any crisis moment of Bangladesh. This program may also improve the quality and access to care for children in Bangladesh during cholera outbreaks. The training would be conducted by Mr. Ahasanul Hoque, GIS & Data Management Specialist, World Bank Bangladesh and Mr. Stacey Maples, Geospatial Manager, Stanford Geospatial Center (Over Skype).  Three best participants from three different categories would be selected and be awarded attractive Tab (Palmtop) sponsored by Stanford University. <br /><br />
 Pls find more details in the following link: <a href="http://library.stanford.edu/blogs/stanford-libraries-blog/2015/02/stanford-geospatial-center-helps-use-crowd-reduce-childhood" style="text-decoration: underline; color: #0000FF"> Stanford Geospatial Center  </a>
     <br /><br />
 All the mappers across the world will be able to share their accomplished work and look at each other’s mapping contribution, and will try to establish sessions on Google Hangouts to say "Happy Mapping" and meet the man behind the program, Eric J. Nelson, MD, PhD, Pediatric Global Health Physician Scientist, Stanford University School of Medicine at some point and visitors from different international originations will also visit during the program. Please find the program schedule bellow:<br />



                 </p>
                          <p style="font-size: 15px">
                              <table border="0" cellpadding="0" cellspacing="0" class="auto-style3" style="mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in" width="684">
                                  <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes">
                                      <td style="width: 121.5pt; border: solid black 1.0pt; background: #A6A6A6; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p align="center" class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">T<b>ime</b><o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 130.5pt; border: solid black 1.0pt; border-left: none; background: #A6A6A6; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p align="center" class="MsoNormal">
                                              <b><span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Action</span></b><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
  &quot;Times New Roman&quot;"><o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 261.0pt; border: solid black 1.0pt; border-left: none; background: #A6A6A6; padding: 0in 0in 0in 0in" valign="top" width="348">
                                          <p align="center" class="MsoNormal">
                                              <b><span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Remarks</span></b><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
  &quot;Times New Roman&quot;"><o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:1">
                                      <td style="width:121.5pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">9:00 AM - 9:15 AM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:130.5pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Inauguration<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:261.0pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Vice Chancellor, <b>Prof. Dr. Abdur Rab</b>, Pro Vice Chancellor, <b>Prof. Dr. Abdul Hannan Chowdhury</b>, <b>Ms. Mirva Tuulia Moilanen</b>, JPO, World Bank, Deans and Chairpersons of Faculty of E&amp;T will be present.<o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:2">
                                      <td style="width: 121.5pt; border: solid black 1.0pt; border-top: none; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">9:15 AM - 11:00 AM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 130.5pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Training Start<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 261.0pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Resource Person, Mr. Ahasanul Hoque<span style="color:black">, GIS &amp; Data Management Specialist, World Bank Bangladesh</span><o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:3">
                                      <td style="width:121.5pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">11:00 AM - 12: 30 PM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:130.5pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Exercise/ Workshop<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:261.0pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;<o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:4">
                                      <td style="width: 121.5pt; border: solid black 1.0pt; border-top: none; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">12: 30 PM - 1:30 PM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 130.5pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Lunch/Prayer Break<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 261.0pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;Lunch will be provided<o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:5">
                                      <td style="width:121.5pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">1:30 PM - 3:00 PM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:130.5pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Exercise/ Workshop<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:261.0pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;<o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:6">
                                      <td style="width: 121.5pt; border: solid black 1.0pt; border-top: none; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">3:00 PM - 3:15 PM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 130.5pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Break<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 261.0pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;<o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:7">
                                      <td style="width:121.5pt;border:solid black 1.0pt;
  border-top:none;padding:0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">3:15 PM - 5:00 PM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:130.5pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Workshop / Exercise<o:p></o:p></span></p>
                                      </td>
                                      <td style="width:261.0pt;border-top:none;border-left:
  none;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;
  padding:0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">&nbsp;<o:p></o:p></span></p>
                                      </td>
                                  </tr>
                                  <tr style="mso-yfti-irow:8;mso-yfti-lastrow:yes">
                                      <td style="width: 121.5pt; border: solid black 1.0pt; border-top: none; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="162">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">5:00 PM - 5:25 PM<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 130.5pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 5.4pt 0in 5.4pt" valign="top" width="174">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Certificate and Prize giving Ceremony<o:p></o:p></span></p>
                                      </td>
                                      <td style="width: 261.0pt; border-top: none; border-left: none; border-bottom: solid black 1.0pt; border-right: solid black 1.0pt; background: #D9D9D9; padding: 0in 0in 0in 0in" valign="top" width="348">
                                          <p class="MsoNormal">
                                              <span style="font-size:12.0pt;
  font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;">Pro Vice Chancellor, Prof. Dr. Abdul Hannan Chowdhury, Ms Jennifer Farrell, Mhealth Technical Consultant, Stanford University &amp; Founder of CriticaLink at TEDx and other respectable guests will be present.<o:p></o:p></span></p>
                                      </td>
                                  </tr>
                              </table>
                              <br />



                 </p>           
                            

                    <!--  
                          Students  who have completed   all academic  requirements  for graduation from   Fall  2012 to   Summer   2014 are hereby advised to   complete registration    formalities    for  4th   Convocation    by 07 January   2015. Convocation  tentatively   planned  in 2nd week  February 2015.  Students are requested  to  provide  the following   documents  at the Registrar's Office at the time of registration:
<br /><br />
a) Three copies of passport  size recent photograph   (coloured)<br />
b) Original  copy  of provisional   certificate   (if taken  earlier)<br />
c) Bank receipt of BDT 6,000 (Six Thousand  only) cash deposited  to the account  of Eastern University  at any branch  of Dhaka  Bank Ltd. NC No. 205.150.714  or (FIC Bank Ltd. NC No.1 006-371242-041   or pay order/ bank draft from any bank in favor of Eastern University  as Convocation  Registration  Fee.
<br /><br />
Necessary Registration Form is attached in the below:

</p>
<strong style="color: #0000FF; font-size: large; ">Registration Form </strong>
                          <br /><br />
                           <div id="heading" style="margin-left:25px">

                               
                              <a href="Academics/E&T.pdf">* Faculty of E&T</a><br />
                              <a href="Academics/Eng.pdf">* Faculty of English</a><br />                               
                              <a href="Academics/FBA.pdf">* Faculty of Business Administration</a><br />
                              <a href="Academics/Law.pdf">* Faculty of Law</a><br />   <img src="Admins/Data/ClubCarnival_2014.jpg"  alt="Club Carnival 2014" style="Width:730px"/>
                          <br /><br />

                         <!-- <img src="Admins/Data/ClubCarnival_2014Header.jpg"  alt="Club Carnival 2014" style="Width:730px"/> <br />
                    <p style="font-size:14px;font-style: normal;">

            

Eastern University is going to celebrate "Club Carnival 2014" on 19th October at EU campus Dhanmondi,  Dhaka to promote extra-curricular activities. The objective of the carnival is to facilitate innovation, diversity and harmony among the students. 
In the Carnival, EU expects the presence of the Honorable State Minister of the Ministry of Social Welfare of the People's Republic of Bangladesh Advocate Promode Mankin as the Chief Guest. 
                        <br /><br />
The Carnival will be celebrated through daylong diverse activities:<br />
•	Free Membership Drive<br />
•	Drama and Cultural Programs<br />
•	Seminars, Workshops and Debates<br />
•	Galaxy of Photographs and Projects<br />
•	Entrepreneurship and Social Services<br /><br />

Students are encouraged to develop their human values and social skills to be good citizens. In today's highly competitive world, young students have to bear a lot of stress and to get involved in diverse activities in order to acquire knowledge. This is where co-curricular activities play a vital role. EU facilitates this kind of opportunities to the students to come and  join in a common platform.
<br /><br />
   All students are invited to join the carnival.<br /><br />

<b>Contact</b><br />
Md. Jamal Uddin<br />
Deputy Director, Office of Student Affairs (OSA)<br />
Eastern University<br />
Mobile: 01915960916, email: studentaffairs@easternuni.edu.bd<br />



                    </p>

                  -->
                      </td>

                  </tr>

              </table>

                
                </form>

            </div>


            
        </div>


    </div>


</asp:Content>
