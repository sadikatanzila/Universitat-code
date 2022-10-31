<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EUMO_login.aspx.cs" Inherits="Eastern_Uni.EUMO_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Welcome to Eastern University</title>
    <link href="CSS/style_home.css" rel="stylesheet" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <style> p { margin: 6px 0px; } .formtable_center { padding: 0px; } 
        .btn_btn {
            margin-left: 123px;
        }
        .auto-style1 {
            height: 129px;
        }




         
    </style>

  


    
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
<div style=" width: 307px; margin-left: 150px;">
                                   <table>

                                    <tr>
                          <td style="text-align: center; font-weight: bold; color: #FF0000; font-size: 18px;">
                         <!--      Math Olimpiard-->


                          </td>
                         

                      </tr>
                        
                                    <tr>
                          <td>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username

                          </td>
                         

                      </tr>
                        
                      <tr>
                          <td>
                               <asp:TextBox ID="txtusername" runat="server" Width="200" value="" onfocus="if(this.value=='user name .........')this.value=''" onblur="if(this.value=='')this.value='user name .........'" style="margin-left: 43px"></asp:TextBox>
                            
                          </td>

                      </tr>
                      <tr>
                          <td>
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password
                            
                          </td>

                      </tr>

                      <tr>
                          <td>
                                <asp:TextBox ID="txtpassword" runat="server" Width="200" Text="Password" TextMode="Password" value="" onfocus="if(this.value=='password')this.value=''" onblur="if(this.value=='')this.value='password'" style="margin-left: 45px"></asp:TextBox>
                           
                          </td>

                      </tr>

                      <tr>
                          <td>
                       
                                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="us" CssClass="btn_btn" OnClick="btnLogin_Click" />
                        
                          </td>

                      </tr>

                       <tr id="msgtr" runat="server" visible="false" style="font-weight: bold; color: #FF0000">
                               
                                <td class="style190">
                                    <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="false"></asp:Label>
                                    
                                </td>
                     </tr>
                              </table>
                              </div>
                          </td>
                         

                      </tr>
                        
                    

                      <tr style="background-color: #4276E3">
                         <td align="middle" valign="top">
                                <a  href="Home.aspx" style="color: #FFFFFF; font-weight: bold;">Home</a></td>
                      </tr>

                    

                  </table>
                    
                    
                    
                      
                </div>
            </div>
        </div>
    </form>
</body>
</html>
