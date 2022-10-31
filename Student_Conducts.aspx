<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Student_Conducts.aspx.cs" Inherits="Eastern_Uni.Student_Conducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    <style type="text/css">
        p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri";
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
        .auto-style4 {
            width: 31px;
        }
        .auto-style5 {
            width: 703px;
        }
        .auto-style6 {
            border-collapse: collapse;
            font-size: 11.0pt;
            font-family: "Times New Roman", serif;
            margin-left: .1pt;
        }
        .auto-style7 {
            width: 30.55pt;
            height: 54pt;
        }
        .auto-style8 {
            width: 203.75pt;
            height: 54pt;
        }
        .auto-style9 {
            width: 234.3pt;
            height: 54pt;
        }
        .auto-style10 {
            width: 30.55pt;
            height: 20pt;
        }
        .auto-style11 {
            width: 203.75pt;
            height: 20pt;
        }
        .auto-style12 {
            width: 234.3pt;
            height: 20pt;
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
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('image/Other/Code_of_Conduct.png');">

                    <br />
                <br />
                <br />
                <br />

                    <br />

                <br />
                <br />
                <br />
                <br />

                    <br />
                <br />
                
                
                <table>
                    <tr>
                        <td class="auto-style4">


                        </td>
                        <td class="auto-style5">

                            <p align="center" class="MsoNormal">
                                <b><span style="color:#363435"><o:p>&nbsp;</o:p></span></b></p>
                            <table border="0" cellpadding="0" cellspacing="0" class="auto-style6" style="mso-table-layout-alt: fixed; mso-padding-alt: 0in 0in 0in 0in; width: 692px;">
                                <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-height-rule:
  exactly">
                                    <td style="border:solid #363435 1.0pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;mso-height-rule:exactly" valign="top" width="41" class="auto-style10">
                                        
                                        <p class="MsoNormal">
                                            <b><span style="font-size:10.0pt;line-height:102%;mso-font-width:102%">S<span style="letter-spacing:.05pt">l</span>. <span style="letter-spacing:-.05pt">N</span>o.</span></b></p>
                                    </td>
                                    <td style="border-right: 1.0pt solid #363435; border-top: 1.0pt solid #363435; border-bottom: 1.0pt solid #363435; mso-border-left-alt:solid #363435 .5pt; mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in; mso-height-rule:exactly; border-left-style: none; border-left-color: inherit; border-left-width: medium;" valign="top" width="272" class="auto-style11">
                                        
                                        <p class="MsoNormal">
                                            <b><span style="font-size:
  10.0pt;letter-spacing:-.05pt">C</span><span style="font-size:10.0pt">ode<span style="letter-spacing:-.1pt"> o</span>f<span style="letter-spacing:-.05pt"> C</span>ondu<span style="letter-spacing:-.1pt">c</span>t<span style="letter-spacing:.05pt"> f</span>or<span style="letter-spacing:-.05pt"> E</span>U<span style="mso-font-width:102%"> S<span style="letter-spacing:.05pt">t</span>uden<span style="letter-spacing:-.05pt">t</span>s</span></span></b></p>
                                    </td>
                                    <td style="border-right: 1.0pt solid #363435; border-top: 1.0pt solid #363435; border-bottom: 1.0pt solid #363435; mso-border-left-alt:solid #363435 .5pt; mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in; mso-height-rule:exactly; border-left-style: none; border-left-color: inherit; border-left-width: medium;" valign="top" width="312" class="auto-style12">
                                       
                                        <p class="MsoNormal">
                                            <b>A<span style="letter-spacing:
  -.05pt">ct</span>io<span style="letter-spacing:.05pt">n</span>s<span style="letter-spacing:-.05pt"> t</span><span style="letter-spacing:.05pt">h</span>at a<span style="letter-spacing:-.05pt">r</span>e s<span style="letter-spacing:.05pt">u</span>gg<span style="letter-spacing:-.05pt">e</span>s<span style="letter-spacing:.1pt">t</span><span style="letter-spacing:-.05pt">e</span>d<span style="letter-spacing:-.05pt"> t</span>o<span style="letter-spacing:.05pt"> b</span>e<span style="letter-spacing:-.05pt;
  mso-font-width:101%">t</span><span style="mso-font-width:101%">a<span style="letter-spacing:.05pt">k</span><span style="letter-spacing:-.05pt">e</span>n</span></b></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:1;height:43.3pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:43.3pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.0pt"><o:p>&nbsp;</o:p></span></p>
                                        
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">1</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.3pt;
  mso-height-rule:exactly" valign="top" width="272">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">A</span><span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">l</span><span style="font-size:10.0pt;line-height:102%">l <span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">t</span>ude<span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:.05pt">t</span>s sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d co<span style="letter-spacing:-.1pt">n</span>duct<span style="letter-spacing:.05pt"> t</span>he<span style="letter-spacing:-.15pt">m</span>se<span style="letter-spacing:.05pt">l</span><span style="letter-spacing:-.1pt">v</span>es<span style="letter-spacing:-.05pt;mso-font-width:102%"> i</span><span style="mso-font-width:102%">n </span>app<span style="letter-spacing:.05pt">r</span>o<span style="letter-spacing:-.1pt">p</span><span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.05pt">i</span>a<span style="letter-spacing:-.05pt">t</span>e and de<span style="letter-spacing:-.1pt">c</span>ent<span style="letter-spacing:-.15pt"> m</span>anner be<span style="letter-spacing:-.05pt">f</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ng<span style="letter-spacing:.05pt"> t</span>o
                                            <span style="letter-spacing:-.05pt;mso-font-width:102%">t</span><span style="mso-font-width:102%">he </span>s<span style="letter-spacing:.05pt">t</span>an<span style="letter-spacing:-.1pt">d</span>a<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.1pt">d</span>sofex<span style="letter-spacing:-.1pt">c</span>e<span style="letter-spacing:-.05pt">l</span><span style="letter-spacing:.05pt">l</span>en<span style="letter-spacing:-.1pt">c</span>e<span style="letter-spacing:-.1pt">o</span>f<span style="mso-font-width:102%">E<span style="letter-spacing:-.05pt">U</span>.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.3pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.2pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:102%"> w</span><span style="mso-font-width:102%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:102%"> se</span><span style="letter-spacing:-.15pt;mso-font-width:102%">m</span><span style="mso-font-width:102%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:2;height:43.3pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:43.3pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.0pt"><o:p>&nbsp;</o:p></span></p>
                                       
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">2</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.3pt;
  mso-height-rule:exactly" valign="top" width="272">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">A</span><span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">l</span><span style="font-size:10.0pt;line-height:102%">l <span style="letter-spacing:1.45pt">students</span><span style="letter-spacing:1.8pt"> should</span><span style="letter-spacing:-.05pt"> w</span><span style="letter-spacing:-.1pt">e</span>arc<span style="letter-spacing:.05pt">l</span>ean and <span style="mso-font-width:102%">de<span style="letter-spacing:-.1pt">c</span>ent </span>d<span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:
  -.1pt">s</span>ses.<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:-.05pt">N</span>omales<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">u</span>de<span style="letter-spacing:-.1pt">n</span>t<span style="mso-spacerun:yes">&nbsp; </span>sh<span style="letter-spacing:-.1pt">o</span>u<span style="letter-spacing:.05pt">l</span>d<span style="mso-spacerun:yes">&nbsp; </span>co<span style="letter-spacing:-.15pt">m</span>e<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt;
  mso-font-width:102%">t</span><span style="mso-font-width:102%">o </span>EU p<span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>ses<span style="letter-spacing:-.05pt"> w</span>e<span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">ri</span>ng<span style="mso-font-width:102%"> s<span style="letter-spacing:-.1pt">a</span>nd<span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">l</span>s.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.3pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.2pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:102%"> w</span><span style="mso-font-width:102%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:102%"> se</span><span style="letter-spacing:-.15pt;mso-font-width:102%">m</span><span style="mso-font-width:102%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:3;height:43.3pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:43.3pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.0pt"><o:p>&nbsp;</o:p></span></p>
                                       
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">3</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.3pt;
  mso-height-rule:exactly" valign="top" width="272">
                                       
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%">S<span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.1pt">o</span><span style="letter-spacing:-.1pt">k</span><span style="letter-spacing:.05pt">i</span>ng<span style="letter-spacing:.1pt"> b</span>y s<span style="letter-spacing:.05pt">t</span>ude<span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:.05pt">t</span>s<span style="letter-spacing:.05pt"> i</span>n<span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">d</span>e<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e EU p<span style="letter-spacing:-.05pt">r</span>e<span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>ses<span style="letter-spacing:-.05pt;mso-font-width:102%"> i</span><span style="mso-font-width:102%">s&nbsp; </span>s<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:.05pt">tl</span>y<span style="mso-font-width:102%"> p<span style="letter-spacing:.05pt">r</span>o<span style="letter-spacing:-.1pt">h</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">b</span><span style="letter-spacing:.05pt">it</span><span style="letter-spacing:-.1pt">e</span>d.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.3pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.2pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:102%"> w</span><span style="mso-font-width:102%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:102%"> se</span><span style="letter-spacing:-.15pt;mso-font-width:102%">m</span><span style="mso-font-width:102%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:4;height:84.2pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:84.2pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                       
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">4</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:84.2pt;
  mso-height-rule:exactly" valign="top" width="272">
                                         <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                         <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">A</span><span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">l</span><span style="font-size:10.0pt;line-height:102%">l<span style="mso-spacerun:yes">&nbsp; </span>s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:
  -.1pt">d</span>en<span style="letter-spacing:-.05pt">t</span>s<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d<span style="mso-spacerun:yes">&nbsp;&nbsp; </span>c<span style="letter-spacing:-.1pt">o</span>nduct<span style="mso-spacerun:yes">&nbsp;&nbsp; </span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">l</span>l<span style="mso-spacerun:yes">&nbsp; </span><span style="mso-font-width:102%">o<span style="letter-spacing:-.05pt">f</span><span style="letter-spacing:.05pt">f</span><span style="letter-spacing:-.05pt">i</span>c<span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">a</span>l </span><span style="letter-spacing:.05pt">tr</span>a<span style="letter-spacing:
  -.1pt">n</span>sa<span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ons and co<span style="letter-spacing:-.15pt">mm</span>un<span style="letter-spacing:.05pt">i</span>ca<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>on<span style="letter-spacing:.05pt"> i</span>n<span style="mso-font-width:102%"> En<span style="letter-spacing:-.1pt">g</span><span style="letter-spacing:.05pt">li</span>s<span style="letter-spacing:-.1pt">h</span>.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:84.2pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)Awareness<span style="mso-font-width:102%"> raising</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)<span style="letter-spacing:-.2pt">I</span>n<span style="letter-spacing:.05pt">f</span>o<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>ng<span style="letter-spacing:-.05pt"> D</span>ean of<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.05pt"> f</span>acu<span style="letter-spacing:-.05pt">l</span><span style="letter-spacing:.05pt">t</span>y<span style="mso-font-width:102%"> conc<span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">r</span>ned</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)<span style="letter-spacing:-.05pt">D</span><span style="letter-spacing:-.1pt">e</span>an<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">l</span>l pursue<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.15pt"> m</span>o<span style="letter-spacing:.05pt">ti</span><span style="letter-spacing:-.1pt">v</span>a<span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt;mso-font-width:102%"> s</span><span style="letter-spacing:.05pt;mso-font-width:102%">t</span><span style="mso-font-width:102%">u<span style="letter-spacing:-.1pt">d</span>ent</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">4)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.15pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:102%"> w</span><span style="mso-font-width:102%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">5)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:102%"> se</span><span style="letter-spacing:-.15pt;mso-font-width:102%">m</span><span style="mso-font-width:102%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">6)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:5;mso-height-rule:exactly">
                                    <td style="border-left: 1.0pt solid #363435; border-right: 1.0pt solid #363435; border-bottom: 1.0pt solid #363435; mso-border-top-alt:solid #363435 .5pt; mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in; mso-height-rule:exactly; border-top-style: none; border-top-color: inherit; border-top-width: medium;" valign="top" width="41" class="auto-style7">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                       
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">5</span></p>
                                    </td>
                                    <td style="border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;mso-height-rule:exactly; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" valign="top" width="272" class="auto-style8">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">A</span><span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">l</span><span style="font-size:10.0pt;line-height:102%">l<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>ud<span style="letter-spacing:-.1pt">e</span>n<span style="letter-spacing:-.05pt">t</span>s sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d<span style="letter-spacing:-.15pt"> m</span>o<span style="letter-spacing:-.1pt">v</span>e qu<span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">tl</span>y and<span style="letter-spacing:-.1pt;mso-font-width:102%"> d</span><span style="mso-font-width:102%">ec<span style="letter-spacing:-.1pt">e</span>n<span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">l</span>y&nbsp; </span>so<span style="letter-spacing:-.05pt"> t</span>hat con<span style="letter-spacing:-.1pt">d</span>uc<span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span>ng of 
                                            c<span style="letter-spacing:-.05pt">l</span>a<span style="letter-spacing:-.1pt">s</span>ses<span style="letter-spacing:-.1pt"> o</span>r<span style="letter-spacing:-.1pt"> o</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.1pt">e</span>r<span style="letter-spacing:-.1pt;
  mso-font-width:102%"> o</span><span style="letter-spacing:.05pt;mso-font-width:
  102%">f</span><span style="letter-spacing:-.05pt;mso-font-width:102%">f</span><span style="letter-spacing:.05pt;mso-font-width:102%">i</span><span style="letter-spacing:-.1pt;mso-font-width:102%">c</span><span style="letter-spacing:.05pt;mso-font-width:102%">i</span><span style="letter-spacing:-.1pt;mso-font-width:102%">a</span><span style="mso-font-width:102%">l&nbsp; </span><span style="letter-spacing:.05pt">f</span>un<span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:.05pt">ti</span>o<span style="letter-spacing:-.1pt">n</span>s<span style="letter-spacing:-.1pt"> o</span>f EU<span style="letter-spacing:-.1pt"> a</span><span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:-.1pt"> n</span>ot ha<span style="letter-spacing:-.15pt">m</span>pe<span style="letter-spacing:.05pt">r</span>ed.<span style="letter-spacing:-.05pt"> A</span>s <span style="mso-font-width:102%">su<span style="letter-spacing:-.1pt">c</span>h&nbsp; </span>s<span style="letter-spacing:.05pt">t</span>ud<span style="letter-spacing:
  -.1pt">e</span>n<span style="letter-spacing:-.05pt">t</span>s<span style="letter-spacing:-.15pt"> m</span>ust n<span style="letter-spacing:-.1pt">o</span>t<span style="letter-spacing:-.1pt"> c</span><span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">t</span>e a<span style="letter-spacing:-.1pt">n</span>y d<span style="letter-spacing:.05pt">i</span>s<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">r</span>a<span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:.05pt">ti</span>ng<span style="mso-font-width:102%"> so<span style="letter-spacing:-.1pt">u</span>nd,&nbsp; </span>sc<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.1pt">e</span>am or<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">l</span>k<span style="letter-spacing:.05pt"> l</span>oud<span style="letter-spacing:.05pt">l</span>y<span style="letter-spacing:.05pt"> i</span><span style="letter-spacing:-.1pt">n</span>s<span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">d</span>e<span style="letter-spacing:.05pt"> t</span>he EU<span style="letter-spacing:-.1pt;mso-font-width:102%"> p</span><span style="letter-spacing:.05pt;mso-font-width:102%">r</span><span style="mso-font-width:102%">e<span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>ses.</span></span></p>
                                    </td>
                                    <td style="border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;mso-height-rule:exactly; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium;" valign="top" width="312" class="auto-style9">
                                       
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.2pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:102%"> w</span><span style="mso-font-width:102%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:102%"> se</span><span style="letter-spacing:-.15pt;mso-font-width:102%">m</span><span style="mso-font-width:102%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:6;height:51.35pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:51.35pt;mso-height-rule:exactly" valign="top" width="41">
                                     
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">6</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:51.35pt;
  mso-height-rule:exactly" valign="top" width="272">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%">L<span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">t</span>er<span style="letter-spacing:-.05pt">/</span><span style="letter-spacing:.05pt">r</span>ub<span style="letter-spacing:-.1pt">b</span><span style="letter-spacing:.05pt">i</span>sh sh<span style="letter-spacing:-.1pt">o</span>u<span style="letter-spacing:.05pt">l</span>d be<span style="letter-spacing:-.1pt"> d</span><span style="letter-spacing:.05pt">i</span>sp<span style="letter-spacing:-.1pt">o</span>sed<span style="letter-spacing:.05pt"> i</span>n<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.05pt;
  mso-font-width:102%"> l</span><span style="letter-spacing:.05pt;mso-font-width:
  102%">i</span><span style="letter-spacing:-.05pt;mso-font-width:102%">t</span><span style="letter-spacing:.05pt;mso-font-width:102%">t</span><span style="mso-font-width:102%">er&nbsp; </span>bas<span style="letter-spacing:-.1pt">k</span>e<span style="letter-spacing:.05pt">t</span>s <span style="letter-spacing:-.1pt">p</span><span style="letter-spacing:.05pt">r</span>op<span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">rl</span><span style="letter-spacing:-.1pt">y</span>; <span style="letter-spacing:-.05pt">N</span>o <span style="letter-spacing:
  -.1pt">s</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">u</span>dent <span style="letter-spacing:-.1pt">s</span>hou<span style="letter-spacing:-.05pt">l</span>d <span style="letter-spacing:.05pt;
  mso-font-width:102%">t</span><span style="letter-spacing:-.1pt;mso-font-width:
  102%">h</span><span style="letter-spacing:.05pt;mso-font-width:102%">r</span><span style="mso-font-width:102%">ow </span><span style="letter-spacing:.05pt">l</span><span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:.05pt">tt</span><span style="letter-spacing:-.1pt">e</span>r<span style="letter-spacing:.05pt">/r</span><span style="letter-spacing:-.1pt">u</span>bb<span style="letter-spacing:-.05pt">i</span>sh<span style="mso-spacerun:yes">&nbsp; </span>hap<span style="letter-spacing:-.1pt">h</span>a<span style="letter-spacing:-.1pt">z</span>a<span style="letter-spacing:.05pt">r</span>d<span style="letter-spacing:.05pt">l</span>y<span style="mso-spacerun:yes">&nbsp; </span>on <span style="letter-spacing:.05pt">t</span>he <span style="letter-spacing:-.05pt">f</span><span style="letter-spacing:.05pt">l</span>o<span style="letter-spacing:-.1pt">o</span>r<span style="mso-spacerun:yes">&nbsp; </span><span style="mso-font-width:102%">or </span>an<span style="letter-spacing:
  -.1pt">y </span><span style="letter-spacing:-.05pt">w</span>he<span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:.05pt"> i</span><span style="letter-spacing:-.1pt">n</span>s<span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">d</span>e<span style="letter-spacing:-.05pt"> t</span>he EU<span style="mso-font-width:102%"> p<span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>ses.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:51.35pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.2pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:102%"> w</span><span style="mso-font-width:102%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:102%"> se</span><span style="letter-spacing:-.15pt;mso-font-width:102%">m</span><span style="mso-font-width:102%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:7;height:53.25pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:53.25pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">7</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:53.25pt;
  mso-height-rule:exactly" valign="top" width="272">
                                        <p class="MsoNormal">
                                            <span style="font-size:8.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">A</span><span style="font-size:10.0pt;line-height:102%">ny<span style="letter-spacing:.05pt"> i</span>nd<span style="letter-spacing:.05pt">i</span>sc<span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:-.05pt"> wr</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span>ng on<span style="letter-spacing:.05pt"> t</span>he<span style="letter-spacing:-.05pt"> w</span>a<span style="letter-spacing:-.05pt">l</span><span style="letter-spacing:.05pt">l</span>s of <span style="mso-font-width:102%">E<span style="letter-spacing:-.05pt">U</span>, </span>cha<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:
  .05pt">r</span>s,<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">a</span>b<span style="letter-spacing:.05pt">l</span><span style="letter-spacing:-.1pt">e</span>s<span style="letter-spacing:-.1pt"> o</span>r<span style="letter-spacing:-.1pt"> o</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.1pt">e</span>r<span style="letter-spacing:.05pt"> f</span>u<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:.05pt">r</span>e by a s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent<span style="letter-spacing:-.05pt;
  mso-font-width:102%"> i</span><span style="mso-font-width:102%">s&nbsp; </span>s<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:.05pt">tl</span>y<span style="mso-font-width:102%"> p<span style="letter-spacing:.05pt">r</span>o<span style="letter-spacing:-.1pt">h</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">b</span><span style="letter-spacing:.05pt">it</span><span style="letter-spacing:-.1pt">e</span>d.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:53.25pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.2pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:102%"> w</span><span style="mso-font-width:102%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:102%"> se</span><span style="letter-spacing:-.15pt;mso-font-width:102%">m</span><span style="mso-font-width:102%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:8;height:103.35pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:103.35pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                       
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">8</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:103.35pt;
  mso-height-rule:exactly" valign="top" width="272">
                                        <p class="MsoNormal">
                                            <span style="font-size:13.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%">S<span style="letter-spacing:.05pt">t</span>ude<span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:.05pt">t</span>s sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.05pt">r</span>e<span style="letter-spacing:-.1pt">a</span>t<span style="letter-spacing:-.1pt"> a</span><span style="letter-spacing:.05pt">l</span>l<span style="letter-spacing:-.05pt"> t</span><span style="letter-spacing:-.1pt">e</span>ach<span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">r</span>s, o<span style="letter-spacing:.05pt">f</span><span style="letter-spacing:-.05pt">f</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">l</span>s<span style="mso-font-width:102%"> and&nbsp;
                                            </span>s<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">f</span>f <span style="letter-spacing:-.1pt">o</span>f EU <span style="letter-spacing:
  -.05pt">wi</span><span style="letter-spacing:.05pt">t</span>h <span style="letter-spacing:-.1pt">d</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">g</span>n<span style="letter-spacing:.05pt">it</span>y and <span style="letter-spacing:-.05pt">r</span>es<span style="letter-spacing:
  -.1pt">p</span>ec<span style="letter-spacing:-.05pt">t</span>; <span style="letter-spacing:-.05pt;mso-font-width:102%">A</span><span style="mso-font-width:102%">ny </span><span style="letter-spacing:.05pt">i</span>nde<span style="letter-spacing:-.1pt">c</span>ent beha<span style="letter-spacing:-.1pt">v</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">o</span>r by a s<span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:-.1pt">u</span>dent<span style="letter-spacing:.05pt"> t</span>o any<span style="letter-spacing:.05pt;
  mso-font-width:102%"> t</span><span style="letter-spacing:-.1pt;mso-font-width:
  102%">e</span><span style="mso-font-width:102%">ac<span style="letter-spacing:
  -.1pt">h</span>e<span style="letter-spacing:.05pt">r</span>, </span>o<span style="letter-spacing:.05pt">f</span><span style="letter-spacing:-.05pt">f</span><span style="letter-spacing:.05pt">i</span>c<span style="letter-spacing:-.05pt">i</span>al or <span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:
  .05pt">t</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">f</span>f <span style="letter-spacing:-.1pt">o</span>f EU <span style="letter-spacing:-.05pt">w</span><span style="letter-spacing:
  .05pt">il</span>l be <span style="mso-font-width:102%">d<span style="letter-spacing:-.1pt">e</span>a<span style="letter-spacing:-.05pt">l</span>t&nbsp; </span>se<span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:
  .05pt">i</span>ou<span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">l</span>y and<span style="letter-spacing:-.15pt"> m</span>ay<span style="letter-spacing:.05pt"> l</span>ead<span style="letter-spacing:-.05pt"> t</span>o d<span style="letter-spacing:.05pt">i</span>s<span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">p</span><span style="letter-spacing:.05pt">li</span><span style="letter-spacing:-.1pt">n</span>a<span style="letter-spacing:.05pt">r</span>y<span style="mso-font-width:102%"> ac<span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span>on</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt">by EU<span style="mso-font-width:102%"> au<span style="letter-spacing:.05pt">t</span>ho<span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:.05pt">it</span><span style="letter-spacing:-.1pt">y</span>.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:103.35pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="letter-spacing:-.05pt">(</span>1)To initi<span style="letter-spacing:-.05pt">a</span>te<span style="letter-spacing:-.05pt"> a</span>n inqui<span style="letter-spacing:.2pt">r</span>y p<span style="letter-spacing:-.05pt">r</span>o<span style="letter-spacing:-.05pt">ce</span>ss<span style="letter-spacing:-.05pt"> a</span>nd<span style="letter-spacing:.1pt"> v</span><span style="letter-spacing:-.05pt">er</span>i<span style="letter-spacing:.2pt">f</span>y<span style="mso-font-width:101%"> t<span style="letter-spacing:.05pt">h</span>e </span></p>
                                        <p class="MsoNormal">
                                            <span style="letter-spacing:
  -.05pt;mso-font-width:101%">a</span><span style="mso-font-width:101%">ll<span style="letter-spacing:-.05pt">e</span>g<span style="letter-spacing:-.05pt">a</span>tion.</span></p>
                                        <p class="MsoNormal">
                                            <span style="letter-spacing:-.05pt">(</span>2)Penali<span style="letter-spacing:.05pt">z</span>e<span style="letter-spacing:-.05pt"> a</span><span style="letter-spacing:.05pt">c</span><span style="letter-spacing:-.05pt">c</span>o<span style="letter-spacing:-.05pt">r</span>di<span style="letter-spacing:.1pt">n</span>g to the o<span style="letter-spacing:-.05pt">r</span>d<span style="letter-spacing:-.05pt">e</span>r<span style="mso-font-width:101%"> of </span>misb<span style="letter-spacing:-.05pt">e</span>h<span style="letter-spacing:-.05pt">a</span>vior<span style="letter-spacing:-.05pt"> a</span>s sho<span style="letter-spacing:.1pt">w</span>n<span style="mso-font-width:101%"> b<span style="letter-spacing:-.05pt">e</span>low.</span></p>
                                        <p class="MsoNormal">
                                            V<span style="letter-spacing:-.05pt">er</span>b<span style="letter-spacing:-.05pt">a</span>l insul<span style="letter-spacing:.05pt">t</span>-stud<span style="letter-spacing:-.05pt">e</span>nt must<span style="letter-spacing:-.05pt"> a</span>polo<span style="letter-spacing:-.1pt">g</span>i<span style="letter-spacing:.05pt">z</span>e in<span style="mso-font-width:101%"> w<span style="letter-spacing:-.05pt">r</span>iting </span>V<span style="letter-spacing:
  -.05pt">er</span>b<span style="letter-spacing:-.05pt">a</span>l insult with n<span style="letter-spacing:-.05pt">a</span>s<span style="letter-spacing:.15pt">t</span>y wo<span style="letter-spacing:-.05pt">r</span>ds-Give<span style="letter-spacing:
  .1pt"> w</span><span style="letter-spacing:-.05pt">ar</span>ni<span style="letter-spacing:.1pt">n</span>g<span style="letter-spacing:-.05pt;
  mso-font-width:101%"> a</span><span style="mso-font-width:101%">nd&nbsp; </span><span style="letter-spacing:-.05pt">a</span>sk<span style="letter-spacing:-.05pt"> f</span>or a w<span style="letter-spacing:-.05pt">r</span>itt<span style="letter-spacing:-.05pt">e</span>n<span style="letter-spacing:-.05pt;mso-font-width:101%"> a</span><span style="mso-font-width:101%">polo<span style="letter-spacing:.1pt">g</span>y</span></p>
                                        <p class="MsoNormal">
                                            Th<span style="letter-spacing:
  -.05pt">rea</span>t to t<span style="letter-spacing:-.05pt">e</span><span style="letter-spacing:.05pt">a</span><span style="letter-spacing:-.05pt">c</span>h<span style="letter-spacing:-.05pt">e</span><span style="letter-spacing:.1pt">r</span>-<span style="mso-font-width:101%">t<span style="letter-spacing:-.05pt">er</span>mi<span style="letter-spacing:.1pt">n</span><span style="letter-spacing:-.05pt">a</span>te</span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:9;height:55.0pt;mso-height-rule:exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:55.0pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <o:p>&nbsp;</o:p></p>
                                        <p align="center" class="MsoNormal">
                                            <span style="font-size:10.0pt;mso-font-width:102%">9</span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:55.0pt;
  mso-height-rule:exactly" valign="top" width="272">
                                        <p class="MsoNormal">
                                            <span style="font-size:14.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:-.05pt">N</span><span style="font-size:10.0pt">o s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:
  .05pt">l</span>d c<span style="letter-spacing:-.1pt">a</span>use anyda<span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.15pt">a</span><span style="letter-spacing:-.1pt">g</span>e <span style="letter-spacing:.05pt">t</span>o<span style="mso-font-width:102%">EU</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  mso-font-width:102%">p<span style="letter-spacing:.05pt">r</span>op<span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">rt</span><span style="letter-spacing:-.1pt">y</span>.</span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:55.0pt;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:9.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:.1pt">T</span><span style="font-size:10.0pt;line-height:102%">o<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:
  -.1pt">n</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:.05pt"> i</span>n<span style="letter-spacing:-.1pt">q</span>u<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:.05pt">r</span>y p<span style="letter-spacing:.05pt">r</span>o<span style="letter-spacing:
  -.1pt">c</span>e<span style="letter-spacing:-.1pt">s</span>s and <span style="letter-spacing:-.1pt">a</span>ss<span style="letter-spacing:-.1pt">e</span>ss <span style="letter-spacing:.05pt">t</span>he<span style="mso-spacerun:yes">&nbsp; </span><span style="mso-font-width:102%">da<span style="letter-spacing:-.15pt">m</span>a<span style="letter-spacing:-.1pt">g</span>e </span>caus<span style="letter-spacing:
  -.1pt">e</span>d<span style="mso-spacerun:yes">&nbsp; </span>by<span style="mso-spacerun:yes">&nbsp;&nbsp; </span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">h</span>e<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:
  .05pt">t</span>ude<span style="letter-spacing:-.1pt">n</span>t<span style="mso-spacerun:yes">&nbsp; </span>and<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:-.1pt">a</span>sk<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt"><span style="mso-spacerun:yes">&nbsp;</span>t</span>he<span style="mso-spacerun:yes">&nbsp; </span>s<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:
  -.1pt">u</span>de<span style="letter-spacing:-.1pt">n</span>t<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:-.05pt;
  mso-font-width:102%">t</span><span style="mso-font-width:102%">o </span>co<span style="letter-spacing:-.15pt">m</span>pensa<span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:102%"> da<span style="letter-spacing:-.15pt">m</span>a<span style="letter-spacing:-.1pt">g</span>e.</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:10;mso-yfti-lastrow:yes;height:.55in;mso-height-rule:
  exactly">
                                    <td style="width:30.55pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:.55in;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:14.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal" align="center">
                                            <span style="font-size:10.0pt;
  mso-font-width:102%">10 </span></p>
                                    </td>
                                    <td style="width:203.75pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:.55in;
  mso-height-rule:exactly" valign="top" width="272">
                                        <p class="MsoNormal">
                                            <span style="font-size:6.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%">A s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d be<span style="letter-spacing:-.1pt"> p</span><span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.1pt">e</span>s<span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:.05pt"> i</span>n a<span style="letter-spacing:-.1pt"> c</span><span style="letter-spacing:.05pt">l</span>a<span style="letter-spacing:-.1pt">s</span>s<span style="mso-font-width:102%"> b<span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">f</span>o<span style="letter-spacing:-.05pt">r</span>e&nbsp; </span><span style="letter-spacing:
  .05pt">t</span>he<span style="letter-spacing:-.1pt"> c</span><span style="letter-spacing:.05pt">l</span><span style="letter-spacing:-.1pt">a</span>ss<span style="mso-font-width:102%"> be<span style="letter-spacing:-.1pt">g</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">n</span>s.</span></span></p>
                                    </td>
                                    <td style="width:234.3pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:.55in;
  mso-height-rule:exactly" valign="top" width="312">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%">A s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent<span style="letter-spacing:-.05pt"> w</span>ho<span style="letter-spacing:.05pt"> c</span>o<span style="letter-spacing:-.15pt">m</span>es<span style="letter-spacing:.05pt"> l</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:-.05pt"> i</span>n<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span><span style="letter-spacing:.05pt">r</span>ee co<span style="letter-spacing:-.1pt">n</span>sec<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="mso-font-width:102%"> c<span style="letter-spacing:-.05pt">l</span>ass<span style="letter-spacing:-.1pt">e</span>s&nbsp; </span><span style="letter-spacing:-.05pt">w</span><span style="letter-spacing:
  .05pt">il</span>l be<span style="letter-spacing:-.1pt"> g</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>en no<span style="mso-spacerun:yes">&nbsp; </span>a<span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">e</span>nda<span style="letter-spacing:-.1pt">n</span>ce <span style="letter-spacing:-.05pt">i</span>n <span style="letter-spacing:-.05pt">t</span>he <span style="letter-spacing:
  .05pt">i</span><span style="letter-spacing:-.05pt">m</span><span style="letter-spacing:-.15pt">m</span>ed<span style="letter-spacing:.05pt">i</span>a<span style="letter-spacing:.05pt">t</span>e <span style="mso-font-width:102%">ne<span style="letter-spacing:-.1pt">x</span>t c<span style="letter-spacing:.05pt">l</span>a<span style="letter-spacing:-.1pt">s</span>s.</span></span></p>
                                    </td>
                                </tr>
                            </table>
                           
                            <table border="0" cellpadding="0" cellspacing="0" class="auto-style6" style="mso-table-layout-alt: fixed; mso-padding-alt: 0in 0in 0in 0in; width: 692px;">
                                
                                <tr style="mso-yfti-irow:1;height:41.55pt;mso-height-rule:exactly">
                                    <td style="width:30.65pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:41.55pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:14.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal" align="center">
                                            <span style="font-size:10.0pt;
  mso-font-width:103%">11</span></p>
                                    </td>
                                    <td style="width:204.5pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:41.55pt;
  mso-height-rule:exactly" valign="top" width="273">
                                        <p class="MsoNormal">
                                            <span style="font-size:7.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%">Mob<span style="letter-spacing:
  -.05pt">i</span><span style="letter-spacing:.05pt">l</span>e phon<span style="letter-spacing:-.1pt">e</span>s s<span style="letter-spacing:-.1pt">h</span>ou<span style="letter-spacing:.05pt">l</span>d be s<span style="letter-spacing:-.05pt">w</span><span style="letter-spacing:.05pt">it</span><span style="letter-spacing:-.1pt">c</span>hed o<span style="letter-spacing:.05pt">f</span>f<span style="mso-font-width:103%"> du<span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:.05pt">i</span>ng&nbsp; </span>c<span style="letter-spacing:.05pt">l</span>a<span style="letter-spacing:
  -.1pt">s</span>s<span style="mso-font-width:103%"> ho<span style="letter-spacing:
  -.1pt">u</span><span style="letter-spacing:.05pt">r</span>s.</span></span></p>
                                    </td>
                                    <td style="width:235.15pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:41.55pt;
  mso-height-rule:exactly" valign="top" width="314">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">C</span><span style="letter-spacing:.05pt">l</span>a<span style="letter-spacing:-.1pt">s</span>s<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">e</span>ac<span style="letter-spacing:-.1pt">h</span>er<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">l</span>l<span style="letter-spacing:.05pt"> i</span><span style="letter-spacing:-.1pt">s</span>sue<span style="letter-spacing:-.1pt"> v</span>e<span style="letter-spacing:.05pt">r</span>bal<span style="letter-spacing:-.05pt;mso-font-width:103%"> w</span><span style="letter-spacing:-.1pt;mso-font-width:103%">a</span><span style="letter-spacing:.05pt;mso-font-width:103%">r</span><span style="mso-font-width:103%">n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">(</span><span style="font-size:10.0pt;line-height:102%">2)<span style="letter-spacing:-.15pt">F</span>or<span style="letter-spacing:-.1pt"> v</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">o</span><span style="letter-spacing:.05pt">l</span>a<span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span>ng<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e co<span style="letter-spacing:-.1pt">d</span>e<span style="letter-spacing:-.1pt"> s</span>econd<span style="letter-spacing:.05pt"> ti</span><span style="letter-spacing:-.2pt">m</span>e<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">r</span>n<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:103%"> s<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">u</span>de<span style="letter-spacing:-.1pt">n</span>t&nbsp;&nbsp;&nbsp;
                                            </span>out<span style="letter-spacing:-.1pt"> o</span>f<span style="letter-spacing:
  .05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e<span style="letter-spacing:-.1pt"> c</span><span style="letter-spacing:.05pt">l</span>a<span style="letter-spacing:-.1pt">s</span>s and<span style="letter-spacing:-.2pt"> m</span>a<span style="letter-spacing:.05pt">r</span>k absent<span style="letter-spacing:.05pt"> f</span><span style="letter-spacing:-.1pt">o</span>r<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e<span style="letter-spacing:-.1pt;
  mso-font-width:103%"> c</span><span style="letter-spacing:.05pt;mso-font-width:
  103%">l</span><span style="mso-font-width:103%">a<span style="letter-spacing:
  -.1pt">s</span>s.</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:2;height:43.45pt;mso-height-rule:exactly">
                                    <td style="width:30.65pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:43.45pt;mso-height-rule:exactly" valign="top" width="41">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal" align="center">
                                            <span style="font-size:10.0pt;
  mso-font-width:103%">12</span></p>
                                    </td>
                                    <td style="width:204.5pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.45pt;
  mso-height-rule:exactly" valign="top" width="273">
                                        <p class="MsoNormal">
                                            <span style="font-size:9.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">N</span><span style="font-size:10.0pt;line-height:102%">o s<span style="letter-spacing:
  .05pt">t</span>ude<span style="letter-spacing:-.1pt">n</span>t sh<span style="letter-spacing:-.1pt">o</span>u<span style="letter-spacing:.05pt">l</span>d do a<span style="letter-spacing:-.1pt">ny</span><span style="letter-spacing:
  .05pt">t</span>h<span style="letter-spacing:.05pt">i</span>n<span style="letter-spacing:-.1pt">g</span>, <span style="letter-spacing:-.05pt">w</span>h<span style="letter-spacing:.05pt">i</span>ch <span style="letter-spacing:-.05pt;
  mso-font-width:103%">w</span><span style="letter-spacing:.05pt;mso-font-width:
  103%">i</span><span style="letter-spacing:-.05pt;mso-font-width:103%">l</span><span style="mso-font-width:103%">l </span>da<span style="letter-spacing:-.2pt">m</span>a<span style="letter-spacing:-.1pt">g</span>e<span style="letter-spacing:.05pt"> t</span>he<span style="letter-spacing:.05pt"> r</span>ep<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">ti</span>on and honor<span style="letter-spacing:
  -.1pt"> o</span>f<span style="mso-font-width:103%"> E<span style="letter-spacing:
  -.05pt">U</span>.</span></span></p>
                                    </td>
                                    <td style="width:235.15pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.45pt;
  mso-height-rule:exactly" valign="top" width="314">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.15pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:103%"> w</span><span style="mso-font-width:103%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:103%"> se</span><span style="letter-spacing:-.2pt;mso-font-width:103%">m</span><span style="mso-font-width:103%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.2pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:103%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:3;height:43.45pt;mso-height-rule:exactly">
                                    <td style="width:30.65pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:43.45pt;mso-height-rule:exactly" valign="top" width="41">
                                       
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal" align="center">
                                            <span style="font-size:10.0pt;
  mso-font-width:103%">13</span></p>
                                    </td>
                                    <td style="width:204.5pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.45pt;
  mso-height-rule:exactly" valign="top" width="273">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">N</span><span style="font-size:10.0pt;line-height:102%">o s<span style="letter-spacing:.05pt">t</span>ude<span style="letter-spacing:-.1pt">n</span>t sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d en<span style="letter-spacing:-.1pt">g</span>a<span style="letter-spacing:-.1pt">g</span>e h<span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.2pt">m</span>se<span style="letter-spacing:.05pt">l</span>f/h<span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">l</span>f<span style="letter-spacing:.05pt;mso-font-width:103%"> i</span><span style="mso-font-width:103%">n&nbsp; </span>any ac<span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span><span style="letter-spacing:.05pt">it</span>y sub<span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e of&nbsp; 
                                            EU<span style="letter-spacing:-.1pt"> g</span>oa<span style="letter-spacing:
  .05pt">l</span>s<span style="mso-font-width:103%"> a<span style="letter-spacing:
  -.1pt">n</span>d o<span style="letter-spacing:-.1pt">b</span><span style="letter-spacing:.15pt">j</span>e<span style="letter-spacing:-.1pt">c</span><span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>es.</span></span></p>
                                    </td>
                                    <td style="width:235.15pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:43.45pt;
  mso-height-rule:exactly" valign="top" width="314">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">1)<span style="letter-spacing:-.15pt">G</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e no<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>ce<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:-.05pt"> t</span>he<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">de</span>nt<span style="letter-spacing:-.05pt"> wi</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.15pt"> m</span><span style="letter-spacing:.05pt">il</span>d<span style="letter-spacing:-.05pt;mso-font-width:103%"> w</span><span style="mso-font-width:103%">a<span style="letter-spacing:-.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">2)S<span style="letter-spacing:-.1pt">u</span>spend<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">rr</span><span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.1pt;mso-font-width:103%"> se</span><span style="letter-spacing:-.2pt;mso-font-width:103%">m</span><span style="mso-font-width:103%">es<span style="letter-spacing:.05pt">t</span>er</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:.05pt">(</span><span style="font-size:10.0pt">3)Te<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.2pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:-.05pt">t</span>e<span style="letter-spacing:-.05pt"> f</span><span style="letter-spacing:.05pt">r</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="mso-font-width:103%"> un<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:4;height:78.0pt;mso-height-rule:exactly">
                                    <td style="width:30.65pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:78.0pt;mso-height-rule:exactly" valign="top" width="41">
                                       
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <o:p>&nbsp;</o:p></p>
                                        <p class="MsoNormal" align="center">
                                            <span style="font-size:10.0pt;
  mso-font-width:103%">14</span></p>
                                    </td>
                                    <td style="width:204.5pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:78.0pt;
  mso-height-rule:exactly" valign="top" width="273">
                                        
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <o:p>&nbsp;</o:p></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;
  letter-spacing:-.05pt">N</span><span style="font-size:10.0pt">o s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d<span style="letter-spacing:-.05pt"> t</span>ea<span style="letter-spacing:-.1pt">s</span>e<span style="letter-spacing:-.05pt">/</span><span style="letter-spacing:.05pt">i</span>n<span style="letter-spacing:-.1pt">s</span>u<span style="letter-spacing:.05pt">l</span>t<span style="letter-spacing:-.1pt"> o</span><span style="letter-spacing:.05pt">t</span>h<span style="letter-spacing:-.1pt">e</span>r<span style="letter-spacing:-.1pt;
  mso-font-width:103%"> s</span><span style="letter-spacing:.05pt;mso-font-width:
  103%">t</span><span style="mso-font-width:103%">u<span style="letter-spacing:
  -.1pt">d</span>en<span style="letter-spacing:-.05pt">t</span>s.</span></span></p>
                                    </td>
                                    <td style="width:235.15pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:78.0pt;
  mso-height-rule:exactly" valign="top" width="314">
                                        <p class="MsoNormal">
                                            <span style="letter-spacing:-.05pt">(</span>1)To initi<span style="letter-spacing:-.05pt">a</span>te inqui<span style="letter-spacing:
  .1pt">r</span>y<span style="letter-spacing:.1pt"> pr</span>o<span style="letter-spacing:-.05pt">ce</span>ss<span style="letter-spacing:-.05pt"> a</span>nd<span style="letter-spacing:-.1pt"> g</span>ive<span style="letter-spacing:.1pt;
  mso-font-width:101%"> w</span><span style="letter-spacing:-.05pt;mso-font-width:
  101%">ar</span><span style="mso-font-width:101%">n</span><span style="mso-font-width:102%">i</span><span style="letter-spacing:.1pt;
  mso-font-width:101%">n</span><span style="mso-font-width:101%">g </span></p>
                                        <p class="MsoNormal">
                                            to the<span style="mso-font-width:
  101%"> s</span><span style="mso-font-width:102%">t</span><span style="mso-font-width:101%">ud<span style="letter-spacing:-.05pt">e</span>n</span><span style="mso-font-width:102%">t</span><span style="mso-font-width:101%">s.</span></p>
                                        <p class="MsoNormal">
                                            <span style="letter-spacing:-.05pt">(</span>2)<span style="letter-spacing:
  -.15pt">I</span>f the stu<span style="letter-spacing:.1pt">d</span><span style="letter-spacing:-.05pt">e</span>nt<span style="letter-spacing:-.05pt"> re</span>p<span style="letter-spacing:.05pt">e</span><span style="letter-spacing:-.05pt">a</span>ts this st<span style="letter-spacing:-.05pt">e</span>p, susp<span style="letter-spacing:-.05pt">e</span>nd<span style="mso-font-width:102%"> t</span><span style="mso-font-width:101%">he&nbsp; </span>stud<span style="letter-spacing:-.05pt">e</span>nt<span style="letter-spacing:-.05pt"> f</span>or the<span style="letter-spacing:-.05pt"> c</span>u<span style="letter-spacing:.1pt">r</span><span style="letter-spacing:-.05pt">re</span><span style="letter-spacing:.1pt">n</span>t<span style="mso-font-width:101%"> s<span style="letter-spacing:-.05pt">e</span>m<span style="letter-spacing:-.05pt">e</span>s</span><span style="mso-font-width:
  102%">t</span><span style="letter-spacing:-.05pt;mso-font-width:101%">er</span><span style="mso-font-width:101%">.</span></p>
                                        <p class="MsoNormal">
                                            <span style="letter-spacing:-.05pt">(</span>3)<span style="letter-spacing:
  -.05pt">F</span><span style="letter-spacing:.1pt">o</span>r<span style="letter-spacing:-.05pt">c</span>ontinu<span style="letter-spacing:-.05pt">e</span>dst<span style="letter-spacing:-.05pt">e</span>pst<span style="letter-spacing:.05pt">e</span><span style="letter-spacing:-.05pt">r</span>min<span style="letter-spacing:-.05pt">a</span>te<span style="letter-spacing:-.05pt">fr</span>om<span style="mso-font-width:102%">t</span><span style="mso-font-width:101%">he un</span><span style="mso-font-width:102%">i</span><span style="mso-font-width:101%">v<span style="letter-spacing:-.05pt">er</span>s</span><span style="mso-font-width:102%">i<span style="letter-spacing:.15pt">t</span></span><span style="letter-spacing:-.2pt;mso-font-width:101%">y</span><span style="mso-font-width:101%">.</span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:5;height:78.9pt;mso-height-rule:exactly">
                                    <td style="width:30.65pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:78.9pt;mso-height-rule:exactly" valign="top" width="41">
                                       
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:13.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal" align="center">
                                            <span style="font-size:10.0pt;
  mso-font-width:103%">15</span></p>
                                    </td>
                                    <td style="width:204.5pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:78.9pt;
  mso-height-rule:exactly" valign="top" width="273">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:14.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">N</span><span style="font-size:10.0pt;line-height:102%">o s<span style="letter-spacing:
  .05pt">t</span>ude<span style="letter-spacing:-.1pt">n</span>t sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d <span style="letter-spacing:-.05pt">f</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">g</span>ht <span style="letter-spacing:-.05pt">w</span><span style="letter-spacing:.05pt">it</span>h o<span style="letter-spacing:-.05pt">t</span>her <span style="letter-spacing:-.1pt;mso-font-width:103%">s</span><span style="letter-spacing:.05pt;mso-font-width:103%">t</span><span style="mso-font-width:103%">ud<span style="letter-spacing:-.1pt">e</span>n<span style="letter-spacing:.05pt">t</span>s </span>an<span style="letter-spacing:
  -.1pt">y </span><span style="letter-spacing:-.05pt">w</span>he<span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:.05pt"> i</span>n EUca<span style="letter-spacing:-.2pt">m</span>pus<span style="mso-font-width:103%"> p<span style="letter-spacing:-.05pt">r</span>e<span style="letter-spacing:-.2pt">m</span><span style="letter-spacing:.05pt">i</span>ses.</span></span></p>
                                    </td>
                                    <td style="width:235.15pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:78.9pt;
  mso-height-rule:exactly" valign="top" width="314">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">(</span><span style="font-size:10.0pt;line-height:102%">1)<span style="letter-spacing:.1pt">T</span>o<span style="letter-spacing:.05pt"> i</span><span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:-.05pt"> i</span>nq<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">ir</span>y p<span style="letter-spacing:.05pt">r</span>o<span style="letter-spacing:-.1pt">c</span>ess<span style="letter-spacing:-.1pt"> a</span>nd<span style="letter-spacing:-.1pt"> g</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:-.05pt"> w</span>a<span style="letter-spacing:.05pt">r</span>n<span style="letter-spacing:.05pt">i</span>ng<span style="letter-spacing:.05pt"> t</span>o<span style="letter-spacing:.05pt;mso-font-width:103%"> t</span><span style="mso-font-width:103%">he&nbsp; 
                                            s<span style="letter-spacing:.05pt">t</span>ud<span style="letter-spacing:-.1pt">e</span>n<span style="letter-spacing:-.05pt">t</span>s.</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">(</span><span style="font-size:10.0pt;line-height:102%">2) <span style="letter-spacing:
  -.2pt">I</span>f <span style="letter-spacing:.05pt">t</span>he s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:-.1pt">p</span>e<span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:-.05pt">t</span>s<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:
  -.1pt">h</span><span style="letter-spacing:.05pt">i</span>s <span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">t</span>ep, sus<span style="letter-spacing:-.1pt">p</span>end<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt;
  mso-font-width:103%">t</span><span style="mso-font-width:103%">he </span>s<span style="letter-spacing:.05pt">t</span>ud<span style="letter-spacing:-.1pt">e</span>n<span style="letter-spacing:-.05pt">t</span>s<span style="letter-spacing:.05pt"> f</span><span style="letter-spacing:-.1pt">o</span>r<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>e c<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.05pt">r</span>ent<span style="mso-font-width:103%"> se<span style="letter-spacing:-.15pt">m</span>es<span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">r</span>.</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:103%;letter-spacing:.05pt">(</span><span style="font-size:10.0pt;line-height:103%">3) F<span style="letter-spacing:
  -.1pt">o</span>r co<span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>nued<span style="letter-spacing:-.1pt"> s</span><span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:-.1pt">p</span>s <span style="letter-spacing:-.05pt">t</span><span style="letter-spacing:-.1pt">e</span><span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.2pt">m</span><span style="letter-spacing:.05pt">i</span>nate <span style="letter-spacing:.05pt">t</span>he <span style="letter-spacing:
  -.1pt">s</span><span style="letter-spacing:.05pt">t</span>ud<span style="letter-spacing:-.1pt">e</span>n<span style="letter-spacing:.05pt">t</span>s <span style="letter-spacing:.05pt;mso-font-width:103%">f</span><span style="letter-spacing:-.05pt;mso-font-width:103%">r</span><span style="mso-font-width:103%">om </span><span style="letter-spacing:.05pt">t</span>he<span style="mso-font-width:103%">u<span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">it</span><span style="letter-spacing:-.1pt">y</span>.</span></span></p>
                                    </td>
                                </tr>
                                <tr style="mso-yfti-irow:6;mso-yfti-lastrow:yes;height:78.9pt;mso-height-rule:
  exactly">
                                    <td style="width:30.65pt;border:solid #363435 1.0pt;
  border-top:none;mso-border-top-alt:solid #363435 .5pt;mso-border-alt:solid #363435 .5pt;
  padding:0in 0in 0in 0in;height:78.9pt;mso-height-rule:exactly" valign="top" width="41">
                                       
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:13.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal" align="center">
                                            <span style="font-size:10.0pt;
  mso-font-width:103%">16</span></p>
                                    </td>
                                    <td style="width:204.5pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:78.9pt;
  mso-height-rule:exactly" valign="top" width="273">
                                        <p class="MsoNormal">
                                            <span style="font-size:5.5pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt"><o:p>&nbsp;</o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:-.05pt">N</span><span style="font-size:10.0pt;line-height:102%">o s<span style="letter-spacing:.05pt">t</span>uden<span style="letter-spacing:-.05pt">t</span>s sho<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">l</span>d take any un<span style="letter-spacing:
  .05pt">f</span>a<span style="letter-spacing:.05pt">i</span>r<span style="letter-spacing:-.2pt"> m</span>eans<span style="letter-spacing:.05pt;
  mso-font-width:103%"> i</span><span style="mso-font-width:103%">n&nbsp; </span><span style="letter-spacing:.05pt">t</span>he E<span style="letter-spacing:-.1pt">x</span>a<span style="letter-spacing:-.2pt">m</span><span style="letter-spacing:.05pt">i</span>na<span style="letter-spacing:.05pt">ti</span><span style="letter-spacing:-.1pt">o</span>n<span style="letter-spacing:-.05pt;mso-font-width:103%"> H</span><span style="mso-font-width:103%">a<span style="letter-spacing:-.05pt">l</span><span style="letter-spacing:.05pt">l</span>.</span></span></p>
                                    </td>
                                    <td style="width:235.15pt;border-top:none;border-left:
  none;border-bottom:solid #363435 1.0pt;border-right:solid #363435 1.0pt;
  mso-border-top-alt:solid #363435 .5pt;mso-border-left-alt:solid #363435 .5pt;
  mso-border-alt:solid #363435 .5pt;padding:0in 0in 0in 0in;height:78.9pt;
  mso-height-rule:exactly" valign="top" width="314">
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">(</span><span style="font-size:10.0pt;line-height:102%">1)<span style="letter-spacing:-.05pt">O</span>n<span style="letter-spacing:.05pt"> r</span>eco<span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:-.2pt">m</span>enda<span style="letter-spacing:.05pt">ti</span>on<span style="letter-spacing:-.1pt"> o</span>f<span style="letter-spacing:.05pt"> t</span>he<span style="letter-spacing:-.05pt"> D</span><span style="letter-spacing:-.1pt">e</span>an<span style="letter-spacing:.05pt">/</span><span style="letter-spacing:-.05pt">C</span><span style="letter-spacing:-.1pt">h</span>a<span style="letter-spacing:-.05pt">i</span><span style="letter-spacing:.05pt">r</span>pe<span style="letter-spacing:-.05pt">r</span>son<span style="letter-spacing:.05pt;mso-font-width:103%"> t</span><span style="mso-font-width:103%">he&nbsp; </span>s<span style="letter-spacing:.05pt">t</span>ud<span style="letter-spacing:-.1pt">e</span>nt<span style="letter-spacing:-.2pt"> m</span>ay be<span style="letter-spacing:-.1pt"> g</span><span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>en<span style="letter-spacing:.05pt">‘</span>F’<span style="letter-spacing:.05pt"> i</span>n<span style="letter-spacing:.05pt"> t</span>h<span style="letter-spacing:-.1pt">a</span>t<span style="mso-font-width:103%"> co<span style="letter-spacing:-.1pt">u</span><span style="letter-spacing:.05pt">r</span>s<span style="letter-spacing:-.1pt">e</span>.</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">(</span><span style="font-size:10.0pt;line-height:102%">2) <span style="letter-spacing:
  -.2pt">I</span>f <span style="letter-spacing:.05pt">t</span>hes<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt">r</span>e<span style="letter-spacing:-.1pt">p</span>e<span style="letter-spacing:-.1pt">a</span><span style="letter-spacing:-.05pt">t</span>s<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:
  -.1pt">h</span><span style="letter-spacing:.05pt">i</span>s <span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">t</span>ep, sus<span style="letter-spacing:-.1pt">p</span>end<span style="mso-spacerun:yes">&nbsp; </span><span style="letter-spacing:.05pt;
  mso-font-width:103%">t</span><span style="mso-font-width:103%">he&nbsp; </span>s<span style="letter-spacing:.05pt">t</span>ud<span style="letter-spacing:-.1pt">e</span>n<span style="letter-spacing:-.05pt">t</span>s<span style="letter-spacing:.05pt"> f</span><span style="letter-spacing:-.1pt">o</span>r<span style="letter-spacing:.05pt"> t</span><span style="letter-spacing:-.1pt">h</span>at pa<span style="letter-spacing:-.05pt">r</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>cu<span style="letter-spacing:-.05pt">l</span>ar<span style="letter-spacing:-.1pt;
  mso-font-width:103%"> s</span><span style="mso-font-width:103%">e<span style="letter-spacing:-.15pt">m</span>es<span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:.05pt">r</span>.</span><o:p></o:p></span></p>
                                        <p class="MsoNormal">
                                            <span style="font-size:10.0pt;line-height:102%;letter-spacing:.05pt">(</span><span style="font-size:10.0pt;line-height:102%">3)F<span style="letter-spacing:
  -.1pt">o</span>r co<span style="letter-spacing:-.1pt">n</span><span style="letter-spacing:.05pt">t</span><span style="letter-spacing:-.05pt">i</span>nued <span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">t</span>e<span style="letter-spacing:-.1pt">p</span>s<span style="letter-spacing:.05pt"> i</span>n next<span style="letter-spacing:-.1pt"> s</span>e<span style="letter-spacing:-.15pt">m</span>es<span style="letter-spacing:.05pt">t</span>er <span style="letter-spacing:.05pt">t</span>he<span style="mso-font-width:103%"> s<span style="letter-spacing:.05pt">t</span>u<span style="letter-spacing:-.1pt">d</span>ent&nbsp; </span><span style="letter-spacing:
  -.15pt">m</span><span style="letter-spacing:.15pt">a</span>y be d<span style="letter-spacing:.05pt">i</span>s<span style="letter-spacing:-.15pt">m</span><span style="letter-spacing:.05pt">i</span>ssed/ex<span style="letter-spacing:-.1pt">p</span>e<span style="letter-spacing:-.05pt">l</span><span style="letter-spacing:.05pt">l</span><span style="letter-spacing:-.1pt">e</span>d<span style="letter-spacing:.05pt"> fr</span>om<span style="letter-spacing:.05pt"> t</span>he<span style="letter-spacing:-.1pt;
  mso-font-width:103%"> u</span><span style="mso-font-width:103%">n<span style="letter-spacing:.05pt">i</span><span style="letter-spacing:-.1pt">v</span>e<span style="letter-spacing:.05pt">r</span><span style="letter-spacing:-.1pt">s</span><span style="letter-spacing:.05pt">it</span>y</span></span></p>
                                    </td>
                                </tr>
                            </table>
                            <p align="center" class="MsoNormal">
                                <o:p>&nbsp;</o:p></p>


                        </td>

                    </tr>

                </table>
                

               



                  




            </div>


            
        </div>


    </div>


</asp:Content>
