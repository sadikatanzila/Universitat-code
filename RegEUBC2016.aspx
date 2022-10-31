<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="RegEUBC2016.aspx.cs" Inherits="Eastern_Uni.RegEUBC2016" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Business Challenge Registration</title>
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
     <link href="CSS/SubAdmission.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
     <div class="full_content" style="background-repeat: no-repeat; background-image: url('image/Other/ContentBanner_master.png')">

     

         <form id="Form1" runat="server">
            

          <!--   <span style="font-size:larger;font-weight:600;color:blue;">Insert Student Information</span>
             <hr />
             Insert New Students' Inforamtion.....below   
              <br />
             
                    -->
                 
           <br /><br />

             <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                     </td>
                    
                     <td colspan="2" style="width:80%;">

                         <p  style="text-align:center;font-size:20px;color:blue; font-weight: bold; font-style: normal;  ">

                    

                   
                        Application to Register for Eastern University Business Challenge 2016
                  <br /> <strong style="font-size: 15px">(Nationwide - For Higher Secondary / A-Level / equivalent students)
                        <br />  Final to be held on 12 March (Saturday), 2016</strong>  
                           </p></td>
                      <td style="width:17%; text-align: center;">

                         
                           <asp:Image ID="Image2" runat="server" ImageUrl="~/Admins/Data/Logo_EUBC2016.png"  Height="95px" Width="130px"/>
                          </td>
                 </tr>

                 </table>

                

             <table style="width:99%">
                   
                    
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             <strong style="font-size: 16px;color:blue;">
                             Organized by the Faculty of Business Administration Eastern University</strong>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align: left; color: #FF0000; font-size: small;" class="auto-style1">
                             <br /> 
                              </td>
                     </tr>
                     <tr>
                         <td style="text-align: left">
                            <asp:Label ID="lblmssg_lastDate" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>        
              
                     <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>&nbsp;&nbsp;&nbsp;
                              <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="#0033CC"></asp:Label>

                         </td>
                     </tr>
                 </table>
             <div class="insert_box">

                 

                     
                                 
               

                 
                 
               

  
                                
                            
                 <br />
                    
                     <asp:Panel ID="pnlRegistration" runat="server">   
                         
                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                ShowSummary="true" DisplayMode="List" /> 

                         <table style="width:99%">
                             <tr>
                                 <td colspan="5" style="text-align: center; font-size: 20px; font-weight: bold; ">
                                    Application to Register in the EUBC 2016</td>
                             </tr>
                             <tr>
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                 <td colspan="3" style="text-align: right">


                                    
                                 </td>
                             </tr>
                             <tr>
                                 <td>&nbsp;</td>
                                 <td> &nbsp;</td>
                                 <td colspan="2">
                                      
                                     &nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Name of the Institution</span></td>
                                 <td><span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                <asp:TextBox ID="txtInstitution" runat="server" Width="350px"></asp:TextBox>
                                        
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorInstitution" runat="server" ControlToValidate="txtInstitution" Display="Dynamic" ErrorMessage="Students' College/ Institution name is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     <asp:TextBox ID="txtID" runat="server" Visible="false" Width="100px"></asp:TextBox>
                                    
                                    
                                 </td>
                                 <td rowspan="5">
                                      


                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Board</span></td>
                                 <td> <span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" 
                runat="server" ForeColor="Red" validationexpression="^[0-9]{11}$"
                ErrorMessage="Mobile No is required"
                ControlToValidate="txtCellnumber" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>


                             

                                      <asp:DropDownList ID="ddlBoard" runat="server" Height="22px" Width="300px">
                                          <asp:ListItem Selected="True" Value="0">---Please Select---</asp:ListItem>
                                          <asp:ListItem Value="1">Barisal</asp:ListItem>
                                          <asp:ListItem Value="2">Chittagong</asp:ListItem>
                                          <asp:ListItem Value="3">Comilla</asp:ListItem>
                                          <asp:ListItem Value="4">Dhaka</asp:ListItem>
                                          <asp:ListItem Value="5">Dinajpur</asp:ListItem>
                                          <asp:ListItem Value="6">Jessore</asp:ListItem>
                                          <asp:ListItem Value="7">Mymensingh</asp:ListItem>
                                          <asp:ListItem Value="8">Rajshahi</asp:ListItem>
                                          <asp:ListItem Value="9">Sylhet</asp:ListItem>
                                          <asp:ListItem Value="10">Madrasah</asp:ListItem>
                                          <asp:ListItem Value="11">Other</asp:ListItem>
                                      </asp:DropDownList>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorGroup" runat="server" ControlToValidate="ddlBoard" ErrorMessage="A specific Board is required" ForeColor="Red" InitialValue="0" Text="*">
                               </asp:RequiredFieldValidator>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Address</span> </td>
                                 <td> <span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtAddress" runat="server"  Width="300px" TextMode="MultiLine" Height="50px"></asp:TextBox>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">HSC/ A-Level/ Equivalent</span></td>
                                 <td><span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>

                                      <asp:DropDownList ID="ddlSSC" runat="server" Width="300px">
                                         <asp:ListItem Selected="True" Value="0">---Select---</asp:ListItem>
                                         <asp:ListItem Value="1">HSC</asp:ListItem>
                                         <asp:ListItem Value="2">A-Level</asp:ListItem>
                                         <asp:ListItem Value="3">Equivalent</asp:ListItem>
                                         </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorSSC" runat="server" ControlToValidate="ddlSSC" ErrorMessage="A specific SSC level is required" ForeColor="Red" InitialValue="0" Text="*">
                               </asp:RequiredFieldValidator>

                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Total Student</span></td>
                                 <td><span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtTotalStd" runat="server" Width="100px"></asp:TextBox>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             
                             <tr>
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                 <td colspan="2">&nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="4" style="font-size: large"><strong>Name of Participants</strong></td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5">


   <asp:Panel ID="pnlHsc" runat="server" Width="100%" GroupingText="Group Leader: ">
           <table style="Width:98%">


               <tr>
                   
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Name</span></td>
                                     <td >
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
                                          <asp:TextBox ID="txtdesignation1" runat="server" Visible="false" Width="100px" Text="Group Leader"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Student name is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                                     <td  rowspan="5" style="text-align: center; width:20%; vertical-align: top;">
                                         Student Photo
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                     </td>
                                 </tr>
               <tr>
                   <td class="auto-style3" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">GPA/ Grade</span></td>
                   <td ><span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>
                      
                       <asp:TextBox ID="txtGPA" runat="server" Width="250px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorGrpLdr" runat="server" ControlToValidate="txtGPA" Display="Dynamic" ErrorMessage="Group Leaders' GPA/ Grade required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                   </td>
               </tr>
                               <tr>
                                   <td class="auto-style3" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">Subject/ Group</span></td>
                                   <td ><span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>
                                       <asp:DropDownList ID="ddlDepartment" runat="server" Height="22px" Width="250px">
                                           <asp:ListItem Selected="True" Value="0">---Please Select---</asp:ListItem>
                                           <asp:ListItem Value="1">Science</asp:ListItem>
                                           <asp:ListItem Value="2">Business Studies</asp:ListItem>
                                           <asp:ListItem Value="3">Humanities</asp:ListItem>
                                           <asp:ListItem Value="11">Other</asp:ListItem>
                                       </asp:DropDownList>
                                   </td>
               </tr>
                               <tr>
                                   <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Mobile No</span>&nbsp;</td>
                                   <td ><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                       <asp:TextBox ID="txtCellnumber" runat="server" Width="250px"></asp:TextBox>
                                       <asp:RegularExpressionValidator ID="rexNumber" runat="server" controltovalidate="txtCellnumber" errormessage="Please enter your Mobile No!" ForeColor="Red" Text="*" validationexpression="^[0-9]{11}$" />
                                   </td>
               </tr>
                               <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Email</span>&nbsp;

                                     </td>
                                     <td  >
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Group Leaders' Email is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                                 </tr>       
                                 
                              
                                 
               </table>
       </asp:Panel>
<br />
                                     
<asp:Panel ID="Panel1" runat="server" Width="100%" GroupingText="Member-1: ">
           <table style="Width:98%">


               <tr>
                   
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Name</span></td>
                                     <td >
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:TextBox ID="txtName1" runat="server" Width="250px"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName1" Display="Dynamic" ErrorMessage="Student name is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                         <asp:TextBox ID="txtdesignation2" runat="server" Text="Member-1" Visible="false" Width="100px"></asp:TextBox>
                                     </td>
                                     <td  rowspan="5" style="text-align: center; width:20%; vertical-align: top;">
Student Photo
                                       <asp:FileUpload ID="FileUpload2" runat="server" />
                                     </td>
                                 </tr>
               <tr>
                   <td class="auto-style3" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">GPA/ Grade</span></td>
                   <td ><span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>
                      
                       <asp:TextBox ID="txtGPA1" runat="server" Width="250px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtGPA1" runat="server" ControlToValidate="txtGPA1" Display="Dynamic" ErrorMessage="Member 1 Students' GPA/ Grade required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                   </td>
               </tr>
                               <tr>
                                   <td class="auto-style3" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">Subject/ Group</span></td>
                                   <td ><span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>
                                       <asp:DropDownList ID="ddlDepartment1" runat="server" Height="22px" Width="250px">
                                           <asp:ListItem Selected="True" Value="0">---Please Select---</asp:ListItem>
                                           <asp:ListItem Value="1">Science</asp:ListItem>
                                           <asp:ListItem Value="2">Business Studies</asp:ListItem>
                                           <asp:ListItem Value="3">Humanities</asp:ListItem>
                                           <asp:ListItem Value="11">Other</asp:ListItem>
                                       </asp:DropDownList>
                                   </td>
               </tr>
                               <tr>
                                   <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Mobile No</span>&nbsp;</td>
                                   <td ><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                       <asp:TextBox ID="txtCellnumber1" runat="server" Width="250px"></asp:TextBox>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" controltovalidate="txtCellnumber1" errormessage="Please enter your Mobile No!" ForeColor="Red" Text="*" validationexpression="^[0-9]{11}$" />
                                   </td>
               </tr>
                               <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Email</span>&nbsp;

                                     </td>
                                     <td  >
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:TextBox ID="txtEmail1" runat="server" Width="250px"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtEmail1" runat="server" ControlToValidate="txtEmail1" Display="Dynamic" ErrorMessage="Member 1 Students' Email is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                                 </tr>       
                                 
                              
                                 
               </table>
       </asp:Panel>
<br />

<asp:Panel ID="Panel3" runat="server" Width="100%" GroupingText="Member-2: ">
           <table style="Width:98%">


               <tr>
                   
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Name</span></td>
                                     <td >
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:TextBox ID="txtName2" runat="server" Width="250px"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName2" Display="Dynamic" ErrorMessage="Student name is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                         <asp:TextBox ID="txtdesignation3" runat="server" Text="Member-2" Visible="false" Width="100px"></asp:TextBox>
                                     </td>
                                     <td  rowspan="5" style="text-align: center; width:20%; vertical-align: top;">
                                         Student Photo
                                         <asp:FileUpload ID="FileUpload3" runat="server" />
                                     </td>
                                 </tr>
               <tr>
                   <td class="auto-style3" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">GPA/ Grade</span></td>
                   <td ><span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>
                      
                       <asp:TextBox ID="txtGPA2" runat="server" Width="250px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtGPA2" runat="server" ControlToValidate="txtGPA2" Display="Dynamic" ErrorMessage="Member 2 Students' GPA/ Grade required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                   </td>
               </tr>
                               <tr>
                                   <td class="auto-style3" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">Subject/ Group</span></td>
                                   <td ><span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>
                                       <asp:DropDownList ID="ddlDepartment2" runat="server" Height="22px" Width="250px">
                                           <asp:ListItem Selected="True" Value="0">---Please Select---</asp:ListItem>
                                           <asp:ListItem Value="1">Science</asp:ListItem>
                                           <asp:ListItem Value="2">Business Studies</asp:ListItem>
                                           <asp:ListItem Value="3">Humanities</asp:ListItem>
                                           <asp:ListItem Value="11">Other</asp:ListItem>
                                       </asp:DropDownList>
                                   </td>
               </tr>
                               <tr>
                                   <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Mobile No</span>&nbsp;</td>
                                   <td ><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                       <asp:TextBox ID="txtCellnumber2" runat="server" Width="250px"></asp:TextBox>
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" controltovalidate="txtCellnumber2" errormessage="Please enter your Mobile No!" ForeColor="Red" Text="*" validationexpression="^[0-9]{11}$" />
                                   </td>
               </tr>
                               <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Email</span>&nbsp;

                                     </td>
                                     <td  >
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:TextBox ID="txtEmail2" runat="server" Width="250px"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtEmail2" runat="server" ControlToValidate="txtEmail2" Display="Dynamic" ErrorMessage="Member 2 Students' Email is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                                 </tr>       
                                 
                              
                                 
               </table>
       </asp:Panel>
<br />
                                 </td>
                             </tr>
                             <tr>
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                 <td colspan="2">&nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td> <asp:Label ID="lblNum1" runat="server" Text=""></asp:Label>
                                          
                                    <asp:Label ID="lblPlus" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="lblNum2" runat="server" Text=""></asp:Label></td>
                                 <td> <span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td colspan="2"> <asp:TextBox ID="txtSum" runat="server" Width="250px"></asp:TextBox>
                                     
           <asp:RegularExpressionValidator id="RegularExpressionValidator_numeric"
                   ControlToValidate="txtSum"
                   ValidationExpression="\d+"
                   Display="Static"
                   EnableClientScript="true" Type="Integer" 
 Text="*" ForeColor="Red"
                   ErrorMessage="Please enter numbers only"
                   runat="server"/>

                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                 <td style="font-size: small; text-align: right; color: #FF0000" colspan="2"> </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5" style="text-align: center">  <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" Width="100px" />
                                         <asp:Button ID="btnClear" runat="server" Height="36px" OnClick="btnClear_Click" Visible="false" Text="Clear" Width="100px" style="margin-left: 65px" />
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="5">&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5">  <b>  Last Date of Registration: Sunday, 9th March 2016 </b> </td>
                             </tr>
                             <tr>
                                 <td colspan="5">&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5" style="color: #FF0000; font-size: small">
                                     1. Fill-up the necessary box's(* marked) information.<br />
                                     2. After registration, participant will be able to print the admit card. <br />
3. To attend in the EU Business Challenge, participant must bring this admit card and their college ID Card or permission slip with photograph authorized by the Principal/Head of the respective college/institution.
<!--<br/>4. Selected participants will be informed on Sunday, 28th February, 2016 through email/Phone/SMS. -->
                                 </td>
                             </tr>
                         </table>
                             

                     </asp:Panel>
                 <br />
               

                 </div>


              
          </form>
           </div>
    
</asp:Content>
