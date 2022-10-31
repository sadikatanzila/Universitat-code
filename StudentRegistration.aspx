<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="Eastern_Uni.StudentRegistration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Student Registration</title>
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
      
    <link href="Information.css" rel="stylesheet" />
      <style type="text/css">
          .auto-style1 {
          }
          .auto-style2 {
              width:25%;
          }
          
          .auto-style3 {
          }
          
          .auto-style4 {
          }
          
          .auto-style8 {
              height: 52px;
              width: 20%;
          }
          



            p.MsoNormal
	{margin-bottom:.0001pt;
	text-autospace:none;
	font-size:12.0pt;
	font-family:"Calibri";
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
        .auto-style8 {
            width: 7.25in;
            border-collapse: collapse;
            font-size: 10.0pt;
            font-family: "Times New Roman", serif;
            border: 1.0pt solid windowtext;
            margin-left: 5.4pt;
        }
        .auto-style16 {
        height: .25in;
        width: 2in;
    }
          .auto-style17 {
              height: .25in;
              width: 178pt;
          }
          h1
	{margin-top:12.0pt;
	margin-right:0in;
	margin-bottom:3.0pt;
	margin-left:0in;
	page-break-after:avoid;
	font-size:16.0pt;
	font-family:"Cambria","serif";
	}
          .auto-style18 {
              border-collapse: collapse;
              font-size: 11.0pt;
              font-family: Calibri, sans-serif;
              border-style: none;
              border-color: inherit;
              border-width: medium;
              margin-left: 6.75pt;
              margin-right: 6.75pt;
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

                     <li class="has-sub"><a href="#"><span>Career Services and International Office</span></a><ul><li><a href="Career_Service.aspx"><span>Career Services</span></a></li><li><a href="Int_Office.aspx"><span>International Office</span></a></li></ul></li><li class="last"><a href="Phy_Coucilling.aspx"><span>Psycho-Social Counselling</span></a></li>

                       


                     

                    

                    

                    <li class="last"><a href="StudentAffairs.aspx"><span>Office of Student Affairs</span></a></li>
                  
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


     <div id="second">
    <!-- <div class="full_content">-->
 <div id="s_container" style="background-repeat: no-repeat; ">

                <form id="Form1" runat="server">
             <br />

          <!--   <span style="font-size:larger;font-weight:600;color:blue;">Insert Student Information</span>
             <hr />
             Insert New Students' Inforamtion.....below   
              <br />
             
                    -->
                     <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">

                 

                     
                                 
                   <br />       
                 <table align="left" border="1" cellpadding="0" cellspacing="0" class="auto-style18" style="mso-border-top-alt: solid #4F81BD 1.0pt; mso-border-bottom-alt: solid #4F81BD 1.0pt; mso-yfti-tbllook: 1184; mso-table-lspace: 9.0pt; mso-table-rspace: 9.0pt; mso-table-anchor-vertical: paragraph; mso-table-anchor-horizontal: margin; mso-table-left: center; mso-table-top: 9.25pt; mso-padding-alt: 0in 5.4pt 0in 5.4pt; width: 675px;">
                     <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes">
                         <td style="width:361.8pt;border-top:solid #4F81BD 1.0pt;
  border-left:none;border-bottom:solid #4F81BD 1.0pt;border-right:none;
  padding:0in 5.4pt 0in 5.4pt" valign="top" width="482">
                             <h1 align="center" style="text-align: center; mso-element: frame; mso-element-frame-hspace: 9.0pt; mso-element-wrap: around; mso-element-anchor-vertical: paragraph; mso-element-anchor-horizontal: margin; mso-element-left: center; mso-element-top: 9.25pt; mso-height-rule: exactly; width: 664px;"><span style="font-size:20.0pt;mso-bidi-font-size:
  16.0pt;color:#365F91;font-weight:normal">EUMO 2014<o:p></o:p></span></h1>
                             <p align="center" class="MsoNormal">
                                 <b><span style="color:#365F91"><o:p>&nbsp;</o:p></span></b></p>
                         </td>
                     </tr>
                 </table>
                  
                 
                 
                 <asp:Image ID="Image1" runat="server" ImageUrl="~/Admins/Data/EUMO.jpg" Height="80px"/>
                 
                 
                 <p align="center" class="MsoNormal">
                     <o:p>&nbsp;</o:p></p>
                 <p align="center" class="MsoNormal">
                     <span style="font-family:&quot;Arial Rounded MT Bold&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p><o:p>&nbsp;</o:p><o:p>&nbsp;</o:p><o:p>&nbsp;</o:p></span></p>
                 <p align="center" class="MsoNormal">
                     <span style="font-family:&quot;Arial Rounded MT Bold&quot;,&quot;sans-serif&quot;">Organized by Faculty of Engineering and Technology (E&amp;T)<o:p></o:p></span></p>
                 <p align="center" class="MsoNormal">
                     <span style="font-family:&quot;Arial Rounded MT Bold&quot;,&quot;sans-serif&quot;">Eastern University, <st1:place
w:st="on">Dhaka</st1:place><o:p></o:p></span></p>

                 

                     
                                 
                            
                 <br />
                    
                        
                             <table style="width:95%">
                     

                     <tr>
                         <td class="auto-style4">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                 
                             &nbsp;</td>

                         <td class="auto-style1">
                              &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                 
                             &nbsp;</td>

                     </tr>

                                 <tr>
                                     <td class="auto-style1" colspan="4" style="text-align: center; font-weight: bold; font-size: large;">REGISTRATION FORM</td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2" style=" Width:250px">



                  <asp:Panel ID="pnlImage" runat="server" GroupingText="Upload Photo" Width="250px">

                  <input type="file" id="File1" name="File1" runat="server" />
                  <br/>
                  <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1"/>

                 <asp:TextBox ID="txtPictureLocation" runat="server" Width="200px" Visible="false"></asp:TextBox>
                  
                
                <asp:Label ID="lblmsg" runat="server" ForeColor="Blue" ></asp:Label>
                                         &nbsp;
                      </asp:Panel>
                      </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                 </tr>

                     <tr>
                         <td class="auto-style4">
<span style="font-weight: normal; font-size: large; color: #000000;">Name</span>
                             
                             </td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 
                             <span style="font-weight: bold; font-size: large; color: #000000;">:</span>
                               <asp:TextBox ID="txtName" runat="server" Width="500px"></asp:TextBox>
                                <span style="font-weight: normal; font-size: large; color: #f00;">*</span>     
                             <asp:TextBox ID="txtID" runat="server" Width="100px" Visible="false"></asp:TextBox>
                         </td>

                     </tr>

                                 <tr>
                                     <td class="auto-style4"><span style="font-weight: normal; font-size: large; color: #000000;">Email Address</span> </td>
                                     <td class="auto-style2" colspan="3">
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>
                                         <asp:TextBox ID="txtEmail" runat="server" Width="500px"></asp:TextBox>
                                     </td>
                                 </tr>

                     <tr>
                         <td class="auto-style4">
                             <span style="font-weight: normal; font-size: large; color: #000000;">Cell Number</span>
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 <span style="font-weight: bold; font-size: large; color: #000000;">:</span>
                             <asp:TextBox ID="txtCellnumber" runat="server"  Width="500px"></asp:TextBox>
                             <span style="font-weight: normal; font-size: large; color: #f00;">*</span></td>

                     </tr>


                    
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">
                                         &nbsp;</td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style4"><span style="font-weight: normal; font-size: large; color: #000000;">SSC/ O-Level<br /> Roll Number</span></td>
                                     <td class="auto-style2" colspan="3">
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>
                                         <asp:TextBox ID="txtStudentID" runat="server" Width="500px"></asp:TextBox>
                                         <span style="font-weight: normal; font-size: large; color: #f00;">*</span></td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">
                                         &nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style4" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">College/ Institution</span></td>
                                     <td class="auto-style2" colspan="3" >
                                         <span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>
                                          <asp:TextBox ID="txtInstitution" Height="50px" TextMode="MultiLine" runat="server" Width="500px"></asp:TextBox>
                                         <span style="font-weight: bold; font-size: larger; color: #f00;vertical-align: top">*</span></td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style3" colspan="4">



                                           <asp:Panel ID="pnlResult" runat="server" GroupingText="Result">



<table border="1" class="auto-style8" style="mso-yfti-tbllook: 480; mso-padding-alt: 0in 5.4pt 0in 5.4pt; mso-border-insideh: none; mso-border-insidev: none; text-autospace: none; margin-left:10px">
                                             <tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:.25in;mso-height-rule:
  exactly;">
                                    <td rowspan="2" style="border-top:1.0px solid #000000;border-right: 1.0px solid #000000; border-bottom: 1.0px solid #000000; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; mso-height-rule:exactly; text-align: center; border-left-style: none; border-left-width: medium;  border-top-width: medium;"  class="auto-style16">
                                        <p class="MsoNormal">
                                            <b>SSC/<br /> 
O-Level
</b>
                                           

                                        </p>
                                    </td>
                                    <td style="border-top:1.0px solid #000000;border-right: 1.0px solid #000000; border-bottom: 1.0px solid #000000; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; mso-height-rule:exactly; text-align: center; border-left-style: none; border-left-width: medium;  border-top-width: medium;" class="auto-style17">
                                        <p class="MsoNormal">
                                           <b style="mso-bidi-font-weight:normal">SSC/O-Level</b> </p>
                                    </td>
                                                 <td style="border-top:1.0px solid #000000;border-right: 1.0px solid #000000; border-bottom: 1.0px solid #000000; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; mso-height-rule:exactly; text-align: center; border-left-style: none; border-left-width: medium;  border-top-width: medium;"  width="252">
                                        <p class="MsoNormal">
                                           <b style="mso-bidi-font-weight:normal">Year</b> </p>
                                    </td>
                                                 <td style="border-top:1.0px solid #000000;border-right: 1.0px solid #000000; border-bottom: 1.0px solid #000000; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; mso-height-rule:exactly; text-align: center; border-left-style: none; border-left-width: medium;  border-top-width: medium;"  width="252">
                                        <p class="MsoNormal">
                                           <b style="mso-bidi-font-weight:normal">Roll Number</b> </p>
                                    </td>
                                                 <td style="border-top:1.0px solid #000000;border-right: 1.0px solid #000000; border-bottom: 1.0px solid #000000; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; mso-height-rule:exactly; text-align: center; border-left-style: none; border-left-width: medium;  border-top-width: medium;"  width="252">
                                        <p class="MsoNormal">
                                           <b style="mso-bidi-font-weight:normal">Registration Number</b> </p>
                                    </td>

                                    <td style="border-top:1.0px solid #000000;border-right: 1.0px solid #000000; border-bottom: 1.0px solid #000000; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; mso-height-rule:exactly; text-align: center; border-left-style: none; border-left-width: medium;  border-top-width: medium;"  width="324">
                                        <p class="MsoNormal">
                                           <b> GPA</b></p>
                                    </td>



                                           



                                </tr>
                                <tr style="mso-yfti-irow:2;height:.25in;mso-height-rule:exactly;">
                                    <td style="border-right: 1.0px solid #000000; border-bottom: 1.0px solid #000000; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; mso-height-rule:exactly; text-align: center; border-left-style: none; border-left-width: medium; border-top-style: none; border-top-width: medium;" class="auto-style17">
                                       





            
                     <asp:DropDownList ID="ddlSSC" runat="server"  Width="100px">

                     <asp:ListItem>SSC</asp:ListItem>
                     <asp:ListItem>O-Level</asp:ListItem>
                 </asp:DropDownList>
                                        
                       <span style="font-weight: bold; font-size: larger; color: #f00;vertical-align: top">*</span>                                    
                     




                                    </td>
                                    <td style="border-width: medium 1.0px 1.0px medium; border-style: none solid solid none; width:189.0pt; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; height:.25in; mso-height-rule:exactly; border-right-color: #000000; border-bottom-color: #000000;text-align: center;" width="252">
                                       
                                                    <asp:TextBox ID="txtYear" runat="server" Width="100px"></asp:TextBox>
        <span style="font-weight: bold; font-size: larger; color: #f00;vertical-align: top">*</span>

                                    </td>
                                    <td style="border-width: medium 1.0px 1.0px medium; border-style: none solid solid none; width:189.0pt; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; height:.25in; mso-height-rule:exactly; border-right-color: #000000; border-bottom-color: #000000;text-align: center;" width="252">
                                       
                                                    <asp:TextBox ID="txtRoll" runat="server" Width="100px"></asp:TextBox>
        <span style="font-weight: bold; font-size: larger; color: #f00;vertical-align: top">*</span>
                                    </td>

                                    <td style="border-width: medium 1.0px 1.0px medium; border-style: none solid solid none; width:189.0pt; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; height:.25in; mso-height-rule:exactly; border-right-color: #000000; border-bottom-color: #000000;text-align: center;" width="252">
                                                    <asp:TextBox ID="txtRegiNo" runat="server" Width="100px"></asp:TextBox>
        <span style="font-weight: bold; font-size: larger; color: #f00;vertical-align: top">*</span>
                                    </td>
                                    <td style="border-width: medium 1.0px 1.0px medium; border-style: none solid solid none; width:189.0pt; mso-border-left-alt:solid windowtext .5pt;
  padding:0in 5.4pt 0in 5.4pt; height:.25in; mso-height-rule:exactly; border-right-color: #000000; border-bottom-color: #000000;text-align: center;" width="252">
                                                   <asp:TextBox ID="txtGPA" runat="server" Width="100px"></asp:TextBox>
        <span style="font-weight: bold; font-size: larger; color: #f00;vertical-align: top">*</span>
                                    </td>



                                    


                                </tr>

                                         </table>
                                               </asp:Panel>
</td>
                                
                                        
                                    
                                 </tr>
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>
                                  <tr>
                                     <td class="auto-style4" colspan="4" style="text-align: right; color: #FF0000; font-size: small">

                                         Fill-up the necessary box's(* marked) information</td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style4">

                              <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" Width="100px" /></td>
                                     <td class="auto-style2" colspan="3">

                             <asp:Button ID="btnClear" runat="server" Text="Clear" Height="36px" OnClick="btnClear_Click" Width="100px" /></td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style4">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style4" colspan="4">

                                         Last Date of Registration: 11th September, 2014 
                                     </td>
                                 </tr>


                    
                                


                    
                                 </table>


                 <br />
               

                 </div>


              
          </form>

    </div>
</asp:Content>
