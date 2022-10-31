<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Photo_MathOlym.aspx.cs" Inherits="Eastern_Uni.Photo_MathOlym" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300' rel='stylesheet' type='text/css'/>
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bjqs-1.3.min.js"></script>



    
   
    
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
                     <table >
                    <tr style="text-align: center">
                        <td class="auto-style6">
                            <asp:Label ID="lblAlbum_Name" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="18pt"></asp:Label>

                        </td>
                    </tr>

                    

                </table>
                   <div id="banner-slideNew" style="border:solid medium white; left:10px;">

              <!-- start Basic Jquery Slider -->


               <ul class="bjqs">




                    <li>
                       
                       <img id="ss_1" runat="server" /></li>
                   <li>
                       <img id="ss_2" runat="server"  /></li>
                   <li>
                       <img id="ss_3" runat="server"  /></li>

                   <li>
                       <img id="ss_4" runat="server"  /></li>
                   <li>
                       <img id="ss_5" runat="server"  /></li>
                   <li>
                       <img id="ss_6" runat="server"  /></li>
                   
                    
                    <li>
                       
                       <img id="ss_7" runat="server" /></li>
                   <li>
                       <img id="ss_8" runat="server"  /></li>
                   <li>
                       <img id="ss_9" runat="server"  /></li>

                   <li>
                       <img id="ss_10" runat="server"  /></li>
                <!--  <li>
                       <img id="ss_11" runat="server"  /></li>
                   <li>
                       <img id="ss_12" runat="server"  /></li>
                      
                    <li>
                       <img id="ss_13" runat="server"  /></li>
                   <li>
                       <img id="ss_14" runat="server"  /></li>-->
               </ul>
              <!-- end Basic jQuery Slider -->

          </div> 

       



  
                     <table style="width: 778px">
                         

                         <tr>
                             <td>





                      <asp:Button ID="Button7" runat="server" Text="" Height="170px" style="background-image: url('image/Photo_MathOlym/HEUMO_2015.jpg')  ;margin-left: 50px" Width="250px" BackColor="#7E9DAF" Font-Bold="True"   OnClick="Button7_Click" />
                     
                     
                             </td>
                             <td>

                                 &nbsp;</td>
                            
                         </tr>


                         <tr>
                             <td>





<asp:Button ID="lblAlbum7" runat="server" Text="EUMO 2015" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px" OnClick="lblAlbum7_Click" Width="215px" style="margin-left: 80px" />
                               



                             </td>
                             <td>

                                 &nbsp;</td>
                            
                         </tr>


                         <tr>
                             <td>





                                 &nbsp;</td>
                             <td>

                                 &nbsp;</td>
                            
                         </tr>


                         <tr>
                             <td>





                      <asp:Button ID="Button6" runat="server" Text="" Height="170px" style="background-image: url('image/Photo_MathOlym/EUMO_2014(2).jpg')  ;margin-left: 50px" Width="250px" BackColor="#7E9DAF" Font-Bold="True"   OnClick="Button6_Click" />
                     
                     
                             </td>
                             <td>

                                 <asp:Button ID="Button5" runat="server" Text="" Height="170px" style="background-image: url('image/Photo_MathOlym/EUMO_2014(1).jpg')  ; margin-left: 50px" Width="250px" BackColor="#7E9DAF" Font-Bold="True" OnClick="Button5_Click " />
                    
                             </td>
                            
                         </tr>


                         <tr>
                             <td>

<asp:Button ID="lblAlbum6" runat="server" Text="EUMO 2014- Album 2" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px" OnClick="lblAlbum6_Click" Width="215px" style="margin-left: 80px" />
                               



                             </td>
                             <td>

                                
                                 <asp:Button ID="lblAlbum5" runat="server" Text="EUMO 2014- Album 1" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum5_Click" Width="322px" />
                                 
                             </td>
                            
                         </tr>


                         <tr>
                             <td>





                                 &nbsp;</td>
                             <td>

                                 &nbsp;</td>
                            
                         </tr>


                         <tr>
                             <td>





                     <asp:Button ID="Button4" runat="server" Text="" Height="170px" style="background-image: url('image/Photo_MathOlym/NationalPhy_prev.jpg')  ; margin-left: 50px" Width="250px" BackColor="#7E9DAF" Font-Bold="True" OnClick="Button4_Click " />
                     
                             </td>
                             <td>

                      <asp:Button ID="Button3" runat="server" Text="" Height="170px" style="background-image: url('image/Photo_MathOlym/EUMO_2012.jpg')  ;margin-left: 50px" Width="250px" BackColor="#7E9DAF" Font-Bold="True"   OnClick="Button3_Click" />
                    
                             </td>
                            
                         </tr>


                         <tr>
                             <td>





                                 <asp:Button ID="lblAlbum4" runat="server" Text="Phyiscs Olympiad (National Round)" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum4_Click" Width="322px" />
                                
                             </td>
                             <td>

                                <asp:Button ID="lblAlbum3" runat="server" Text="EUMO 2012" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px" OnClick="lblAlbum3_Click" Width="215px" style="margin-left: 80px" />
                                
                             </td>
                            

                         </tr>


                         <tr>
                             <td>





                                 &nbsp;</td>
                             <td>

                                 &nbsp;</td>
                            

                         </tr>


                         <tr>
                             <td>





                     <asp:Button ID="Button1" runat="server" Text="" Height="170px" style="background-image: url('image/Photo_MathOlym/Physics_Dk2013.jpg')  ; margin-left: 50px" Width="250px" BackColor="#7E9DAF" Font-Bold="True" OnClick="Button1_Click " />
                     
                             </td>
                             <td>

                      <asp:Button ID="Button2" runat="server" Text="" Height="170px" style="background-image: url('image/Photo_MathOlym/EUMO_2011.jpg')  ;margin-left: 50px" Width="250px" BackColor="#7E9DAF" Font-Bold="True"  OnClick="Button2_Click" />
                     
                             </td>
                            

                         </tr>


                         <tr>
                             <td style="font-weight: bold; color: #0000FF; text-align: left">
                                 <asp:Button ID="lblAlbum1" runat="server" Text="Phyiscs Olympiad (Dhaka Division)" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum1_Click" Width="314px" style="margin-left: 0px" />
                                
                                 </td>
                             <td style="font-weight: bold; color: #0000FF; text-align: left">
                                 <asp:Button ID="lblAlbum2" runat="server" Text="EUMO 2011" BorderStyle="None" Font-Bold="True" ForeColor="Blue" Height="20px"  OnClick="lblAlbum2_Click" Width="215px" style="margin-left: 80px" />
                                </td>
                             

                         </tr>


                         <tr>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 &nbsp;</td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 &nbsp;</td>
                          

                         </tr>
                         <tr>
                             <td>





                                 &nbsp;</td>
                             <td>

                                 &nbsp;</td>
                             

                         </tr>


                         <tr>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 &nbsp;</td>
                             <td style="font-weight: bold; color: #0000FF; text-align: center">
                                 
                                </td>
                           

                         </tr>

                     </table>
                     
                     
                      
                </form>

            </div>


            
        </div>


    </div>


</asp:Content>
