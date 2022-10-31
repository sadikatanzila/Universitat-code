<%@ Page Title="" Language="C#" MasterPageFile="~/masterl.Master" AutoEventWireup="true" CodeBehind="Homel.aspx.cs" Inherits="Eastern_Uni.Homel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Commonl.css" rel="stylesheet" />
    <link href="CSS/demol.css" rel="stylesheet" />
    <link href="CSS/bjqsl.css" rel="stylesheet" />
    <link href="CSS/Homel.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300' rel='stylesheet' type='text/css'/>
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bjqs-1.3.min.js"></script>

    <style type="text/css" media="screen">
        body
         {
            background:-webkit-gradient(linear, 0 0, 100% 100%, from(#000) to (#fff));
         }
        </style>
    <script class="secret-source">
        jQuery(document).ready(function ($) {

            $('#banner-slide').bjqs({
                animtype: 'slide',
                height: 280,
                width: 785,
                responsive: true,
                randomstart: true

            });

        });
          </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="ContentBody">


          <div id="second">
             <div id="s_container">
    <div id="link">    
       <table style="width:100%;">
           <tr>
               <td style="width:27%; vertical-align: top;">

                <table width="99%" border="0">
          <tr>
            <td width="6%">&nbsp;</td>
            <td width="94%">
             <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="20" valign="middle"
            align="center"
      ><p><img src="Images/smriti shoudha.jpg" width="175" height="146" /></p>
                  </td>
              </tr>
           
               
              <tr>
                <td height="20" valign="middle"
            align="center"
      >&nbsp;</td>
              </tr>
           
               
                </table>
                </td>
              </tr>
                    </table>

               </td>
               <td style="width:73%;"; vertical-align: top;">
                   
                   <div id="banner-slide" style="border:solid medium white; left:0px; top:0px">

              <!-- start Basic Jquery Slider -->


               <ul class="bjqs">




                    <li>
                       
                       <img id="s_1" runat="server" src="~/Images/1.jpg"/></li>
                   <li>
                       <img id="s_2" runat="server" src="~/Images/2.jpg" /></li>
                   <li>
                       <img id="s_3" runat="server" src="~/Images/3.jpg" /></li>

                   <li>
                       <img id="s_4" runat="server"  src="~/Images/4.jpg"/></li>
                   <li>
                       <img id="s_5" runat="server" src="~/Images/5.jpg" /></li>
                   <li>
                       <img id="s_6" runat="server"  src="~/Images/6.jpg"/></li>
                   
                    <!--
                    <li>
                       
                       <img id="s_7" runat="server" src="~/Images/WebBanner.jpg" /></li>
                   <li>
                       <img id="s_8" runat="server"  src="~/Images/WebBanner.jpg"/></li>
                   <li>
                       <img id="s_9" runat="server" src="~/Images/WebBanner.jpg" /></li>

                   <li>
                       <img id="s_10" runat="server" src="~/Images/WebBanner.jpg" /></li>
                  <!-- <li>
                       <img id="s_11" runat="server"  /></li>
                   <li>
                       <img id="s_12" runat="server"  /></li>-->
                      
                   -->
               </ul>
              <!-- end Basic jQuery Slider -->

          </div>
               </td>
           </tr>
           <tr>
               <td style="width:27%; vertical-align: top;" rowspan="4">
                   <table width="99%" border="0">  
                       
          <tr>
            <td width="6%">&nbsp;</td>
            <td width="94%" style="vertical-align: top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="20"
            align="right" valign="middle" bgcolor="#CCCCCC"
      ><strong>Consular Services</strong></td>    
              </tr> 
                 <tr> 
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;">&nbsp;</td> 
              </tr> 
              <tr>
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;">
                <a href="http://www.bhclondon.org.uk/mrp_2014.html">Machine  
                Readable Passport</a></td>  
              </tr>
              <tr>
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;"><a href="http://www.bhclondon.org.uk/passport.php">Passport Status</a></td> 
              </tr>
              <tr>
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;"><a href="http://www.bhclondon.org.uk/mrv_2014.html">Machine Readable Visa</a></td> 
              </tr>
              <tr>
                <td style="border-bottom:1px solid #cc3300;" height="20" valign="middle" 
            align="right" 
      ><a href="http://www.bhclondon.org.uk/NVR.html">&#39;No Visa Required&#39; Sticker</a></td> 
              </tr>
              <tr>
                <td style="border-bottom:1px solid #cc3300;" height="20" valign="middle" 
            align="right" 
      ><a href="http://www.bhclondon.org.uk/Visa.html">About Visa</a></td> 
              </tr>
              <tr> 
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;"><a href="http://www.bhclondon.org.uk/Passport.html">About 
                Passport</a></td> 
              </tr> 
              <tr> 
                <td bgcolor="#DCDCDC" height="20" valign="middle" 
            align="right" 
      >&nbsp;</td> 
              </tr> 
              <tr> 
                <td height="20" 
            align="right" valign="middle" bgcolor="#CCCCCC" 
      ><span style="border-bottom:1px solid #cc3300;"><strong>Our Assistant High Commissions</strong></span></td>    
              </tr> 
              <tr> 
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;">&nbsp;</td> 
              </tr> 
              <tr> 
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;"><a href="http://www.bhclondon.org.uk/Assistant%20High%20Commission_Birmingham.html">Birmingham</a></td> 
              </tr> 
              <tr> 
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;">
                <a href="http://bahcmanchester.org.uk/">Mancheshter</a></td> 
              </tr> 
              <tr> 
                <td height="20" valign="middle" 
            align="right" 
      style="border-bottom:1px solid #cc3300;">&nbsp;</td> 
              </tr> 
              <tr> 
                <td width="206" height="20" 
            align="right" valign="middle" 
      style="border-bottom:1px solid #cc3300;"><p><strong><a href="http://www.bhclondon.org.uk:2095">WEBMAIL</a></strong></p></td> 
              </tr> 
              </table> 
            <p align="right"></p> 
            <p align="right"></p></td> 
          </tr> 
        </table>
                   
                

                   </td>
               <td style="width:73%;"; vertical-align: top;">
                   
                   
               <marquee style="font-size: 14pt; font-family: Times New Roman; color: #008000; font-weight: bold; font-style:italic" scrollamount="3">Apply for Outstanding Achievement Awards 2014. For details please click here...</marquee>
               
               </td>
           </tr>
           <tr>
               <td style="width:73%;"; vertical-align: top;">
                   
                   &nbsp;</td>
           </tr>
           <tr>
               <td style="border-style: hidden hidden solid hidden; border-color: #C40000; width:73%; border-bottom-width: 3px;"; vertical-align: top;">
                   
                   
                   <h3>Welcome to Bangladesh High Commission in London</h3></td>
           </tr>
           <tr>
               <td style="width:73%;"; vertical-align: top;">
                   <table width="100%" border="0" style="vertical-align: top"> 
            <tr> 
              <td width="77%" style="vertical-align: top">


                   <p class="content">Welcome                 to the official web site of the High Commission of Bangladesh, London,                 UK. This site is intended primarily to provide helpful information                 regarding Bangladesh, and about the functioning of the various wings                 of this Embassy. It lists contact points for various service that                 the Embassy provides. It also makes available various consular forms                 for downloading, along with relevant instructions required by Bangladeshi                 nationals in the United Kingdom as well as UK nationals who wish                 to travel to Bangladesh. The site also attempts to provide links                 to other sites, both government and non-government, which provide                 additional information on Bangladesh. We hope that everyone visiting                 this site will find it useful and helpful. Please feel free to suggest                 improvements.</p> 

                  <table width="100%" border="0"> 
                  <tr> 
                    <td> 
                    <div style="border-top-style: inset; padding-left: 0; padding-right: 0"> 
                      &nbsp;</div> 
                    </td> 
                  </tr> 
                  </table>
                  </td> 
              <td width="1%">&nbsp;</td> 
              <td width="22%" style="vertical-align: top"> 
                  <table width="100%" border="0" cellspacing="0" style="border-collapse: collapse" cellpadding="0" height="340"> 
                <tr> 
                  <td bgcolor="#CCCCCC" align="center" height="19">
                      <p align="center"><b><blink> 
              <a href="Office%20Time%20&%20List%20of%20Holidays.html"><font color="#008000">Holidays List 2014</font></a></blink>
                  
                                </b></p>

                  </td> 
                </tr> 
                <tr> 
                  <td bgcolor="#CCCCCC" align="center" height="19">
                  <font size="2"><a href="http://www.bhclondon.org.uk/appform.pdf">Form for Achievement Award 2014</a></font></td> 
                </tr> 
                <tr> 
                      <td align="center" bgcolor="#DCDCDC" height="19"> 
                      <p class="MsoNormal"> 
                      <font size="2" color="#FF00FF"><a href="fmedical.pdf">
                      <font color="#FF00FF"></font>
                      <font color="#FF00FF"><a href="http://www.bhclondon.org.uk/MBBS.pdf">
                      <font color="#FF0000">Reserved seats for the foreign 
                      students at the Government Medical and Dental Dental Colleges 
                      in Bangladesh for the 
                      Educational Year&nbsp; 2013-2014</font></a></font></a></font></td>  
                    </tr> 

                <tr> 
                  <td bgcolor="#CCCCCC" height="14">
                  <p align="center"><strong style="font-weight: 400">
                  <font size="2" color="#0000FF"><a href="http://www.bhclondon.org.uk/ekushi.pdf">
                  <font color="#0000FF">Seeking nominations for the&nbsp; Ekushe 
                  Padok 2015</font></a></font></strong></td>   
                </tr> 
                <tr> 
                  <td height="30"><a href="http://www.bangladesh.gov.bd"><img src="Images/National Portal.jpg" width="175" height="30" /></a></td> 
                </tr> 
                <tr> 
                  <td height="41"><a href="http://www.mofa.gov.bd"><img src="Images/MOFA.jpg" width="175" height="41" /></a></td> 
                </tr> 
                <tr> 
                  <td height="61"><a href="http://www.tourismboard.gov.bd"><img src="Images/beautifulBangladesh.jpg" alt="" width="175" height="61" /></a></td> 
                </tr> 
                <tr> 
                  <td height="40"><a href="http://www.epb.gov.bd/"><img src="Images/Export Promotion Bureau.jpg" width="175" height="40" /></a></td> 
                </tr> 
                <tr> 
                  <td height="39"><a href="http://www.http://boi.gov.bd/"><img src="Images/Board of Investment.jpg" width="175" height="39" /></a></td> 
                </tr> 
                <tr> 
                  <td height="39"><img src="Images/ethotthokosh.jpg" alt="" width="175" height="39" /></td> 
                </tr> 
                </table></td>    
            </tr> 
             
            </table>
                   
                   </td>
           </tr>
       </table>
        </div>
    </div>
              </div>
</div>
</asp:Content>
