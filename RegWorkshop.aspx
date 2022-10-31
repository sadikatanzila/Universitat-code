<%@ Page Title="Workshop Registration" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="RegWorkshop.aspx.cs" Inherits="Eastern_Uni.RegWorkshop" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Workshop Registration</title>
   <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="ContentBody">
       
    


        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-position: inherit center; background-image: url('image/Other/Content_Banner.png'); background-repeat: no-repeat;">
   

     

         <form id="Form1" runat="server">
            

          <!--   <span style="font-size:larger;font-weight:600;color:blue;">Insert Student Information</span>
             <hr />
             Insert New Students' Inforamtion.....below   
              <br />
             
                    -->
                 
          
             <br />
             <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                     </td>
                    
                     <td colspan="3">

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 10px; width: 100%;">

                    

                   Give Your Career a Fastest Wheel
                          
                  <br /> <strong style="font-size: 16px">Workshop on Strategies for Career Advancement<br />
                       Saturday, 12th August, 2017</strong>  
                           </p></td>
                 </tr>

                 </table>

                

             <table style="width:99%">
                   
                    
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             <strong style="font-size: 16px;color:blue;">
                             Organized by the Department of Business Admintration<br />
&nbsp;Eastern University, Dhaka</strong>
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
              
                     <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>

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
                                 <td colspan="5" style="text-align: center; font-size: 25px; font-weight: bold; ">
                                     Registration Form</td>
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
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Name</span></td>
                                 <td><span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     <asp:TextBox ID="txtID" runat="server" Visible="false" Width="100px"></asp:TextBox>
                                 </td>
                                 <td rowspan="6">
                                     


                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Designation</span></td>
                                 <td><span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtDesignation" runat="server" Width="250px"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtDesignation" runat="server" ControlToValidate="txtDesignation" Display="Dynamic" ErrorMessage="Designation is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Company</span></td>
                                 <td><span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtCompany" runat="server" Width="250px"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorCompany" runat="server" ControlToValidate="txtCompany" Display="Dynamic" ErrorMessage="Working Company or Institution is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Email Address</span> </td>
                                 <td> <span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>

                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Eamil address is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Phone Number</span></td>
                                 <td> <span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                      <asp:TextBox ID="txtCellnumber" runat="server"  Width="250px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" 
                runat="server" ForeColor="Red" validationexpression="^[0-9]{11}$"
                ErrorMessage="Mobile No is required"
                ControlToValidate="txtCellnumber" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>


                             <asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="txtCellnumber"
                                   Text="*" ForeColor="Red" validationexpression="^[0-9]{11}$" errormessage="Please enter your Mobile No!" />

                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Educational Qualification</span></td>
                                 <td><span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtEducation" runat="server" Width="392px"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorEdu" runat="server" ControlToValidate="txtEducation" Display="Dynamic" ErrorMessage="Educational Qualification is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5">


 


                                 </td>
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
                                         <asp:Button ID="btnClear" runat="server" Height="36px" OnClick="btnClear_Click" Text="Clear" Width="100px" style="margin-left: 65px" />
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="5">&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5">  <b>  Last Date of Registration: Saturday, 12th August 2017 </b> </td>
                             </tr>
                             <tr>
                                 <td colspan="5">&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5" style="color: #FF0000; font-size: small">
                                     1. Fill-up the necessary box's(* marked) information.<br />
                                     2. Last date of Registation 12th August, 2017
                                 </td>
                             </tr>
                         </table>
                             

                     </asp:Panel>
                 <br />
               

                 </div>


              
          </form>

                </div>

           </div>
         </div>
</asp:Content>
