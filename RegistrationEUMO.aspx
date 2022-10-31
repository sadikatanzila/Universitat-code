<%@ Page Title="" Language="C#" MasterPageFile="~/EUMO.Master" AutoEventWireup="true" CodeBehind="RegistrationEUMO.aspx.cs" Inherits="Eastern_Uni.RegistrationEUMO" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Math Olympiad Registration</title>
    <link href="CSS/AdminHome.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
     <div id="ContentBody"> 

      <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/ContentBannerEUMO.jpg')">

         <form id="Form1" runat="server">
            

          <!--   <span style="font-size:larger;font-weight:600;color:blue;">Insert Student Information</span>
             <hr />
             Insert New Students' Inforamtion.....below   
              <br />
             
                    -->
                 
           <br /><br />
             <div style="text-align: center">

                 <table style="width:90%; margin-right: 0px; margin-left:30px">
                 <tr>
                     <td style="width:2%">

                     </td>
                     <td style="width:15%">

                          </td>
                     <td colspan="2">

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 10px; width: 620px;">

                    

                   
                             5th Eastern University Math Olympiad, EUMO 2018 
                  <br /> <strong style="font-size: 16px">(Nationwide - For H.S.C. / A-Level / equivalent students)
                        <br />    Friday, 16th March, 2018</strong>  
                           </p></td>
                 </tr>

                 </table>
             </div>
             

                

             <table style="width:99%">
                   
                    
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             <strong style="font-size: 16px;color:blue;">
                             Organized by the Department of Computer Science and Engineering<br />
&nbsp;Eastern University, Dhaka</strong>
                         </td>
                     </tr>
                     <tr>
                         <td style="text-align: left; color: #FF0000; font-size: small;" class="auto-style1">
                             <br /> 
                              </td>
                     </tr>
                     <tr>
                         <td style="text-align: left; color: #FF0000; font-size: small;" class="auto-style1">
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td style="text-align: right;  font-size: medium;" >
                                <div style="width:98%" >
             <a href="eumo2018.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="color:blue; font-weight: bold;"><span>EUMO 2018 Home</span></a> 
                </div> 

                         </td>
                     </tr>
                     <tr>
                         <td style="text-align: left">
                             <asp:Label ID="Label8" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Large" Text="Date extended till Tuesday 13th March, 2018"></asp:Label> <br />
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
                                     <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox> <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Student name is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     <asp:TextBox ID="txtID" runat="server" Visible="false" Width="100px"></asp:TextBox>
                                 </td>
                                 <td rowspan="3">
                                      <asp:Panel ID="pnlImage" runat="server" GroupingText="Upload Photo" Width="250px" >

                  <input type="file" id="File1" name="File1" runat="server" />
                  <br/>
               <!--   <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1"/>-->

                 <asp:TextBox ID="txtPictureLocation" runat="server" Width="180px" Visible="false"></asp:TextBox>
                     
                
                <asp:Label ID="lblmsg" runat="server" ForeColor="Blue" ></asp:Label>
                                         &nbsp;
                      </asp:Panel>


                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Email Address</span> </td>
                                 <td> <span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                     <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                                 </td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td><span style="font-weight: normal; font-size: large; color: #000000;">Cell Number</span></td>
                                 <td> <span style="font-weight: bold; font-size: large; color: #000000;">:</span></td>
                                 <td>
                                      <asp:TextBox ID="txtCellnumber" runat="server"  Width="250px"></asp:TextBox> <asp:Label ID="Label5" runat="server" Text="*" ForeColor="Red"></asp:Label>
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
                                 <td>&nbsp;</td>
                                 <td>&nbsp;</td>
                                 <td colspan="2">&nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5">


   <asp:Panel ID="pnlHsc" runat="server" Width="99%" GroupingText="HSC/ A-Level/ Equivalent Info. :">
           <table>

<!--
               <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">HSC/ A-Level/ Equivalent</span></td>
                                     <td class="auto-style2"><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                                         <asp:ListItem Selected="True" Value="0">---Select---</asp:ListItem>
                                         <asp:ListItem Value="1">HSC</asp:ListItem>
                                         <asp:ListItem Value="2">A-Level</asp:ListItem>
                                         <asp:ListItem Value="3">Equivalent</asp:ListItem>
                                         </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlSSC" ErrorMessage="A specific SSC level is required" ForeColor="Red" InitialValue="0" Text="*">
                               </asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
    -->
               <tr>
                   
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Education Board</span>&nbsp;</td>
                                     <td class="auto-style2"><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:DropDownList ID="ddlBoard" runat="server"  Height="22px" Width="300px">
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

                                          <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorGroup" runat="server" ControlToValidate="ddlBoard" ErrorMessage="A specific Board is required" ForeColor="Red" InitialValue="0" Text="*">
                               </asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                               <tr>
                                     <td class="auto-style3" style="vertical-align: top"><span style="font-weight: normal; font-size: large; color: #000000;">College/ Institution</span></td>
                                     <td class="auto-style2" >
                                         <span style="font-weight: bold; font-size: larger; color: #000000;vertical-align: top">:</span>

                                          <asp:TextBox ID="txtInstitution" Height="50px" TextMode="MultiLine" runat="server" Width="350px"></asp:TextBox>
                                         <asp:Label ID="Label7" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorInstitution" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' College/ Institution name is required"
                ControlToValidate="txtInstitution" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>


                                     </td>
                                 </tr>       
                                 
                              

<!--
               <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Roll Number</span></td>
                                     <td class="auto-style2" style="vertical-align: top"><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;<asp:TextBox ID="txtStudentID" runat="server" Width="350px"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorRoll" runat="server" ControlToValidate="txtStudentID" Display="Dynamic" ErrorMessage="Students' Roll is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
               -->
                                 
               </table>
       </asp:Panel>
<br />
                                     <asp:Panel ID="pnlResult" runat="server" Width="99%" GroupingText="SSC Academic Info. :">
                                                <table>
                                      
                                 <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">SSC/ O-Level/ Equivalent</span></td>
                                     <td class="auto-style2"><span style="font-weight: bold; font-size: large; color: #000000;">:</span>
                                         <asp:DropDownList ID="ddlSSC" runat="server" Width="300px">
                                         <asp:ListItem Selected="True" Value="0">---Select---</asp:ListItem>
                                         <asp:ListItem Value="1">SSC</asp:ListItem>
                                         <asp:ListItem Value="2">O-Level</asp:ListItem>
                                         <asp:ListItem Value="3">Equivalent</asp:ListItem>
                                         </asp:DropDownList>
                                         <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorSSC" runat="server" ControlToValidate="ddlSSC" ErrorMessage="A specific SSC level is required" ForeColor="Red" InitialValue="0" Text="*">
                               </asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                    
                                 <tr>
                                     <td class="auto-style3">

                                          <span style="font-weight: normal; font-size: large; color: #000000;">Year</span></td>
                                     <td class="auto-style2">
                                         
                                         <span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;<asp:TextBox ID="txtYear" runat="server" Width="350px"></asp:TextBox>
                                          <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorYear" 
                runat="server" ForeColor="Red" validationexpression="^[0-9]{4}$"
                ErrorMessage="Passing Year is required"
                ControlToValidate="txtYear" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>


                             <asp:RegularExpressionValidator runat="server" id="RegularExpressionValidatorYear" controltovalidate="txtYear"
                                   Text="*" ForeColor="Red" validationexpression="^[0-9]{4}$" errormessage="Passing Year willbe Numeric!" />
                                     </td>
                                 </tr>


                    
                                 


                    
                                 


                    
                                 
                                 


                    
                                 <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Roll Number</span></td>
                                     <td class="auto-style2"><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;<asp:TextBox ID="txtRoll" runat="server" Width="350px"></asp:TextBox>
                                                           

                                     </td>
                                 </tr>


                    
                                                    <tr>
                                                        <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">Registration Number</span></td>
                                                        <td class="auto-style2"><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;<asp:TextBox ID="txtRegiNo" runat="server" Width="350px"></asp:TextBox>
                                                            
                                                        </td>
                                                    </tr>


                    
                                 <tr>
                                     <td class="auto-style3"><span style="font-weight: normal; font-size: large; color: #000000;">GPA</span></td>
                                     <td class="auto-style2"><span style="font-weight: bold; font-size: large; color: #000000;">:</span>&nbsp;
                                         <asp:TextBox ID="txtGPA" runat="server" Width="350px"></asp:TextBox>
                                   

                                     </td>
                                 </tr>
                                 

                    
</table>



                                               </asp:Panel>



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
                                 <td colspan="2"> <asp:TextBox ID="txtSum" runat="server" Width="250px"></asp:TextBox> <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     
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
                                 <td colspan="5">  
                                    
                                     <asp:Label ID="Label9" runat="server" Text="Registration Date extended till Tuesday, 13th March, 2018" Font-Bold="True" ForeColor="Red"></asp:Label> </td>
                             </tr>
                             <tr>
                                 <td colspan="5">&nbsp;</td>
                             </tr>
                             <tr>
                                 <td colspan="5" style="color: #FF0000; font-size: small">
                                     1. Fill-up the necessary box's(* marked) information.<br />
                                     2. After registration, participant will be able to print the admit card. <br />
3. To attend in the Math Olympiad, participant must bring this admit card and their college ID Card or permission slip with photograph authorized by the Principal/Head of the respective college/institution.
<br/>4. Selected participants will be informed on Monday, 14th March, 2018 through email/Phone/SMS. 
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
