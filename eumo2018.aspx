<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="eumo2018.aspx.cs" Inherits="Eastern_Uni.eumo2018" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />

<script src="jquery-1.3.2.min.js" language="javascript" type="text/javascript"></script>
<script src="jquery-blink.js" language="javscript" type="text/javascript"></script>
 
<script type="text/javascript" language="javascript">

    $(document).ready(function () {
        $('.blink').blink(); // default is 500ms blink interval.
        //$('.blink').blink({delay:100}); // causes a 100ms blink interval.
    });

</script>



    <style type="text/css">
        .auto-style2 {
            width: 261px;
        }
        .auto-style3 {
            width: 3%;
        }
    </style>


    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
        






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/ContentBannerEUMO.jpg')">

                <form id="Form1" runat="server">
                    <br /><br />
             <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                     </td>
                     <td style="width:15%">

                         
                          </td>
                     <td colspan="2">

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 10px; width: 620px;">

                    

                   
                           <asp:Label ID="Label1" runat="server"></asp:Label>
                  <br /> <strong style="font-size: 16px">(Nationwide - For H.S.C. / A-Level / equivalent students)
                        <br />    Friday, 16th March, 2018</strong>  
                           </p></td>
                 </tr>


                 </table>

                      <table style="width:99%; height: 76px;">
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             &nbsp;</td>
                     </tr>
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             <strong style="font-size: 16px;color:blue;">
                             Organized by the Department of Computer Science and Engineering<br />
&nbsp;Eastern University, Dhaka</strong>
                         </td>
                     </tr>
                          </table>
                    <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td colspan="2" rowspan="3">

                          <div class="smallbox" style="margin-top:0px; color: #ABC9D8; width: 180px;">
                              

                  <a href="Photo_MathOlym.aspx" ><img src="image/Photo_MathOlym/NationalPhy.jpg" style="height: 134px; width: 200px; margin-top: 0px;" /></a>
                  <br />  <a href="Photo_MathOlym.aspx" style="color: blue; font-weight: bold; font-size: 15px;">Photo Gallery</a>

                </div>

                     </td>
                     <td style="width:80%;text-align: right;">

                      
                     
                         <a href="SelectedRegisteredEUMO.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="color:blue; font-weight: bold;"><span>List of Registered Students</span></a> 
                    
                      
                       <!--   <br />
                           <a href="RegistrationEUMO.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="color:blue; font-weight: bold;"><span>Click here for Online Registration</span></a> 
                 
                        -->
                          <!--  <br />   <strong style="font-size: 15px"> EUMO 2014: </strong>
                         <asp:LinkButton ID="QuestionsLink" runat="server" Text="Questions" Style="color:blue;font-size: 14px;" OnClick="QuestionsLinkpdf_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" Font-Bold="True" />
                       <b>   &nbsp; ||&nbsp;</b>
                           <asp:LinkButton ID="ResultLink" runat="server" Text="Results" Style="color:blue;font-size: 14px;" OnClick="ResultLinkpdf_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" Font-Bold="True" />
                         -->

</td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td style="width:80%; text-align: right; font-weight: bold; font-size: 16px; vertical-align: top;" rowspan="2">

                          Download Registration form:
                           
                               <br />
                            
                         <strong style="font-size: 15px"> Individual: </strong>
                         
                          <asp:LinkButton ID="LinkButtonDownloadPdf" runat="server" Text="PDF" Style="color:blue;font-size: 14px;"  OnClick="LinkButtonDownloadPdf_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"/>
                         <asp:LinkButton ID="LinkButtonDownloaddoc" runat="server" Text="/ DOC" Style="color:blue;font-size: 14px;" OnClick="LinkButtonDownloaddoc_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"/>
                        
                         
                         &nbsp; ||&nbsp;
                          <strong style="font-size: 15px"> Group: </strong>
                           
                          <asp:LinkButton ID="LinkButtonDownload_Group" runat="server" Text="PDF" Style="color:blue;font-size: 14px;" OnClick="LinkButtonDownload_Group_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"/>
                       <asp:LinkButton ID="LinkButtonDownload_Groupdoc" runat="server" Text="/ DOC" Style="color:blue;font-size: 14px;" OnClick="LinkButtonDownload_Groupdoc_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"/>
                       
                            
                          <!--  <a href="image/MathOlympiad/Group_Registration.pdf" style="color: #0000FF; font-weight: bold; " onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">Group Registration Form</a>
                          -->
                        <br />
                              <span class="blink" style="font-size: 15px;color:red; font-weight: bold;">                    
                       Date extended till Tuesday 13th March, 2018                             
                        </span>
</td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td colspan="3">

                         <p  style="border: thin solid #000000; text-align:center; color:blue; font-weight: bold; font-style: normal; margin-left: 5px; font-size: large; background-color: #C4C4C4;"> <b>-: Call for Participation :-</b>    
                  </p></td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td colspan="3">

                         <br />
                         Department of Computer Science and Engineering of Eastern University, Dhaka is going to organize the 
                          <b>5th Eastern University Math Olympiad, EUMO 2018 on the 16th March, 2018 (Friday)</b> 
                          to be held in Eastern University premises, House No. 26, Road No. 5, Dhanmondi R/A, Dhaka 1205. A good number of scientists, technologists and researchers from different arena will be attending the event. 
<br /><br />
The aim of the Math Olympiad is to create the opportunity for our young talented students in the country to shine and show their mathematical and analytical talents and to create a national awareness for the development of math skills. We are inviting all the talented students studying in different public and private colleges and interested in math to participate in the Olympiad. Only top 300 students will be allowed to sit for the competition. The Panel of Judges will finalize the list of contestants for the Olympiad. All the concerned students are encouraged to participate in the competition. 
                          
                         <asp:Label ID="Label3" runat="server" Text="Last date of registration is Tuesday, 13th March, 2018." Font-Bold="True" ForeColor="Red"></asp:Label>
                         <br /><br />
                               <p style="font-size: 16px; color: #0000FF"  ><b>Prizes:</b> </p> 

                         <table>
                             <tr>
                                 <td class="auto-style2">
                                     <b>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:Symbol;"><span style=""> 	</span></span>&nbsp;&nbsp; 	Champion &nbsp;&nbsp; 
                                </b>
                                          </td>
                                 <td>
                                     <b> :&nbsp;&nbsp;  30,000 Tk   </b>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style2">
                                      <b>  &nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:Symbol;"><span style=""> 	</span></span>&nbsp;&nbsp; 	1st Runner Up
                                          </b></td>
                                 
                                 <td>
                                        <b> :&nbsp;&nbsp;  20,000 Tk</b></td>
                             </tr>
                             <tr>
                                 <td class="auto-style2">
                                      <b>  &nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:Symbol;"><span style=""> 	</span></span>&nbsp;&nbsp; 	2nd Runner Up &nbsp;&nbsp;
                                          </b></td>
                                 
                                 <td>
                                       <b>  : &nbsp;&nbsp;10,000 Tk</td>
                             </tr>
                             <tr>
                                 <td class="auto-style2">
                                  <b>   &nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:Symbol;"><span style=""> 	</span></span>&nbsp;&nbsp; 	7 Honorary Mentions &nbsp;&nbsp; 
                                      </b>
                                 </td>
                                 <td>
                                  <b>   :  &nbsp;&nbsp;5,000 Tk (For each) </b></td>
                             </tr>
                         </table>

  &nbsp;&nbsp; 
 <br /> 


 <p style="font-size: 16px; color: #0000FF"  ><b>Patrons:</b> </p> 
                          <table style="margin-left:50px;">
                              <tr>
                                  <td>
                                       <strong>Prof. Dr. Muhammed Zafar Iqbal</strong>
                                       <br />
                                       Dept. of CSE, SUST                                    

 

                                       <br />
                                       <br />
                                       <strong>Prof. Dr. M. Kaykobad

</strong>
                                       <br />
                                       Dept. of CSE, BUET

 

                                       <br />
                                       <br />
                                       <strong>Engr. Kh. Mesbah Uddin Ahmed

</strong>
                                       <br />
                                       Chairman, Board of Trustees (BOT), Eastern University   

 

                                       <br />
                                       <br />
                                       <strong>Prof. Dr. Md. Nurul Islam</strong>
                                       <br />
                                       Vice Chancellor, Eastern University </td>
                              </tr>
                          </table>

                         
                        <br />   

                           <p style="font-size: 16px; color: #0000FF"  ><b>Convener:</b> </p> 
                          <table style="margin-left:50px;">
                              <tr>
                                  <td>
                                        <b>Prof. Dr. Md. Mahfuzur Rahman,<br />
                                            Dean, Faculty of Engineering & Technology </b><br />
                          Eastern University <br />
                          Mobile: 01716479810, 01556630474
                                        <br />
                                        Email: chairperson_cse@easternuni.edu.bd<br />
                          
                          web: www.easternuni.edu.bd 
                                  </td>
                              </tr>
                          </table>
                         <br />
                         <p style="font-size: 16px; color: #0000FF">
                             <b>Program Schedule:</b>
                         </p>
                        
                         <table style=" width: 520px; margin-left:25px; height: 347px;">
                             <tr>
                                 <td style=" font-size: large; font-weight: bold; font-style: italic;">

                                     First Session</td>
                                 <td style=" font-size: large; font-weight: bold; font-style: italic;">

                                 </td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     09:00 am - 09:45 am</td>
                                 <td style=" font-weight: bold;">

                                     Participating student&#39;s reporting time</td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     09:45 am - 10:00 am</td>
                                 <td style=" font-weight: bold;">

                                     Taking seat in the exam halls</td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     10:00 am - 12:00 pm</td>
                                 <td style=" font-weight: bold;">

                                     Exam</td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     12:00 pm - 02:00 pm</td>
                                 <td style=" font-weight: bold;">

                                     Lunch and Prayer break</td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     02:00 pm - 03.30 pm</td>
                                 <td style=" font-weight: bold;">

                                     Cultural program</td>
                             </tr>
                             <tr>
                                 <td style=" width:30%">

                                     &nbsp;</td>
                                 <td style=" width: 70%">

                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td style="width:30%; font-size: large; font-weight: bold; font-style: italic;">

                                     Second Session</td>
                                 <td style=" width: 70%">

                                 </td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     03:30 pm - 03:35 pm</td>
                                 <td style=" font-weight: bold;">

                                     Inauguration</td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     03:35 pm - 03:40 pm</td>
                                 <td style=" font-weight: bold;">

                                     Recitation from the holy Qur&#39;an</td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     03:40 pm - 04:30 pm</td>
                                 <td style=" font-weight: bold;">

                                     Speech and creast exchange</td>
                             </tr>
                             <tr>
                                 <td style=" font-weight: bold;">

                                     04:30 pm - 05:00 pm</td>
                                 <td style=" font-weight: bold;">

                                     Award ceremony</td>
                             </tr>
                         </table>
                       <!--  <table border="1"   class="auto-style6" style=" width: 707px;">
                             <tr style="background-color: #CDCDDA;" >
                                  <td style="border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;font-weight: bold;" class="auto-style1">
                                     &nbsp;&nbsp;&nbsp;&nbsp;Time
                                  </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;font-weight: bold;height:25.3pt">
                                    Program
                                      </td>
                              </tr>
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;" class="auto-style1">
                                     &nbsp;&nbsp;&nbsp;&nbsp;9:00 am
                                  </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">
                                    Reporting
                                      </td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;" class="auto-style1">

                                      &nbsp;&nbsp;&nbsp;&nbsp;10:00 am – 12:00 pm</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">
                                      Math Olympiad
                                      </td>
                              </tr>
                              
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;" class="auto-style1">
                                      &nbsp;&nbsp;&nbsp;&nbsp;12:00 pm – 15:00 pm
                                      </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Prayer, Lunch Break, Question/Answer Sesion and Evaluation </td>
                              </tr>
                              
                              <tr style="background-color: #CDCDDA;" >
                                  <td style="border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;" class="auto-style1">
                                      &nbsp;&nbsp;&nbsp;&nbsp;15: 30 pm
                                      </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Prize Giving Ceremony</td>
                              </tr>
                              
                              
                              
                             
                              
                              </table>

                         -->
                         <br />
                          
                          <br />Problems in the Olympiad will be based on intermediate level mathematics (having special relevance to SSC/O-Level math.). Problem types will require analytical ability on the part of the contestant.
                         <br />
                          <br />

                         <p style="font-size: 16px; color: #0000FF"  ><b>Rules & Regulations:</b> </p> 

 &nbsp;&nbsp;&nbsp;&nbsp;1. H.S.C. / A-Level / equivalent students are eligible for registration.
                          <br />
 <br />&nbsp;&nbsp;&nbsp;&nbsp;2.	After registration, participant will be able to print the admit card. 
<br />
 <br />&nbsp;&nbsp;&nbsp;&nbsp;3.	To attend in the Math Olympiad, participant must bring this admit card and their college ID Card or permission slip with photograph authorized by the Principal/Head of the respective college/institution.
   <br />
 <br />&nbsp;&nbsp;&nbsp;&nbsp;4.	The Olympiad will judge analytical skill and problem solving ability of the students. The Panel of Judges is solely responsible for accepting or rejecting the answers. Their decisions are final. 
                          <br />
 <br />&nbsp;&nbsp;&nbsp;&nbsp;5.	Each contestant has to contest individually. 
                          <br />

 
                 
 <br />&nbsp;&nbsp;&nbsp;&nbsp;6.	Use of laptops , mobile phone and any other electronic devices are prohibited during the Olympiad. <br /> 
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;7. List of participants will be finalized by the organizing committee.
                          <br /><br />
                           <p style="font-size: 16px; color: #0000FF"  ><b>Registration:</b></p>
&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:Symbol;"><span style="">  </span></span> Interested contestants should  <asp:Label ID="Label4" runat="server" Text="register on or before Tuesday 13th March, 2018" Font-Bold="True" ForeColor="Red"></asp:Label>
                          <br />
 <br />&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:Symbol;"><span style="">  </span></span> <b>Online Registration System</b> as well as <b>downloadable Registration</b> form are available at: 
                          <br />
                     <a href="RegistrationEUMO.aspx" style="font-weight: bold; font-size:small; color: #0000FF;" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"><span>www.easternuni.edu.bd/RegistrationEUMO.aspx</span></a>
                          <br />
 <br />&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:Symbol;"><span style="">  </span></span> The registration form is to be submitted to:
                          <br />
                          <table style="margin-left:50px">
                              <tr>
                                  <td>
                                       &nbsp;&nbsp;Mr. Mozammel Hoque <br />
&nbsp;&nbsp;Senior Executive (Admin) <br />
&nbsp;&nbsp;Faculty of Engineering and Technology <br />
&nbsp;&nbsp;Eastern University <br />
&nbsp;&nbsp;House No. 15/2, Road No. 3, Dhanmondi R/A, Dhaka -1205 <br />
&nbsp;&nbsp;Ph: +88029677523(Ext-0) <br />
&nbsp;&nbsp;Fax: 		02-9675981 <br />
&nbsp;&nbsp;Mobile:	01716479810<br />
&nbsp;&nbsp;Email: 	eumo@easternuni.edu.bd 
                          <br />
                          <br />
<b>Selected participants will be informed on Monday, 14th March, 2018 through email/Phone/SMS. </b> <br />
                                  </td>
                              </tr>
                          </table>
                          
                          
                          
                          
                          
<!--

 <p style="font-size: 16px; color: #0000FF"  ><b>Advisors</b></p>
                  

&nbsp;&nbsp;&nbsp;&nbsp;1.	&nbsp;&nbsp;Prof. Dr. Muhammad Zafar Iqbal, Head, Dept of EEE, SUST<br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;2.	&nbsp;&nbsp;Prof. Dr. M. Kaykobad, Dept. of CSE, BUET 
                          <br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;3.	&nbsp;&nbsp;Mr. Abul Khair Chowdhury, Chairman, Board of Trustees, EU  
                          <br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;4.	&nbsp;&nbsp;Prof. Dr. A.K.M. Saiful Majid, Director, IBA, Dhaka University and BOT, EU<br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;5.	&nbsp;&nbsp;Prof. Dr. A.B.M. Shahidul Islam, Dhaka University and BOT, EU<br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;6.	&nbsp;&nbsp;Prof. Dr. Abdur Rab, Vice Chancellor, EU<br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;7.	&nbsp;&nbsp;Prof. Dr.  Abdul Hannan Chowdhury, Pro-Vice Chancellor, EU<br />
                          <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;8.	&nbsp;&nbsp;Mr. Muhammed Siddique Hossain, Treasurer, EU<br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;9.	&nbsp;&nbsp;Prof. Dr. Kashinath Roy, Dean, Faculty of Arts, EU<br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;10.	&nbsp;&nbsp;Prof. Dr. Sharif Nurul Ahkam , Dean, Faculty of Business Administration, EU<br />
                         <br />
&nbsp;&nbsp;&nbsp;&nbsp;11.	&nbsp;&nbsp;Prof. Dr. Aynal Haque, Advisor, Faculty of E&T, EU<br />
                          <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;12.	&nbsp;&nbsp;Prof. Dr. Md. Mortuza Ali, Faculty of E&T, EU<br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;13.	&nbsp;&nbsp;Prof. Dr. Md. Nurul Islam, Faculty of E&T, EU<br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;14.	&nbsp;&nbsp;Prof. Dr. Mirza Golam Rabbani, Faculty of E&T, EU<br />
                         <br />
&nbsp;&nbsp;&nbsp;&nbsp;15.	&nbsp;&nbsp;Prof. Dr. Borhan Uddin Khan, Advisor, Faculty of Law , EU<br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;16.	&nbsp;&nbsp;Prof. Dr. Md. Ashraf Hossain, Chairperson, Department of BA, EU 
                          <br />
                          <br />
&nbsp;&nbsp;&nbsp;&nbsp;17.	 &nbsp;&nbsp;Maj Gen Kazi Ashfaq Ahmed, psc (Retd), Registrar, Eastern University<br /><br /><br />

                        
                         <p style="color: #0000FF"><b>Convener</b></p> 

                         Dr. Md. Mahfuzur Rahman, Dean, Faculty of Engineering & Technology, Eastern University <br /><br />


 
                         -->
<br /><br />
<img src="FutureEvents/PosterEUMO_27022018.jpg"  style="width:900px; margin-left:25px"/> 
<!--
 <p style="font-size: 16px; color: #0000FF"  ><b>Organizing Committee</b></p>

                         <p style="color: #0000FF"><b>Convener</b></p> 

                         Dr. Md. Mahfuzur Rahman, Chairperson, Department of Computer Science &amp; Engineering, Eastern University <br /><br />
 
 <p style="color: #0000FF"><b>Secretary</b></p>
Md. Rashedul Amin Tuhin, Senior Lecturer, Department of Computer Science & Engineering, Faculty of Engineering & Technology, Eastern University 
<br /><br /><br />


                          <p style="font-size: 16px; color: #0000FF"  ><b>Members</b></p>

                          <table border="1"   class="auto-style6" style=" width: 707px;">
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">
                                     &nbsp;&nbsp;&nbsp;&nbsp;1.	Prof. Dr. Md. Ashraf Hossain 
                                  </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">
                                    Chairperson, DBA
                                      </td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;2.	Dr. Md. Shafiullah</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">
                                      Associate Professor & MBA Coordinator
                                      </td>
                              </tr>
                              
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">
                                      &nbsp;&nbsp;&nbsp;&nbsp;3.	Dr. Amena Ferdousi
                                      </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Associate Professor, Math </td>
                              </tr>
                              
                              <tr style="background-color: #CDCDDA;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">
                                      &nbsp;&nbsp;&nbsp;&nbsp;4.	Mr. Oli Ahad Thakur
                                      </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Proctor, EU and Asst. Prof, DBA</td>
                              </tr>
                              
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;5.	Dr. A. K. M Alamgir</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Asst. Professor, EEE </td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                       &nbsp;&nbsp;&nbsp;&nbsp;6.	Mr. Muhammad Mahfuz Hasan</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Asst. Professor, CSE </td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;7.	Mr. Mohammad Abdur Rob</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Asst. Professor , Math</td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;8.	Ms. Gulshan Khatun</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Asst. Professor, Math</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                     &nbsp;&nbsp;&nbsp;&nbsp;9.	Mr. Arafat Hasan</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                    Sr. Lecturer, CSE</td>
                              </tr>
                              
                              <tr style="background-color: #CDCDDA;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;10.	Mr. Abdul Quader</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                  Sr. Lecturer,  Phys</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;11.	Mr. Md. Mijanur Rahman</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Sr. Lecturer, EEE</td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                     &nbsp;&nbsp;&nbsp;&nbsp;12.	Mr. S. M. Shakil Hassan </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Sr. Lecturer, EEE</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;13.	Mr. Kazi Rizwanul Huq</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Sr. Lecturer, EEE</td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                     &nbsp;&nbsp;&nbsp;&nbsp;14.	Mr. Md. Shariful Islam </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Sr. Lecturer, EEE</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;15.	Miss Mahmuda Akter Monne</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Sr. Lecturer, EEE</td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;16.	Mr. Kazi Saiful Alam</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                    Lecturer, EEE</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;17.	Mr. Masudul Hasan Qurishi</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Lecturer, EEE</td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                   &nbsp;&nbsp;&nbsp;&nbsp;18.	Mr. Humayra Tasnim</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Lecturer, CSE</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;19.	Mr. Imran Bin Azad</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Lecturer, CSE</td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;20.  Ms. Ishrat Ahmed</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Lecturer, CSE</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                    &nbsp;&nbsp;&nbsp;&nbsp;21. Ms. Mashrura Tasnim</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Lecturer, CSE</td>
                              </tr>
                              
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                     &nbsp;&nbsp;&nbsp;&nbsp;22.	Mr. A. S. M.G Faruk </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Director, Admission, EU</td>
                              </tr>
                              
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;23. Mr. Md. Shajidul Islam</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Deputy Director, Logistics</td>
                              </tr>
                              
                              <tr style="background-color: #CDCDDA;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;24.	Mr. Abu Hena Md. Rasel</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Deputy Director, International Affair</td>
                              </tr>
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;25.	Mr. Jamal Uddin, </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Deputy Director, Student Affairs</td>
                              </tr>
                              
                              <tr style="background-color: #CDCDDA;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;26.	Mr. Atikuzzaman (Limon)</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Asst. Director, VC Office</td>
                              </tr>
                              <tr  style="background-color: #CCE3EC;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;27.	Mr. Arifur Rahman Arif</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Asst. Director, PRO</td>
                              </tr>
                              
                              <tr style="background-color: #CDCDDA;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                     &nbsp;&nbsp;&nbsp;&nbsp;28.	Mr. Md. Abu Sayeed</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Senior Executive (Logistics)</td>
                              </tr>
                              
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                     &nbsp;&nbsp;&nbsp;&nbsp;29.	Ms. Nargis Begum</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Senior Executive, Technical</td>
                              </tr>
                              
                              <tr style="background-color: #CDCDDA;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;30.	Mr. Mozammel Hoque</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Executive, E &T</td>
                              </tr>
                              
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;31.	Mr. Rokonuzzaman</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                     Executive, E &T</td>
                              </tr>
                              <tr  style="background-color: #CDCDDA;">
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                      &nbsp;&nbsp;&nbsp;&nbsp;32.	Mr. KM Mahmudul Hasan</td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Executive, E &T</td>
                              </tr>
                              
                              <tr style="background-color: #CCE3EC;" >
                                  <td style="width:50%;border:solid windowtext 1.0pt;padding: 0in .05in 0in .05in;height:25.3pt; font-weight: bold;">

                                     &nbsp;&nbsp;&nbsp;&nbsp;33.	Ms. Fauzia Sultana Irin </td>
                                  <td style="width:50%;border:solid windowtext 1.0pt;border-left:  none; padding:  0in .05in 0in .05in;height:25.3pt">

                                      Asst. Executive, E &T</td>
                              </tr>
                              
                              </table>

                         -->
                          <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td style="width:15%">

                         &nbsp;</td>
                     <td class="auto-style3">

                         &nbsp;</td>
                     <td style="width:60%">

                         &nbsp;</td>
                 </tr>
             </table>  
               
              

                
                </form>

            </div>


            
        </div>


    </div>


</asp:Content>
