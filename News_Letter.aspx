<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="News_Letter.aspx.cs" Inherits="Eastern_Uni.News_Letter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    


    <style type="text/css">
        .auto-style2 {
            width: 732px;
        }
        .auto-style3 {
            width: 16px;
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

                    <br />
                  <br />
               
               
                    
                <table>
    <tr>
        <td class="auto-style1">

        </td>
        <td class="auto-style5" style="text-align: right">
            <p style="font-size:20px;color:#000000; font-weight: bold; width: 718px;">

                     
                      Newsletter of Eastern University

                    </p>
        </td>

    </tr>

</table>
                <br />
                <br />
                
                


                <form id="Form1" runat="server">

               
                    <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="Serial_no" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%" style="margin-left: 15px" OnPageIndexChanging="gvDepartment_PageIndexChanging" ShowHeader="False">
                                                <Columns>


                                                        <asp:TemplateField  HeaderText="Faculty of Arts"  ItemStyle-Width="99%">
                                                        <ItemTemplate>
                                                             <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("Semister") %>'></asp:Label>
                                                            <br />
                                                             <asp:Image ID="Image2" runat="server"  ImageUrl='<%# Bind("PictureLocation") %>'  />

                                                            
                                                            <asp:LinkButton runat="server" ID="lbFolderItem" Text='<%#Eval("PictureLocation")%>'  
                                                              CommandName="OpenFolder" CommandArgument='<%# Eval("PictureLocation") %>' >
                                                                </asp:LinkButton>
                                                        </ItemTemplate>

                                                            
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="right" />
                                                        </asp:TemplateField>

                                                       

                                              

                                                    

                                                    

                                                </Columns>
                                                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#A3A5BA" Font-Bold="True" ForeColor="#000000" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>






</form>



            </div>



        </div>


        
        </div>
</asp:Content>
