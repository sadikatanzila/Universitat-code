<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="HR_CandidateReg1.aspx.cs" Inherits="Eastern_Uni.HR_CandidateReg1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

    <script lang="javascript" type="text/javascript">
       
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
                    if (isNaN(years))
                    {


                      
                        document.getElementById('lblAge').innerHTML = '';
                        document.getElementById('ContentPlaceHolder1_lblError').innerHTML = 'Input date is incorrect!';
                        return false;

                    }

                    else
                    {
                        document.getElementById('ContentPlaceHolder1_lblError').innerHTML = '';

                        if (months < 0 || (months == 0 && days < 0))
                        {
                            years = parseInt(years) - 1;
                            months = 12 + months;
                            document.getElementById('lblAge').innerHTML = years + ' Years ,' + months + ' Months'
                        }
                        else
                        {
                           
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
    <title>Candidate Forms</title>


     <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="full_content">

           <form id="Form2" runat="server">

    
    <div>
        
Date of Birth :<asp:TextBox ID="txtBirthDate" runat="server"  onblur="CalculateAge()"/>(mm/dd/yyyy)
      <!--  <input type="button" value="text" onclick="CalculateAge()" />-->
        
<span style="color: Red">
  

<asp:Label ID="lblError" runat="server"></asp:Label></span>
<br />
Age&nbsp;&nbsp;&nbsp; : <span id="lblAge"></span>
</div>

       
               
               <div style="font-family: Arial">
    <table style="border: 1px solid black">
        <tr>
            <td colspan="2">
                <h2>User Registration</h2>
            </td>
        </tr>
        <tr>
            <td>
                <b>Email</b>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="100px">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
                runat="server" ForeColor="Red"
                ErrorMessage="Email is required"
                ControlToValidate="txtEmail" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
                runat="server" ErrorMessage="Invalid Email Format"
                ControlToValidate="txtEmail" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Text="*">
                </asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>User Name</b>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Width="100px">
                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" 
                runat="server" ForeColor="Red"
                ErrorMessage="Username is required"
                ControlToValidate="txtUserName" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Password</b>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="100px" 
                TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
                runat="server" ForeColor="Red"
                ErrorMessage="Password is required"
                ControlToValidate="txtPassword" Display="Dynamic" Text="*">
                </asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <b>Confirm Password</b>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" 
                Width="100px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
                ErrorMessage="Password and Confirm Password must match"
                ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                Operator="Equal" Type="String" ForeColor="Red" Text="*">
                </asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSubmit" runat="server" Text="Save"  />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                ShowSummary="true" DisplayMode="List"
                />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
            </td>
        </tr>
    </table>
</div>  
        </form>
         </div>
</asp:Content>
