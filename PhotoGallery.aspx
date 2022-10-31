<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="Eastern_Uni.PhotoGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
     <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />

    <link href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300' rel='stylesheet' type='text/css'/>
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bjqs-1.3.min.js"></script>

     <style type="text/css">
        .auto-style4 {
            width: 38px;
        }
        .auto-style5 {
            width: 712px;
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
            

             <div id="s_container" style="background-image: url('image/Other/Content_Banner.png'); background-repeat: no-repeat">

                        <br />
                       
                        <br /><br />
                  <table style="width: 95%;">
                    <tr style="font-weight: bold; text-align: right; font-size: 25px;">
                        <td >

                            
                           
                            <asp:Label ID="lblAlbumName" runat="server" Text="Photo Gallery"></asp:Label>

                        </td>

                    </tr>

                </table>

                 <br />
                <br />
                 <br />
                <br />

                <form id="Form1" runat="server">



                    <asp:Panel ID="pnlAlbumView" runat="server">
                    

                         <table >
                    <tr style="text-align: center">
                        <td class="auto-style6">
                            <asp:Label ID="lblAlbum_Name" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="18pt"></asp:Label>
                            <asp:Label ID="lblAlbumID" runat="server" Font-Bold="True" ForeColor="black" Font-Size="18pt" Visible="false"></asp:Label>
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
                  <!-- <li>
                       <img id="ss_11" runat="server"  /></li>
                   <li>
                       <img id="ss_12" runat="server"  /></li>-->
                      

               </ul>
              <!-- end Basic jQuery Slider -->

          </div>






</asp:Panel>
               

<table>
    <tr>
        <td>


        </td>

    </tr>
    </table>

                    <asp:GridView ID="gvAlbum" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px"
                                                CellPadding="3" DataKeyNames="AlbumID" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%" style="margin-left: 15px"  OnRowEditing="gvAlbum_RowEditing" 
                                                 OnPageIndexChanging="gvAlbum_PageIndexChanging" ShowHeader="False">
                                                <Columns>
                                                    
                                                    
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                              <asp:Label ID="lblAlbumID" runat="server" Text='<%#Bind("AlbumID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>

                                                        

                                                       <asp:TemplateField   HeaderText="Album Name"  ItemStyle-Width="95%">
                                                        <ItemTemplate>

                                                           
                                                            <asp:Image ID="Image2" runat="server" Height="160px" ImageUrl='<%# Bind("HeaderImage") %>' Width="235px" />
                                                <br />
                                                             &nbsp;&nbsp;&nbsp;&nbsp; <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text='<%#Bind("Album_Name") %>' Font-Bold="true" ForeColor="Blue" ></asp:LinkButton>
                                                            <br /><br />
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left" Font-Size="Large"/>
                                                        </asp:TemplateField>

                                                     

                                                

                                                    

                                                    

                                                </Columns>
                                                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                 <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>


                    <br />


                    

</form>


                       

            </div>


            
        </div>


    </div>


</asp:Content>
