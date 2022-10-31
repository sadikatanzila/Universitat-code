<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="RegistrationPoetry.aspx.cs" Inherits="Eastern_Uni.RegistrationPoetry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Application Form</title>
    <link href="CSS/SubAdmission.css" rel="stylesheet" />
   <style type="text/css">
                    

      

            p.MsoNormal
	{margin-bottom:.0001pt;
	text-autospace:none;
	font-size:12.0pt;
	font-family:"Calibri";
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
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
          .auto-style19 {
       }
       .auto-style20 {
           width: 12px;
       }
          .auto-style21 {
           width: 176px;
       }
          </style>

     <script type="text/javascript">
 
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="full_content">


         <form id="Form1" runat="server">
             <br />

          <!--   <span style="font-size:larger;font-weight:600;color:blue;">Insert Student Information</span>
             <hr />
             Insert New Students' Inforamtion.....below   
              <br />
             
                    -->
                     <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
              <asp:Label ID="lblmssg_lastDate" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:Label>
             <table style="width:100%">
                 <tr>
                     <td style="text-align: center">
                         <asp:Label ID="lblHeading" runat="server" Text="Online Registration Form for the Recitation Competition" Font-Bold="True" Font-Size="Larger"></asp:Label><br />
                             <img src="Admins/Data/Poetry.jpg"  alt="Welcome to Eastern University"/>
                    
                     </td>
                 </tr>
             </table>

             <div class="insert_box">

                
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                ShowSummary="true" DisplayMode="List" />
                        <table style="width:95%">
                            
                            <tr>
                                <td class="auto-style21" style="vertical-align: top">
                                    <asp:Label ID="Label6" runat="server" Text="Name (Block Letter) English"></asp:Label>
                                </td>
                                 <td class="auto-style20" style="vertical-align: top">
                                      <asp:Label ID="Label17" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5" style="vertical-align: top">
                               <asp:TextBox ID="txtName" runat="server" Width="500px"></asp:TextBox>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentName" 
                runat="server" ForeColor="Red"
                ErrorMessage="Student name is required"
                ControlToValidate="txtName" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>


 <asp:RegularExpressionValidator runat="server" id="RegularExpressionValidatorStudentName" controltovalidate="txtName"  
     Text="*" ForeColor="Red" validationexpression="^[A-Z ]*$" errormessage="Only Block Letter is Required" />
<!--only block letter is requied link: http://www.aspsnippets.com/Articles/Regular-Expression-Regex-to-accept-only-Alphabets-and-Space-in-TextBox-in-ASPNet.aspx -->
                             <asp:TextBox ID="txtID" runat="server" Width="100px" Visible="false"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style21">
                                    <asp:Label ID="Label9" runat="server" Text="Name of the University"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">
                                         <asp:TextBox ID="txtInstitution" runat="server" Width="500px"></asp:TextBox>

                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorInstitution" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' University name is required"
                ControlToValidate="txtInstitution" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                            </tr>

                            <tr>
                                <td class="auto-style21">
 <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label27" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">
                                         <asp:TextBox ID="txtDepartment" runat="server" Width="500px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorDept" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' Department name is required"
                ControlToValidate="txtDepartment" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                            </tr>


                            <tr>
                                <td class="auto-style21">
                                    <asp:Label ID="Label19" runat="server" Text="Contact Number"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label25" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>

                                     


                                     <asp:TextBox runat="server" id="txtMobile" Width="250px" />
<asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="txtMobile"  Text="*" ForeColor="Red" validationexpression="^[0-9]{11}$" errormessage="Please enter your Mobile No!" />

<asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" 
                runat="server" ForeColor="Red" validationexpression="^[0-9]{11}$"
                ErrorMessage="Mobile No is required"
                ControlToValidate="txtMobile" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                         </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style20">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                                 <td>
                                         &nbsp;</td>
                            </tr>


                            <tr>
                                <td class="auto-style21">
                                    <asp:Label ID="Label20" runat="server" Text="Email"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>


                                         <asp:TextBox ID="txtMail" runat="server" Width="250px"></asp:TextBox>


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
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style20">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                                 <td>
                                         &nbsp;</td>
                            </tr>


                            <tr>
                                <td class="auto-style21" style="vertical-align: top">
                                    <asp:Label ID="Label18" runat="server" Text="Contact Address"></asp:Label>
                                </td>
                                 <td class="auto-style20" style="vertical-align: top">
                                      <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">


                                          <asp:TextBox ID="txtAddress" Height="50px" TextMode="MultiLine" runat="server" Width="500px"></asp:TextBox>

                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" 
                runat="server" ForeColor="Red"
                ErrorMessage="Address is required"
                ControlToValidate="txtAddress" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>

                                         </td>
                            </tr>




                            <tr>
                                <td class="auto-style21">
                                    <asp:Label ID="Label10" runat="server" Text="Which section of the competition you want to participate in"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      &nbsp;</td>
                                 <td>

                                      <asp:DropDownList ID="ddlGroup" runat="server"  Width="250px" >
<asp:ListItem Selected="True" Value="-1">---Select---</asp:ListItem>
                     <asp:ListItem Value="1">English</asp:ListItem>
                     <asp:ListItem Value="2">Bangla</asp:ListItem>
                         
                 </asp:DropDownList>

                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorGroup" 
                               ControlToValidate="ddlGroup" InitialValue="-1" 
                                runat="server" Text="*" ForeColor="Red" 
                 ErrorMessage="A specific Section is required">
                               </asp:RequiredFieldValidator>


                                </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style20">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                                 <td>

                                      &nbsp;</td>
                            </tr>


                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="lblNum1" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="lblPlus" runat="server" Text=""></asp:Label>
                                    <asp:Label ID="lblNum2" runat="server" Text=""></asp:Label>

                                </td>
                                 <td class="auto-style20">
                                      &nbsp;</td>
                                 <td>


                                         <asp:TextBox ID="txtSum" runat="server" Width="250px"></asp:TextBox>

                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtSum" Text="*" ForeColor="Red"
                                         runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                         </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style20">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                                 <td>
                                         &nbsp;</td>
                            </tr>

                            <tr>
                                <td class="auto-style19" colspan="7" style="text-align: center">


                                      <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClick="Submit_Click" Width="100px" />

                             <asp:Button ID="btnClear" runat="server" Text="Clear"  OnClick="btnClear_Click" Width="100px" style="margin-left: 38px" Visible="false" /></td>
                            </tr>

                            <tr>
                                <td class="auto-style19" colspan="7" style="text-align: right; color: #FF0000;">


                                    <asp:Label ID="Label23" runat="server" Visible="false" Text="Last date of Application 16/10/2015"></asp:Label>
                                    

                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style19" colspan="7" style="text-align: left; color: #FF0000;">


                                    Instruction:  <br />
•	Participants must bring his/her institution ID card to prove credence.<br />
                                    • Participants must bring tk 200 for registration fee.

                                </td>
                            </tr>

                        </table>
                             

                     
                 <br />
               

                 </div>


              
          </form>

    </div>
</asp:Content>
