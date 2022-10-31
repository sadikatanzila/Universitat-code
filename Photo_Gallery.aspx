<%@ Page Title="Photo Gallery" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Photo_Gallery.aspx.cs" Inherits="Eastern_Uni.Photo_Gallery1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300' rel='stylesheet' type='text/css'/>
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bjqs-1.3.min.js"></script>



    <link href="CSS/CSS1.css" rel="stylesheet" type="text/css" />
    <script src="js/JavaScript1.js" type="text/javascript"></script>
   
    
    <style type="text/css" media="screen">
        body
         {
            background:-webkit-gradient(linear, 0 0, 100% 100%, from(#000) to (#fff));
         }
        .auto-style6 {
            width: 780px;
        }
    </style>



    <script class="secret-source">
        jQuery(document).ready(function ($) {

            $('#banner-slideNew').bjqs({
                animtype: 'slide',
                height: 570,
                width: 750,
                responsive: true,
                randomstart: true

            });

        });
          </script>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
       



        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/PhotoGallery.jpg')">
             
                 <form id="Form1" runat="server" >
              
               <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    


               <div id="photos">  
  <img id="ss_1" runat="server" alt="in the outfield" style="height:565px; width:745px" />  
  <img id="ss_2" runat="server" alt="ballpark scoreboard" style="height:565px; width:745px" />  
  <img id="ss_3" runat="server" alt="batting helmets" style="height:565px; width:745px" />  
  <img id="ss_4" runat="server" alt="baseball in glove" style="height:565px; width:745px" />  
  <img id="ss_5" runat="server" alt="in the outfield" style="height:565px; width:745px" />  
  <img id="ss_6" runat="server" alt="ballpark scoreboard" style="height:565px; width:745px" />  
  <img id="ss_7" runat="server" alt="batting helmets" style="height:565px; width:745px" />  
  <img id="ss_8" runat="server" alt="baseball in glove" style="height:565px; width:745px" />  
  <img id="ss_9" runat="server" alt="in the outfield" style="height:565px; width:745px" />  
  <img id="ss_10" runat="server" alt="ballpark scoreboard" style="height:565px; width:745px" />  
   
</div> 
                     <br /><br />
       <table >
                    <tr style="text-align: center">
                        <td class="auto-style6">
                            <asp:Label ID="lblAlbum_Name" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="18pt"></asp:Label>

                        </td>
                    </tr>

                    

                </table>               
          <!--           
                     
                          <div id="banner-slideNew" style="border:solid medium white; left:10px;">

              <!-- start Basic Jquery Slider


               <ul class="bjqs">




                    <li>
                       
                       <img id="ss_11" runat="server" /></li>
                   <li>
                       <img id="ss_12" runat="server"  /></li>
                   <li>
                       <img id="ss_13" runat="server"  /></li>

                   <li>
                       <img id="ss_14" runat="server"  /></li>
                   <li>
                       <img id="ss_15" runat="server"  /></li>
                   <li>
                       <img id="ss_16" runat="server"  /></li>
                   
                    
                    <li>
                       
                       <img id="ss_17" runat="server" /></li>
                   <li>
                       <img id="ss_18" runat="server"  /></li>
                   <li>
                       <img id="ss_19" runat="server"  /></li>

                   <li>
                       <img id="ss_20" runat="server"  /></li>
                  <!-- <li>
                       <img id="ss_21" runat="server"  /></li>
                   <li>
                       <img id="ss_22" runat="server"  /></li>
                      

               </ul>
              <!-- end Basic jQuery Slider 

          </div> 

       -->



  
                     
                     <br /><br />


                     <table style="width:99%">
                         <tr style="text-align: right">
                             <td>
                                 <a href="PhotoGallery.aspx" style="background-color: #D1D1D1; color: #0000FF; font-weight: bold; font-size: large">Back to Gallery</a>
                             </td>
                         </tr>
                     </table>
                       
                </form>

            </div>


            
        </div>


    </div>


</asp:Content>
