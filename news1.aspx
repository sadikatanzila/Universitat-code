<%@ Page Title="EU News" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="news1.aspx.cs" Inherits="Eastern_Uni.news1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />

  

    <style type="text/css">
        .auto-style1 {
            width: 164px;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
            width: 38px;
        }
        .auto-style4 {
            width: 763px;
        }
        .auto-style5 {
            width: 148px;
        }
        .auto-style6 {
            width: 163px;
        }
        .auto-style7 {
            width: 203px;
        }



        .auto-style8 {
            width: 38px;
            height: 32px;
        }
        .auto-style9 {
            width: 164px;
            height: 32px;
        }
        .auto-style10 {
            width: 247px;
            height: 32px;
        }



        .auto-style11 {
            width: 38px;
            height: 23px;
        }
        .auto-style12 {
            width: 148px;
            height: 30px;
        }
        .auto-style13 {
            width: 163px;
            height: 30px;
        }
        .auto-style14 {
            width: 38px;
            height: 30px;
        }



        .auto-style17 {
            width: 203px;
            height: 33px;
        }
        .auto-style19 {
            width: 148px;
            height: 33px;
        }
        .auto-style20 {
            width: 38px;
            height: 33px;
        }



        .auto-style21 {
            width: 23px;
        }
        .auto-style22 {
            width: 717px;
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
                            
                           <!-- <!-- <li><a href="Academics_UP.aspx"><span>Undergraduate Programs</span></a></li> --> -->
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
                   
                    <br /><br /><br />
                    <table>
                        <tr>
                            <td class="auto-style21">

                            </td>
                            <td class="auto-style22" style="font-size: 25px; text-align: right; font-weight: bold">
                                100% Waiver for Freedom Fighter's Children
                            </td>

                        </tr>
                                      </table>
                    <br /><br />
                    <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="Serial_no" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%">
                                                <Columns>


                                                        <asp:TemplateField  ItemStyle-Width="95%" HeaderText="Breaking News">
                                                        <ItemTemplate>
                                                           <br />
                                                            <asp:Label ID="lbName" runat="server" Text='<%#Bind("headline") %>' style="font-size:medium;font-weight: bold; "></asp:Label>
                                                            <br /><br />
                                                            
                                                            <hr />
                                                            
                                                            <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("detail") %>'></asp:Label>
                                                           
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="Center" Font-Size="Larger" />
                                                        </asp:TemplateField>

                                                       

                                               

                                                    

                                                    

                                                </Columns>
                                                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                 <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                    
                    
                    <br /><br />




                   
                    As per the decision of the BOT held on 13 September 2011 the following students have been granted 100% waiver on tuition fee as children of Freedom Fighters according to the Private University Act 2010. These waivers will be effective from Summer Semester 2011 under the following conditions:     
                    <br />
                    <br />
                          1. Minimum CGPA of 2.50 must be maintained at EU.<br />
                          2. Waiver will not be applicable for the retake courses.<br />
                    <br />
&nbsp;
                    <table border="1" style="margin-left: 55px; border-style: none; border-color: inherit; border-width: medium;  border-collapse: collapse;">
                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style8">

                                Sl


                            </td>
                            <td class="auto-style9">
                                Program
                                </td>
                            <td class="auto-style10">
                                Names & ID
                            </td>
                        </tr>
                       

                        <tr style="background-color: #CDCDDA;">
                            <td class="auto-style3" style="text-align: center">

                                1.</td>
                            <td class="auto-style1" rowspan="2" style="text-align: center">

                                MBA (Regular)</td>
                            <td class="auto-style2" style="text-align: center">

                                Farhana Haque 
                                <br />
                                112600016</td>
                        </tr>
                       

                        <tr style="background-color: #CDCDDA;">
                            <td class="auto-style3" style="text-align: center">

                                2.</td>
                            <td class="auto-style2" style="text-align: center">

                               Md. Masum Khan 
                                <br />
                                112600027</td>
                        </tr>
                       

                        <tr style="background-color: #CCE3EC;">
                            <td class="auto-style3" style="text-align: center">

                                3.</td>
                            <td class="auto-style1" rowspan="2" style="text-align: center">

                                M.A in ELT</td>
                            <td class="auto-style2" style="text-align: center">

                               Jobaer Hossain 
                                <br />
                                112500016</td>
                        </tr>
                       

                        <tr style="background-color: #CCE3EC;">
                            <td class="auto-style3" style="text-align: center">

                                4.</td>
                            <td class="auto-style2" style="text-align: center">

                                Mohammad Shiblezzaman 
                                <br />
                                112500010</td>
                        </tr>
                       

                        <tr style="background-color: #CDCDDA;">
                            <td class="auto-style3" style="text-align: center">

                                5.</td>
                            <td class="auto-style1" style="text-align: center">

                                EEE (evening)</td>
                            <td class="auto-style2" style="text-align: center">

                                Md. Saroarul Islam  
                                <br />
                                112800018</td>
                        </tr>
                       

                        <tr style="background-color: #CCE3EC;">
                            <td class="auto-style3" style="text-align: center">

                                6.</td>
                            <td class="auto-style1" style="text-align: center">

                                LL.B (Hons.)</td>
                            <td class="auto-style2" style="text-align: center">

                               Kazi Alimuzzaman 
                                <br />
                                112100018</td>
                        </tr>
                       

                    </table>

                    <br /><br /> <br /><br />

                    As per the decision of the BOT held on 13 September 2011 the following student has been granted 100% waiver on tuition fee as child of Freedom Fighter according to the Private University Act 2010. This waiver will be effective from Fall Semester 2011 under the following conditions:
                    <br /><br />
                    1. Minimum CGPA of 2.50 must be maintained at EU.<br />
2. Waiver will not be applicable for the retake courses.<br />
                    <br />
&nbsp;
                    <table border="1" style="margin-left: 55px; border-style: none; border-color: inherit; border-width: medium;  border-collapse: collapse;">
                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style14">

                                Sl


                            </td>
                            <td class="auto-style12">
                                Program
                                </td>
                            <td class="auto-style13">
                                Names & ID
                            </td>
                        </tr>
                       

                        <tr style="font-weight: normal; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3">

                                1</td>
                            <td class="auto-style5">
                                EEE</td>
                            <td class="auto-style6">
                                Md. Faisal<br />
                                113800010</td>
                        </tr>
                       

                                               
                       

                    </table>





<br /><br /><br /><br />
                    As per the decision of the BOT held on 13 September 2011 the following students have been granted 100% waiver on tuition fee as children of Freedom Fighters according to the Private University Act 2010. These waiver will be effective from Spring Semester 2012 under the following conditions:
 <br /><br />
 
1. Minimum CGPA of 2.50 must be maintained at EU.<br />
      2. Waiver will not be applicable for the retake courses.


                    <br />
                    <br />

                    <table border="1" style="margin-left: 55px; border-style: none; border-color: inherit; border-width: medium;  border-collapse: collapse;">
                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style3">

                                Sl


                            </td>
                            <td class="auto-style5">
                                Program
                                </td>
                            <td class="auto-style6">
                                Names & ID
                            </td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                1.</td>
                            <td class="auto-style5" style="font-weight: normal">

                                LLB (Hons.)</td>
                            <td class="auto-style6" style="font-weight: normal">

                               Shazzat Hossain<br />
121100029


                            </td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style3" style="font-weight: normal">

                                2.</td>
                            <td class="auto-style5" style="font-weight: normal">

                               B.A. (Hons.) in English</td>
                            <td class="auto-style6" style="font-weight: normal">

                               Md. Jesmul Hassan<br />
121300025
 </td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                3.</td>
                            <td class="auto-style5" style="font-weight: normal" rowspan="2">

                                MBA (Regular)</td>
                            <td class="auto-style6" style="font-weight: normal">

                                Ashraful Alam<br />121600009</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                4.</td>
                            <td class="auto-style6" style="font-weight: normal">

                                Md. Nayim- Uz – Zaman<br />
121600045
</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style3" style="font-weight: normal">

                                5.</td>
                            <td class="auto-style5" style="font-weight: normal">

                                EEE(Evening)</td>
                            <td class="auto-style6" style="font-weight: normal">

                                Md. Shakhaoat Hossain<br />
121800059
</td>
                        </tr>
                    </table>

                    <br />

<br />

As per the decision of the BOT held on 13 September 2011 the following students have been granted 100% waiver on tuition fee as children of Freedom Fighters according to the Private University Act 2010. These waiver will be effective under the following conditions:
 
 <br />

<br />
 
1. Minimum CGPA of 2.50 must be maintained at EU.<br />

      2. Waiver will not be applicable for the retake courses.
                    <br />
                    <br />
                    <br />
<table border="1" style="margin-left: 55px; border-style: none; border-color: inherit; border-width: medium;  border-collapse: collapse;">
                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style20">

                                Sl


                            </td>
                            <td class="auto-style19">
                                Program
                                </td>
                            <td class="auto-style17">
                                Names & ID
                            </td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                1.</td>
                            <td class="auto-style5" style="font-weight: normal" rowspan="2">

                                LLB (Hons.)</td>
                            <td class="auto-style7" style="font-weight: normal">

                              Md. Rafikul Islam<br />
103100042



                            </td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                2.</td>
                            <td class="auto-style7" style="font-weight: normal">

                                Zinia Afrin<br />
121100004
</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style3" style="font-weight: normal">

                                3.</td>
                            <td class="auto-style5" style="font-weight: normal">

                               BBA</td>
                            <td class="auto-style7" style="font-weight: normal">

                               Shahnaz Shukria<br />
122200103

 </td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                4.</td>
                            <td class="auto-style5" style="font-weight: normal" rowspan="3">

                                EEE (Evening)</td>
                            <td class="auto-style7" style="font-weight: normal">

                             Md. Saddam Hossain Zobaer<br />
122800008
</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                5.</td>
                            <td class="auto-style7" style="font-weight: normal">

                               Md. Nurul Islam<br />122800022</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                6.</td>
                            <td class="auto-style7" style="font-weight: normal">

                                Md. Shohel Rana Sumon<br />
122800039
</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style3" style="font-weight: normal">

                                7.</td>
                            <td class="auto-style5" style="font-weight: normal" rowspan="2">

                                MBA (Regular)</td>
                            <td class="auto-style7" style="font-weight: normal">

                                Md. Tuhidul Islam<br /> 122600047
</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CCE3EC;">
                            <td class="auto-style3" style="font-weight: normal">

                                8.</td>
                            <td class="auto-style7" style="font-weight: normal">

                                Md. Abdullah Al Nurul Ahad<br />
122600029
</td>
                        </tr>
                       

                        <tr style="font-weight: bold; text-align: center;background-color: #CDCDDA;">
                            <td class="auto-style3" style="font-weight: normal">

                                9.</td>
                            <td class="auto-style5" style="font-weight: normal">

                                MBA (Executive)</td>
                            <td class="auto-style7" style="font-weight: normal">

                                Ismat Jarin<br />
122700014
</td>
                        </tr>
                       

                        </table>
<br />
                </form>

            </div>


            
        </div>


    </div>


</asp:Content>
