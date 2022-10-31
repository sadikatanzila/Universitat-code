<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR_CandLogin.aspx.cs" Inherits="Eastern_Uni.HR_CandLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Welcome to Eastern University</title>
    

  


    
</head>
<body>
    <form id="form1" runat="server">
        <div id="body">
            <div class="formtable_small">
                <div class="formtable_center" style="margin-top: 200px; width: 581px; margin-left: 450px;">

                 

                  <table style="border: medium groove #0000FF; width: 582px">

                      <tr style="background-image: url('image/Other/MasterBG_HomePage.jpg')">
                          <td class="auto-style1">

                              <img src="image/Other/BannerX.jpg" style="height: 136px; width: 574px" />
                             
<div style=" width: 350px; margin-left: 120px;">


       <table>
                        <tr>
                            <td colspan="3">
                                &nbsp;</td>
                        </tr>

                        <tr>
                            <td>
<asp:Label ID="lblTruckNo" runat="server" Text="Trucking Number"></asp:Label>
                            </td>
                            <td>
                                :</td>
                            <td>
                               <asp:TextBox ID="txt_truckNo" runat="server" Width="200" value="" onfocus="if(this.value=='user name .........')this.value=''" onblur="if(this.value=='')this.value='user name .........'" style="margin-left: 43px"></asp:TextBox>
                            
                            </td>
                        </tr>

                        <tr>
                            <td>
<asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
                            </td>
                            <td>
                                :</td>
                            <td>
                                <asp:TextBox ID="txtpassword" runat="server" Width="200" Text="Password" TextMode="Password" value="" onfocus="if(this.value=='password')this.value=''" onblur="if(this.value=='')this.value='password'" style="margin-left: 45px"></asp:TextBox>
                           
                            </td>
                        </tr>

                        <tr style="text-align: center">
                            <td colspan="3">
                             
                                <asp:Button ID="btnLogin" runat="server" Text="Login"  OnClick="btnLogin_Click" Height="27px" Width="95px" />
                        
                            </td>
                        </tr>

                        <tr style="text-align: center">
                            <td colspan="3">
                             
                                    <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="false"></asp:Label>
                                    
                            </td>
                        </tr>

                    </table>
                                
                              </div>
                              <br />
                              If you have not any Trucking No, Registrar form this page:
                              <div>

                                  <a href="HR_CandLogin.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="text-decoration: none; color: #0000FF; font-weight: bold;">Applicant Registrar</a>
                              </div>
                          </td>
                         

                      </tr>
                        
                    

                     

                    

                  </table>
                    
                    
                    
                     
                </div>
            </div>
        </div>
    </form>
</body>
</html>
