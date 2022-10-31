<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="RegistrationGPA.aspx.cs" Inherits="Eastern_Uni.RegistrationGPA1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Application Form</title>
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
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
        width: 70px;
    }
          </style>
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
             <div class="insert_box">

                
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                ShowSummary="true" DisplayMode="List" />
                        <table style="width:95%">
                            <tr>
                                <td class="auto-style19" colspan="7" style="text-align: center; font-weight: bold; ">
                                      <asp:Label ID="lblHeading" runat="server" Text="Reception of Successful Students of HSC 2017" Font-Size="X-Large" ForeColor="Blue"></asp:Label> <br />    
                       <asp:Label ID="lblHeading1" runat="server" Text=" (Attractive gifts for all participants)" Font-Size="Large" ForeColor="Blue"></asp:Label>   <br/>       
  <asp:Label ID="lblEU" runat="server" Text=" Eastern University" Font-Size="Large"></asp:Label>
                               <br /> <asp:Label ID="lblUniAdd" runat="server" Text="House No. 26, Road No. 5, Dhanmondi, Dhaka-1205" Font-Size="X-Small"></asp:Label>
                                     
                                      </td>
                            </tr>

                            <tr>
                                <td class="auto-style19" colspan="7" style="text-align: center; font-weight: bold; ">
                                    <asp:Label ID="lblHeadingReg" runat="server" Text="Registration Form"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style19" colspan="7" style="text-align: center; font-weight: bold">
                                    &nbsp;</td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label6" runat="server" Text="Name of Student"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label17" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">
                               <asp:TextBox ID="txtName" runat="server" Width="500px"></asp:TextBox>
  <asp:Label ID="lbl1" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentName" 
                runat="server" ForeColor="Red"
                ErrorMessage="Student name is required"
                ControlToValidate="txtName" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>

                             <asp:TextBox ID="txtID" runat="server" Width="100px" Visible="false"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label8" runat="server" Text="Father's Name"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label15" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">
                                         <asp:TextBox ID="txtFather_Name" runat="server" Width="500px"></asp:TextBox>
                                      <asp:Label ID="lbl2" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorFather" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' Father name is required"
                ControlToValidate="txtFather_Name" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>

                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label7" runat="server" Text="Mother's Name"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label16" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">
                                         <asp:TextBox ID="txtMother_Name" runat="server" Width="500px"></asp:TextBox>
                                      <asp:Label ID="lbl3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorMother" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' Mother name is required"
                ControlToValidate="txtMother_Name" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label9" runat="server" Text="Name of College"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">
                                         <asp:TextBox ID="txt_ClgName" runat="server" Width="500px"></asp:TextBox>
                                      <asp:Label ID="lbl4" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorInstitution" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' College/ Institution name is required"
                ControlToValidate="txt_ClgName" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                     </td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label1" runat="server" Text="HSC Examination"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label2" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>
                                      <asp:Label ID="lblYear" runat="server" Text="Year - 2017"></asp:Label>
                                </td>
                                 <td class="auto-style20">

                                </td>

                                 <td class="auto-style21">
 <asp:Label ID="Label4" runat="server" Text="Group"></asp:Label>
                                </td>
                                 <td>
 <asp:Label ID="Label5" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>

                                      <asp:DropDownList ID="ddlGroup" runat="server"  Width="250px" >
<asp:ListItem Selected="True" Value="-1">---Select---</asp:ListItem>
                     <asp:ListItem Value="1">Science</asp:ListItem>
                     <asp:ListItem Value="2">Business Studies</asp:ListItem>
                         <asp:ListItem Value="3">Arts</asp:ListItem>
                                          <asp:ListItem Value="4">Others</asp:ListItem>
                         
                 </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorGroup" 
                               ControlToValidate="ddlGroup" InitialValue="-1" 
                                runat="server" Text="*" ForeColor="Red" 
                 ErrorMessage="A specific Group is required">
                               </asp:RequiredFieldValidator>

                                
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label10" runat="server" Text="Board"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label12" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>


                              <asp:DropDownList ID="ddlBoard" runat="server" 
                                            Height="22px" Width="250px" >
                                            <asp:ListItem Selected="True" Value="-1">---Please Select---</asp:ListItem>
                                            <asp:ListItem Value="1">Barisal</asp:ListItem>
                                            <asp:ListItem Value="2">Chittagong</asp:ListItem>
                                            <asp:ListItem Value="3">Comilla</asp:ListItem>
                                            <asp:ListItem Value="4">Dhaka</asp:ListItem>
                                            <asp:ListItem Value="5">Dinajpur</asp:ListItem>
                                            <asp:ListItem Value="6">Jessore</asp:ListItem>
                                            <asp:ListItem Value="7">Rajshahi</asp:ListItem>
                                            <asp:ListItem Value="8">Sylhet</asp:ListItem>
                                  <asp:ListItem Value="9">Madrasah</asp:ListItem>
                                          </asp:DropDownList>
                                      <asp:Label ID="lbl5" runat="server" Text="*" ForeColor="Red"></asp:Label>

                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorBoard" 
                               ControlToValidate="ddlBoard" InitialValue="-1" 
                                runat="server" Text="*" ForeColor="Red" 
                 ErrorMessage="A specific Board is required">
                               </asp:RequiredFieldValidator>



                                </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style21">
 <asp:Label ID="Label11" runat="server" Text="Roll"></asp:Label>
                                </td>
                                 <td>
                                      <asp:Label ID="Label13" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>
                                         <asp:TextBox ID="txtRoll" runat="server" Width="250px"></asp:TextBox>
                                      <asp:Label ID="lbl6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorRoll" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' Roll is required"
                ControlToValidate="txtRoll" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                         </td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label21" runat="server" Text="GPA "></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label22" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>


                                     <asp:TextBox ID="txtGPA" runat="server" Width="250px"></asp:TextBox>
                                      <asp:Label ID="lbl7" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidatorGPA" 
                runat="server" ForeColor="Red"
                ErrorMessage="GPA is required"
                ControlToValidate="txtGPA" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style21">
                                     Reg: No</td>
                                 <td>
                                      :</td>
                                 <td>
                                         <asp:TextBox ID="txtReg" runat="server" Width="250px"></asp:TextBox>
                                      <asp:Label ID="lbl8" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorReg" 
                runat="server" ForeColor="Red"
                ErrorMessage="Students' Registration Number is required"
                ControlToValidate="txtReg" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                                       </td>
                            </tr>

                            <tr>
                                <td class="auto-style19" style="vertical-align: top">
                                    <asp:Label ID="Label18" runat="server" Text="Present Address"></asp:Label>
                                </td>
                                 <td class="auto-style20" style="vertical-align: top">
                                      <asp:Label ID="Label24" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td colspan="5">


                                          <asp:TextBox ID="txtAddress" Height="50px" TextMode="MultiLine" runat="server" Width="500px"></asp:TextBox>
                                      <asp:Label ID="lbl9" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" 
                runat="server" ForeColor="Red"
                ErrorMessage="Address is required"
                ControlToValidate="txtAddress" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>

                                         </td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label19" runat="server" Text="Mobile Number"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label25" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>


                                         <asp:TextBox ID="txtMobile1" runat="server" Width="250px" Visible="false"></asp:TextBox>
                                     
                                      <asp:Label ID="lb1" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" 
                runat="server" ForeColor="Red" validationexpression="^[0-9]{11}$"
                ErrorMessage="Mobile No is required"
                ControlToValidate="txtMobile" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>


                                     <asp:TextBox runat="server" id="txtMobile" Width="250px" />
                                        <asp:Label ID="lb2" runat="server" Text="*" ForeColor="Red"></asp:Label>
<asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="txtMobile"  Text="*" ForeColor="Red" validationexpression="^[0-9]{11}$" errormessage="Please enter your Mobile No!" />
<br />
                                         </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style21">
                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                                 <td>
                                         &nbsp;</td>
                            </tr>

                            <tr>
                                <td class="auto-style19">
                                    <asp:Label ID="Label20" runat="server" Text="E-mail (if any)"></asp:Label>
                                </td>
                                 <td class="auto-style20">
                                      <asp:Label ID="Label26" runat="server" Text=":"></asp:Label>
                                </td>
                                 <td>


                                         <asp:TextBox ID="txtMail" runat="server" Width="250px"></asp:TextBox>
                                         </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style21">
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
                                        <asp:Label ID="lb3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtSum" Text="*" ForeColor="Red"
                                         runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                         </td>
                                 <td class="auto-style20">

                                     &nbsp;</td>

                                 <td class="auto-style21">
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


                                    <asp:Label ID="Label23" runat="server" Text="Last date of Application 27/09/2017"></asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td  colspan="7" style="text-align: left; margin-left:30px">

 <a href="RegisteredGPA.aspx"" style="color: #0000FF; font-weight: bold;" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">List of Successfully Registered Students</a>
                            
                                   </td>
                            </tr>

                            <tr>
                                <td class="auto-style19" colspan="7" style="text-align: left; margin-left:30px">

                                    &nbsp;</td>
                            </tr>

                            <tr>
                                <td class="auto-style19" colspan="7" style="color: #FF0000;">
                                     1. Fill-up the necessary box's(* marked) information.<br />
                        2. After registration, participant will be able to print the Reception Program Admit Card. <br />           
3. To attend the program, participant must bring the print-out copy of successful registration along with HSC Marksheet and HSC Exam Admit Card.
<!--<br/>3. Selected participants will be informed on Wednesday, 21th September, 2017 through email/Phone/SMS.-->

                                    &nbsp;</td>
                            </tr>

                        </table>
                             

                     
                 <br />
               

                 </div>


              
          </form>

    </div>
</asp:Content>
