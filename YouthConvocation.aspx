<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="YouthConvocation.aspx.cs" Inherits="Eastern_Uni.YouthConvocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300' rel='stylesheet' type='text/css'/>
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bjqs-1.3.min.js"></script>



    
   
    
    <style type="text/css" media="screen">
        body
         {
            background:-webkit-gradient(linear, 0 0, 100% 100%, from(#000) to (#fff));
         }
        .auto-style6 {
            width: 780px;
        }
    </style>



    <script class="secret-source">
        jQuery(document).ready(function ($) {

            $('#banner-slideNew').bjqs({
                animtype: 'slide',
                height: 570,
                width: 750,
                responsive: true,
                randomstart: true

            });

        });
          </script>
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






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('image/Header/PhotoGallery.jpg')">
             
                 <form id="Form1" runat="server" >
              
               <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                     <table >
                    <tr style="text-align: center">
                        <td class="auto-style6">
                            <asp:Label ID="lblAlbum_Name" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="18pt"></asp:Label>

                        </td>
                    </tr>

                    

                </table>
                   <div id="banner-slideNew" style="border:solid medium white; left:10px;">

              <!-- start Basic Jquery Slider -->


               <ul class="bjqs">




                    <li>
                       
                       <img id="ss_1" runat="server" /></li>
                   <li>
                       <img id="ss_2" runat="server"  /></li>
                   <li>
                       <img id="ss_3" runat="server"  /></li>

                   <li>
                       <img id="ss_4" runat="server"  /></li>
                   <li>
                       <img id="ss_5" runat="server"  /></li>
                   <li>
                       <img id="ss_6" runat="server"  /></li>
                   
                    
                    <li>
                       
                       <img id="ss_7" runat="server" /></li>
                   <li>
                       <img id="ss_8" runat="server"  /></li>
                   <li>
                       <img id="ss_9" runat="server"  /></li>

                   <li>
                       <img id="ss_10" runat="server"  /></li>
                  <li>
                       <img id="ss_11" runat="server"  /></li>
                   <li>
                       <img id="ss_12" runat="server"  /></li>
                      

               </ul>
              <!-- end Basic jQuery Slider -->

          </div> 

       



  
                     <table style="width: 778px">
                         <tr>
                             <td>





                     <asp:Button ID="Button1" runat="server" Text="" Height="120px" style="background-image: url('image/YouthConvocation/btn1.jpg')  ; margin-left: 50px" Width="150px" BackColor="#7E9DAF" Font-Bold="True" OnClick="Button1_Click " />
                     
                             </td>
                             <td>

                      <asp:Button ID="Button2" runat="server" Text="" Height="120px" style="background-image: url('image/YouthConvocation/btn2.jpg')  ;margin-left: 50px" Width="150px" BackColor="#7E9DAF" Font-Bold="True"  OnClick="Button2_Click" />
                     
                             </td>
                             <td>

                      <asp:Button ID="Button3" runat="server" Text="" Height="120px" style="background-image: url('image/YouthConvocation/btn3.jpg')  ;margin-left: 50px" Width="150px" BackColor="#7E9DAF" Font-Bold="True"   OnClick="Button3_Click" />
                    
                             </td>

                         </tr>


                         <tr>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 <asp:Button ID="lblAlbum1" runat="server" Text="Youth Convention(part 1)" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum1_Click" Width="215px" />
                                
                                 </td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 <asp:Button ID="lblAlbum2" runat="server" Text="Youth Convention(part 2)" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum2_Click" Width="215px" />
                                </td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                <asp:Button ID="lblAlbum3" runat="server" Text="Youth Convention(part 3)" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum3_Click" Width="215px"/>
                                
                             </td>

                         </tr>


                         <tr>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 &nbsp;</td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 &nbsp;</td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 &nbsp;</td>

                         </tr>
                         <tr>
                             <td>





                     <asp:Button ID="Button4" runat="server" Text="" Height="120px" style="background-image: url('image/YouthConvocation/btn4.jpg')  ; margin-left: 50px" Width="150px" BackColor="#7E9DAF" Font-Bold="True" OnClick="Button4_Click " />
                     
                             </td>
                             <td>

                      <asp:Button ID="Button5" runat="server" Text="" Height="120px" style="background-image: url('image/YouthConvocation/btn5.jpg')  ;margin-left: 50px" Width="150px" BackColor="#7E9DAF" Font-Bold="True"  OnClick="Button5_Click" />
                     
                             </td>
                             <td>

                                 &nbsp;</td>

                         </tr>


                         <tr>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 <asp:Button ID="lblAlbum4" runat="server" Text="Youth Convention(part 4)" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum4_Click" Width="215px" />
                                
                                 </td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 <asp:Button ID="lblAlbum5" runat="server" Text="Youth Convention(part 5)" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum5_Click" Width="215px" />
                                </td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 &nbsp;</td>

                         </tr>

                     </table>
                     
                     
                      
                </form>

            </div>


            
        </div>


    </div>


</asp:Content>
