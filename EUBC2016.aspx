<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="EUBC2016.aspx.cs" Inherits="Eastern_Uni.EUBC2016" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />

<script src="jquery-1.3.2.min.js" language="javascript" type="text/javascript"></script>
<script src="jquery-blink.js" language="javscript" type="text/javascript"></script>
 
<script type="text/javascript" language="javascript">

    $(document).ready(function () {
        $('.blink').blink(); // default is 500ms blink interval.
        //$('.blink').blink({delay:100}); // causes a 100ms blink interval.
    });

</script>



    <style type="text/css">
        .auto-style3 {
            width: 3%;
        }
    </style>


    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
    


        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('image/Other/Content_Banner.png')">

                <form id="Form1" runat="server">
             <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                     </td>
                    
                     <td colspan="2" style="width:80%">

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 2px; width: 100%;">

                    

                   
                           <asp:Label ID="Label1" runat="server" Text="Eastern University Business Challenge 2016"></asp:Label>
                  <br /> <strong style="font-size: 16px">(Nationwide - For H.S.C. / A-Level / equivalent students)
                        <br />   12 March (Saturday), 2016</strong>  
                           </p></td>

                      <td style="width:20%">

                         
                           <asp:Image ID="Image1" runat="server" ImageUrl="~/Admins/Data/Logo_EUBC2016.png" Height="95px" Width="130px"/>
                          </td>
                 </tr>


                 </table>

                      <table style="width:99%; height: 76px;">
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             &nbsp;</td>
                     </tr>
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                               Organized by the Faculty of Business Administration Eastern University
                         </td>
                     </tr>
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label></td>
                     </tr>
                          </table>
                    <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td colspan="2" rowspan="3">
<!--
                          <div class="smallbox" style="margin-top:0px; color: #ABC9D8; width: 180px;">
                              

                  <a href="Photo_MathOlym.aspx" ><img src="image/Photo_MathOlym/NationalPhy.jpg" style="height: 134px; width: 200px; margin-top: 0px;" /></a>
                  <br />  <a href="Photo_MathOlym.aspx" style="color: blue; font-weight: bold; font-size: 15px;">Photo Gallery</a>

                </div>
                         -->
                     </td>
                     <td style="width:80%;text-align: right;">

                      
                     
                    
                           <a href="RegEUBC2016.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="color:blue; font-weight: bold;"><span>Click here for Online Registration</span></a> 
                 
</td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td style="width:80%; text-align: right; font-weight: bold; font-size: 16px; vertical-align: top;" rowspan="2">

                          Download Registration form:  &nbsp; 
                           
                              
                            
                        
                         
                          <asp:LinkButton ID="LinkButtonDownloadPdf" runat="server" Text="PDF" Style="color:blue;font-size: 14px;"  OnClick="LinkButtonDownloadPdf_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"/>
                         <asp:LinkButton ID="LinkButtonDownloaddoc" runat="server" Text="/ DOC" Style="color:blue;font-size: 14px;" OnClick="LinkButtonDownloaddoc_Click" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"/>
                      
                           <br /> 
                            
                          <!--  <a href="image/MathOlympiad/Group_Registration.pdf" style="color: #0000FF; font-weight: bold; " onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">Group Registration Form</a>
                          -->
                       
                              <span class="blink" style="font-size: 15px;color:red; font-weight: bold;">                    
                           Last date of registration is Monday, 9th March 2016                            
                        </span>
</td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td colspan="3">

                         <p  style="border: thin solid #000000; text-align:center; color:blue; font-weight: bold; font-style: normal; margin-left: 5px; font-size: large; background-color: #C4C4C4;"> <b>-: Call for Participation :-</b>    
                  </p></td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td style="width:15%">

                         &nbsp;</td>
                     <td class="auto-style3">

                         &nbsp;</td>
                     <td style="width:60%">

                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td colspan="3" style="text-align: center">

                         <img src="image/EUBC_RegForm/EUBC_Page1.jpg" style="width:730px" /> <br />
                         <img src="image/EUBC_RegForm/EUBC_Page2.jpg" style="width:730px" /> 

                          
                     </td>
                 </tr>
                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td style="width:15%">

                         &nbsp;</td>
                     <td class="auto-style3">

                         &nbsp;</td>
                     <td style="width:60%">

                         &nbsp;</td>
                 </tr>
             </table>  
               
              

                
                </form>

            </div>


            
        </div>


    </div>


</asp:Content>
