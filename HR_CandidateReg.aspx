<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="HR_CandidateReg.aspx.cs" Inherits="Eastern_Uni.HR_CandidateReg" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Candidate Forms</title>
     <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />

    
      
    
     <script type="text/javascript">

         function CalculateAge() {

             var birthday = new Date();
             birthday = document.getElementById('ContentPlaceHolder1_txtBirthDate').value;
             var re = /^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d+$/;

             var dateNow = new Date();
             if (birthday.value != '') {

                 if (re.test(birthday)) {
                     var birthdayDate = new Date(birthday);
                     // birthdayDate = birthday;
                     var years1 = dateNow.getFullYear();
                     var years2 = birthdayDate.getFullYear();

                     var years = dateNow.getFullYear() - birthdayDate.getFullYear();
                     var months = dateNow.getMonth() - birthdayDate.getMonth();
                     var days = dateNow.getDate() - birthdayDate.getDate();
                     if (isNaN(years)) {



                         document.getElementById('lblAge').innerHTML = '';
                         document.getElementById('ContentPlaceHolder1_lblError').innerHTML = 'Input date is incorrect!';
                         return false;

                     }

                     else {
                         document.getElementById('ContentPlaceHolder1_lblError').innerHTML = '';

                         if (months < 0 || (months == 0 && days < 0)) {
                             years = parseInt(years) - 1;
                             months = 12 + months;
                             document.getElementById('lblAge').innerHTML = years + ' Years ,' + months + ' Months'
                         }
                         else {

                             document.getElementById('lblAge').innerHTML = years + ' Years ,' + months + ' Months'
                         }
                     }
                 }
                 else {
                     document.getElementById('ContentPlaceHolder1_lblError').innerHTML = 'Date must be mm/dd/yyyy format';
                     return false;
                 }
             }
         }



        
    </script>
    
     
 


   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="full_content">

           <form id="frmErroms" runat="server">
           
   <asp:Label ID="lbl1" runat="server" Font-Bold="True" Font-Size="Large" Text="Apply for the post of"></asp:Label> 
          <asp:Label ID="lblPost" runat="server" Font-Bold="True" Font-Size="Large" Text="" ForeColor="blue"></asp:Label>  
               <br /> <br />
                 <asp:Panel ID="pnlError" runat="server">
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                ShowSummary="true" DisplayMode="List" />

                     <br />
                     <asp:Label ID="MsgError" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>
                    </asp:Panel>
               <asp:Panel ID="pnlRegistration" runat="server">
              



               <div id="ApplicantRegistration">
                 <asp:Label ID="Label3" runat="server" Text="Applicant Registration" style="color: #000000; font-weight: bold; font-size: larger; margin-left:6px"></asp:Label>
               <table style="border-style: solid none none none; border-color: #000000; border-width: medium; width:98%; margin-left:5px">
                   <tr>
                       <td style="width:20%;text-align: right;">
                           <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span> 
                       
                           <asp:Label ID="Label1" runat="server" Text="Applicant Name"></asp:Label>

                         
                       </td>
                       <td style="width:30%;margin-left:5px">
                         <asp:TextBox ID="txtName" runat="server" Width="240px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                runat="server" ForeColor="Red"
                ErrorMessage="Applicant name is required"
                ControlToValidate="txtName" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                       </td>
                       <td style="width:20%;text-align: right;">

                        <asp:Label ID="Label15" runat="server" Text="National ID"></asp:Label>
                                                       </td>
                       <td style="width:30%;margin-left:5px">
                       
                                                       <asp:TextBox ID="txtNationID" runat="server" ></asp:TextBox>
                       
                       </td>
                   </tr>
                    <tr>
                       <td style="width:20%;text-align: right;">
    <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span> 
                        <asp:Label ID="Label2" runat="server" Text="Fathers'/Husbands' Name"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                        <asp:TextBox ID="txtGardian" runat="server" Width="240px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGardian" 
                runat="server" ForeColor="Red"
                ErrorMessage="Fathers'/Husbands' name is required"
                ControlToValidate="txtGardian" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                       </td>
                       <td style="width:20%;text-align: right;">
                           <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span>     
                        <asp:Label ID="Label8" runat="server" Text="Mothers' Name"></asp:Label>

                        </td>
                       <td style="width:30%;margin-left:5px">

                        <asp:TextBox ID="txtMother" runat="server" Width="240px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorMother" 
                runat="server" ForeColor="Red"
                ErrorMessage="Mothers' name is required"
                ControlToValidate="txtMother" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;">
                           <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span> 
                        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                           <asp:DropDownList ID="ddlGender" runat="server" Width="150px">
                               <asp:ListItem Enabled="true" Text="Select Gender" Value="-1"></asp:ListItem>
                               <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                               <asp:ListItem Text="Male" Value="2"></asp:ListItem>
                               <asp:ListItem Text="Others" Value="5"></asp:ListItem>
                           </asp:DropDownList>

                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" 
                               ControlToValidate="ddlGender" InitialValue="-1" 
                                runat="server" Text="*" ForeColor="Red" 
                 ErrorMessage="A specific Gender is required">

                           </asp:RequiredFieldValidator>

                           </td>
                       <td style="width:20%;text-align: right;">
                           <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span> 
                           <asp:Label ID="Label7" runat="server" Text="Religion"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">
                           <asp:DropDownList ID="ddlReligion" runat="server" Width="150px">
                               <asp:ListItem Enabled="true" Text="Select Religion" Value="-1"></asp:ListItem>
                               <asp:ListItem Text="Buddhist" Value="1"></asp:ListItem>
                               <asp:ListItem Text="Christian" Value="2"></asp:ListItem>
                               <asp:ListItem Text="Hindu" Value="3"></asp:ListItem>
                               <asp:ListItem Text="Islam" Value="4"></asp:ListItem>
                               <asp:ListItem Text="Others" Value="5"></asp:ListItem>
                               <asp:ListItem Text="Sikh" Value="6"></asp:ListItem>
                           </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorReligion" 
                               ControlToValidate="ddlReligion" InitialValue="-1" 
                                runat="server" Text="*" ForeColor="Red" 
                 ErrorMessage="A specific Religion is required">
                               </asp:RequiredFieldValidator>
                       </td>
                   </tr>

                   <tr>
                       <td style="width:20%;text-align: right;"><span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span>
                           <asp:Label ID="lblBirthdate" runat="server" Text="Birth Date"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">
                           <asp:TextBox ID="txtBirthDate" runat="server" onblur="CalculateAge()" />
                           <!--  <input type="button" value="text" onclick="CalculateAge()" />-->
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorBirthDate" runat="server" ControlToValidate="txtBirthDate" Display="Dynamic" ErrorMessage="Date of Birth is required" ForeColor="Red" Text="*">
                </asp:RequiredFieldValidator>
                           (MM/dd/yyyy)
                           <asp:Label ID="lblError" runat="server"></asp:Label>
                           </span></td>
                       <td style="width:20%;text-align: right;">
                           <asp:Label ID="Label37" runat="server" Text="Age"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px"><span id="lblAge"></span></td>
                   </tr>

                   <!--
                   <tr>
                       <td style="width:20%;text-align: right;">

                        <asp:Label ID="Label4" runat="server" Text="Birth Date"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                           <asp:TextBox ID="txtDOB" runat="server" OnTextChanged="txtDOB_TextChanged" AutoPostBack="true"></asp:TextBox>
                           
                          <asp:CalendarExtender ID="cexDateFrm" runat="server" Format="dd/MM/yyyy" TargetControlID="txtDOB" >
                                         </asp:CalendarExtender>
                        
                                         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />

                             
                                         

                       </td>
                       <td style="width:20%;text-align: right;">

                        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>

                        </td>
                       <td style="width:30%;margin-left:5px">

                        <asp:TextBox ID="txtAge1" runat="server" ReadOnly="True" Width="167px" ></asp:TextBox>
                            

                       </td>
                   </tr>

                   -->
                   <tr>
                       <td style="width:20%;text-align: right;">
    <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span> 
                        <asp:Label ID="Label9" runat="server" Text="Nationality"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:DropDownList ID="ddlNationality" runat="server"  Width="150px" >

                           </asp:DropDownList>

                           <asp:RequiredFieldValidator id="RequiredFieldValidatorNationality"  
                              runat="server" ErrorMessage="*" ForeColor="Red"
                              ControlToValidate="ddlNationality" 
                              InitialValue="Select a nationality">
                            </asp:RequiredFieldValidator>
                          
                       </td>
                       <td style="width:20%;text-align: right;">
                          <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span>      
                        <asp:Label ID="Label13" runat="server" Text="Mobile No"></asp:Label>
                            </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtMobile" runat="server" ></asp:TextBox>

                             <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobileNo" 
                runat="server" ForeColor="Red"
                ErrorMessage="Mobile Number is required"
                ControlToValidate="txtMobile" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                       </td>
                   </tr>
                  
                   <tr>
                       <td style="width:20%;text-align: right;">
                         <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span>       
                        <asp:Label ID="Label10" runat="server" Text="Maritial Status"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:DropDownList ID="ddlMaritial" runat="server" Width="150px">
                            <asp:ListItem Enabled="true" Text="Select Marital Status" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Divorcee" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Married" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Not Mentioned" Value="3"></asp:ListItem>
                               <asp:ListItem Text="Single" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Widower" Value="5"></asp:ListItem>
                        </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMarit" 
                               ControlToValidate="ddlMaritial" InitialValue="-1" 
                                runat="server" Text="*" ForeColor="Red" 
                 ErrorMessage="A specific Marital Status is required">
                               </asp:RequiredFieldValidator>
                       </td>
                       <td style="width:20%;text-align: right;">
                              <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span>  
                        <asp:Label ID="Label14" runat="server" Text="Email" ></asp:Label>

                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtMail" runat="server"  ></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
                runat="server" ForeColor="Red"
                ErrorMessage="Email is required"
                ControlToValidate="txtMail" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                runat="server" ErrorMessage="Invalid Email Format"
                ControlToValidate="txtMail" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Text="*">
                </asp:RegularExpressionValidator>
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;">
  <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span> 
                        <asp:Label ID="Label11" runat="server" Text="Mailing Address"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtPreAdd" runat="server" Width="240px" TextMode="MultiLine" Height="40px" ></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorPresent" 
                runat="server" ForeColor="Red"
                ErrorMessage="A Specific Address is required for Mailing Address"
                ControlToValidate="txtPreAdd" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                       </td>
                       <td style="width:20%;text-align: right;">
                       <span style="font-size: 16px; color: #FF0000; font-weight: bold;">*</span>       
                        <asp:Label ID="Label12" runat="server" Text="Permanent Address"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtPerAdd" runat="server" Width="240px" TextMode="MultiLine" Height="40px"  ></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorPermanent" 
                runat="server" ForeColor="Red"
                ErrorMessage="A Specific Address is required for Permanent Address"
                ControlToValidate="txtPerAdd" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;">

                           &nbsp;</td>
                       <td style="width:30%;margin-left:5px">

                            &nbsp;</td>
                       <td style="text-align: right;" colspan="2">
                      
                           

                            <asp:Button ID="btnReg" runat="server" Text="Register" style="margin-left: 25px;width:150px" OnClick="btnReg_Click" />
                       </td>
                   </tr>
                   </table>       
           
                   </div>

               <br />

               <div id="ApplicantNote">
                 <asp:Label ID="Label16" runat="server" Text="Notice" style="color: blue; font-weight: bold; font-size: larger; margin-left:6px"></asp:Label>
                      <table style="margin-left:5px;width:98%;border-style: solid none none none; border-color: blue;">
                          <tr >
                              <td >
                                 
                                  <span style="margin-left:10px">An applicant can register only once.Registered applicant, please <a href="HR_CandLogin.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="text-decoration: none; color: #FF0000; font-weight: bold;">Login</a> here.</span>
                                  <br />
<span style="margin-left:10px">If you have forgotten your Tracking No and Password, please Recover it now.</span> <br />
<span style="margin-left:10px">After registration a Tracking No and Password will be given. Which is required for login and applying for jobs.</span><br />
                                  </td>
                          </tr>

                      </table>
           
                   </div>


               <br />

             </asp:Panel>
         
  
    <!--         
    <legend>Get age in years,months,days,hours and seconds from DOB in asp.net</legend>
      
    <table>
    <tr>
    <td>DOB: </td><td>
        <asp:TextBox ID="txtDOB1" runat="server"></asp:TextBox>
    

           <asp:Button ID="btnGetAge" runat="server" Text="Get Age"
            onclick="btnGetAge_Click" />
        </td>
    </tr>
    <tr>
    <td></td><td>
        <asp:TextBox ID="txtCalculatedAge" runat="server" TextMode="MultiLine"
            Height="39px" Width="353px" Rows="3"></asp:TextBox>
        </td>
    </tr>
    </table>
   -->
        </form>
         </div>
</asp:Content>
