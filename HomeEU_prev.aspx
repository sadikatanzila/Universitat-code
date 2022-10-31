 <%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="HomeEU_prev.aspx.cs" Inherits="Eastern_Uni.HomeEU_prev" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/Gridstyle.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300'  rel='stylesheet' type='text/css'/>
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bjqs-1.3.min.js"></script>
    <script src="js/libs/jquery.secret-source.min.js"></script>

    <link rel="stylesheet" href="CSS/SlidesCSS/bjqsslider.css" />
    <link href="CSS/SlidesCSS/demoSlider.css" rel="stylesheet" />


      <link rel="stylesheet" href="css/nivo-slider.css" media="screen"/>
    <link rel="stylesheet" href="CSS/futurico-theme.css" media="screen"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.nivo.slider.pack.js"></script>


    <script type="text/javascript">
        function disableRightClick() {
            if (event.button == 2) {
                alert('For Security Reason Right Click is Disabled')
            }
        }
        document.onmousedown = disableRightClick
</script>

    <script>
        $(window).load(function () {
            $('#slider').nivoSlider({
                directionNavHide: false,
                captionOpacity: 1,
                prevText: '',
                nextText: ''
            });
        });
</script>
        <script class="secret-source">
            jQuery(document).ready(function ($) {

                $('#Upcoming_slides').bjqs({
                    animtype: 'slide',
                    height: 200,
                    width: 420,
                    responsive: true,
                    randomstart: true

                });

            });



            function disableRightClick() {
                if (event.button == 2) {
                    alert('For Security Reason Right Click is Disabled')
                }
            }
            document.onmousedown = disableRightClick





          </script>








    <style type="text/css">
        #form1 {
            height: 1800px;
        }
    </style>








</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >



    <form id="form1" runat="server">



    <div id="home_body" oncontextmenu="return false">

        <!--start of left menu -->
       
        















        <!-- Starts of slider------------------------------------------------------------------------------------------------------------------------------------>

        <div id="container" style="position:absolute;height:505px;width:99%; background-color:#3a55ad; top: 0px;padding:0px;margin:0px;">


          

              <!-- start Basic Jquery Slider -->
<div class="slider-wrapper futurico-theme">
            <div id="slider" class="nivoSlider">
 
        <img src="img/Slider_1.jpg" alt=""  title="#caption1"/>
 
        <img src="img/ConvoSlider.jpg" alt="" />

<img src="img/ConSl_1.jpg" alt="" />
 
        <img src="img/ConSl_2.jpg" alt="" />

         <img src="img/ConSl_3.jpg" alt="" />

   <img src="img/Yunus.jpg" alt="" />

      <img src="img/Course.jpg" alt="" />
 
        <img src="img/EUMO2016.jpg" alt="" />
 
       
 
        <img src="img/Slider_6.jpg" alt="" />

        <img src="img/Slider_7.jpg" alt="" />
 
        <img src="img/CricketTeam.jpg" alt="" />
 
        <img src="img/Slider_2.jpg" alt="" />

         <img src="img/Cultural.jpg" alt="" />


 


      <!--    <img src="img/WebBanner_2017.jpg" alt=""  title="#caption2"/>-->
 
    </div>

<div id="caption1" class="nivo-html-caption" >
			<strong>Proposed Campus</strong> 
		</div>

    <div id="caption2" class="nivo-html-caption" >
			<strong>5th Convocation of Eastern University</strong> 
		</div>

		
            </div> 

               
              <!-- end Basic jQuery Slider 
                   <iframe src="ScrollingImage.aspx" style="height:500px; width:995px"></iframe>-->

         




        </div>















        <!-- start of Nesws & Events + Student Notice Board -->


        <div id="information">

            <div class="news" >
                &nbsp&nbsp&nbsp&nbsp&nbsp<strong><span style="font-size:large;">News & Events</span></strong>
                
                <div class="box" style="border-top:solid thick black; top: 5px; left: 0px;">



                    <asp:GridView ID="grd_NewsEvents" Font-Names="Calibri"  runat="server" AutoGenerateColumns="False" 
                     BackColor="White" ShowHeader="false" ShowFooter="false"
                      AllowPaging="true" PageSize="5" BorderColor="White" BorderStyle="None" BorderWidth="0px"    
                     CellPadding="3"  DataKeyNames="serial_no" EmptyDataText="upcoming events are not available" ShowHeaderWhenEmpty="True"
                                               Width="98%" style="margin-left: 5px"  OnRowEditing="grd_NewsEvents_RowEditing"  >
                                                <Columns>
                                    <asp:TemplateField  Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblNewsID" runat="server" Text='<%#Bind("serial_no") %>'  ></asp:Label>
                                                            
                                                            
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="center" />
                                        <HeaderStyle HorizontalAlign="left"  />
                                        </asp:TemplateField>


                    <asp:TemplateField ItemStyle-Width="25%">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDetail_img" runat="server" CausesValidation="false" CommandName="Edit">
                          <asp:Image ID="PicLoc1" runat="server" Height="90px" ImageUrl='<%# Bind("HeaderImage") %>' Width="110px"  AlternateText=" "/>   
                        </asp:LinkButton>
                                             
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="left"  />
                    </asp:TemplateField>

                      <asp:TemplateField ItemStyle-Width="75%" >
                         
                        <ItemTemplate >
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                Text='<%#Bind("headline") %>'   Font-Size="16px" cssclass="change"></asp:LinkButton>
                            <br /><asp:Label ID="lblDay" runat="server" Text='<%#Bind("date") %>' ForeColor="#202020"></asp:Label>
                            &nbsp&nbsp&nbsp<asp:Label ID="lblMonth" runat="server" Text='<%#Bind("month") %>' ForeColor="#202020"></asp:Label>
                            &nbsp&nbsp&nbsp<asp:Label ID="lblYear" runat="server" Text='<%#Bind("year") %>' ForeColor="#202020"></asp:Label>
                           <br />    <asp:Label ID="lblbrief" runat="server"  Text='<%#Bind("brief") %>' Font-Size="12px"  ForeColor="#202020"></asp:Label>
                            
                            
                             <asp:LinkButton ID="lnkDetails" runat="server" CausesValidation="false" CommandName="Edit"
                                Text=' More Info...'   Font-Size="12px" cssclass="change"></asp:LinkButton>

                         
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="left"  />
                        </asp:TemplateField>
                        

                                                     
                                                   
                                                    
 </Columns>
                  

                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                              <FooterStyle BackColor="White" ForeColor="#000066" BorderStyle="None" /> 
                                               <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                        
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>














                

            </div>

                <div style="position:relative;float:left;height:15px;padding:2px 2px 2px 440px;" >
                    
                    <a href="News and Events Archive.aspx" style="text-decoration:none;color:black;">View all</a>
                </div>

                <div> &nbsp&nbsp&nbsp&nbsp&nbsp<strong><span style="font-size:large;">Photo Gallery</span></strong></div>
                 <div class="AlbumBox" style="border-top:solid thick black;top: 5px; "  >
                   
                    

                     <!--Photo Album -->
 

        <asp:DataList ID="PhotoAlbumList" runat="server" BackColor="Gray" BorderColor="#666666"  onitemcommand="PhotoAlbumList_ItemCommand"
            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"  datakeyfield="AlbumID"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal"
            Width="480px">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
           
            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="0px" />
            <ItemTemplate>
                  <asp:Label ID="lblAlbumID" runat="server" Text='<%#Bind("AlbumID") %>' Visible="false"  ></asp:Label>
                 <asp:LinkButton ID="lnkDetail_img" runat="server" CausesValidation="false" CommandName="Edit">
                          <asp:Image ID="PicLoc1" runat="server" Height="100px" ImageUrl='<%# Bind("HeaderImage") %>' Width="125px"  AlternateText=" "/>   
               </asp:LinkButton>
              <br />
               
             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit" OnClick="btnAlbum_Click"
                  Text='<%#Bind("Album_Name") %>'  ></asp:LinkButton>
             
              
            </ItemTemplate>
        </asp:DataList>
   
     

    <div style="border-style: dotted none none none; border-width: thin; border-color: #000000; position:relative; float:left; height:15px;  padding:2px 2px 2px 420px;" >
                    
                    <a href="PhotoGallery.aspx" style="text-decoration:none;color:black;">View all</a>
 </div>

                </div>



                

                </div>






            <div class="notice" >
                <!--style="background-image: url('image/Other/MasterBG_HomePage.jpg') ; background-repeat: no-repeat;"-->
                &nbsp&nbsp&nbsp&nbsp&nbsp<strong><span style="font-size:large;">Notice Board</span></strong>
                <div class="Notice_box" style="border-top:solid thick black;top: 5px; left: 0px; ">

                 <asp:GridView ID="grdNotice" Font-Names="Calibri"  runat="server" AutoGenerateColumns="False" 
                     BackColor="White" ShowHeader="false" ShowFooter="false"
                      AllowPaging="true" PageSize="5" BorderColor="White" BorderStyle="None" BorderWidth="0px"    
                     CellPadding="3"  DataKeyNames="id" EmptyDataText="" ShowHeaderWhenEmpty="True"
                                               Width="98%" style="margin-left: 5px"  OnRowEditing="grdNotice_RowEditing"  >
                                                <Columns>
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblNoticeID" runat="server" Text='<%#Bind("id") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>

                      <asp:TemplateField ItemStyle-Width="100%" >
                         
                        <ItemTemplate >
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                Text='<%#Bind("headlines") %>'   Font-Size="16px" cssclass="change"></asp:LinkButton>
                           <br />  <asp:Label ID="lblNoticeHeadingDate" runat="server"  Text='<%#Bind("Notice_Date") %>' Font-Size="12px"  ForeColor="#202020"></asp:Label>
                         <br />    <asp:Label ID="lblbrief" runat="server"  Text='<%#Bind("brief") %>' Font-Size="12px"  ForeColor="#202020"></asp:Label>
                            
                            
                             <asp:LinkButton ID="lnkDetail1" runat="server" CausesValidation="false" CommandName="Edit"
                                Text=' More Info...'   Font-Size="12px" cssclass="change"></asp:LinkButton>

                          
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="left"  />
                        </asp:TemplateField>
                        

                                                     
                                                   
                                                    
 </Columns>
                  

                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                              <FooterStyle BackColor="White" ForeColor="#000066" BorderStyle="None" /> 
                                               <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                        
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>

                <asp:GridView ID="grdNoticeOthers" Font-Names="Calibri"  Visible="false"
                        runat="server" AutoGenerateColumns="False" BackColor="White" ShowHeader="false" ShowFooter="false"
                                                AllowPaging="true" PageSize="5" BorderColor="White" BorderStyle="None" BorderWidth="0px"          
                                                     CellPadding="3" DataKeyNames="id" EmptyDataText="Notices are not available" ShowHeaderWhenEmpty="True"
                                               Width="98%" style="margin-left: 5px"  OnRowEditing="grdNoticeOthers_RowEditing" >
                                                <Columns>
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblNoticeID_Othrs" runat="server" Text='<%#Bind("id") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>
                                                    


                      <asp:TemplateField ItemStyle-Width="100%" >
                         
                        <ItemTemplate >
                             <asp:LinkButton ID="lnkDetail_Othrs" runat="server" CausesValidation="false" CommandName="Edit"
                                Text='<%#Bind("headlines") %>'   Font-Size="16px" cssclass="change" ></asp:LinkButton>
                           <br />  <asp:Label ID="lblNoticeHeadingDate_Othrs" runat="server"  Text='<%#Bind("Notice_Date") %>' Font-Size="12px"  ForeColor="#202020"></asp:Label>
                         <br />    <asp:Label ID="lblbrief_Othrs" runat="server"  Text='<%#Bind("brief") %>' Font-Size="12px"  ForeColor="#202020"></asp:Label>
                            
                            
                             <asp:LinkButton ID="lnkDetail1_Othrs" runat="server" CausesValidation="false" CommandName="Edit"
                                Text=' More Info...'  Font-Size="12px" cssclass="change"></asp:LinkButton>
                         
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="left"  />
                        </asp:TemplateField>
                        

                                                     
                                                   
                                                    
 </Columns>
                  

                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                 <FooterStyle BackColor="White" ForeColor="#000066" BorderStyle="None" /> 
                                               <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                        
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>

                </div>

          
                <div style="position:relative;float:left;height:15px;padding:2px 2px 2px 420px;" >
                    
                    <a href="Student Notices  Archive.aspx" style="text-decoration:none;color:black;">View all</a>
                </div>

                <div>
                 &nbsp&nbsp&nbsp&nbsp&nbsp<strong><span style="font-size:large; color: #FDA502;">Upcoming Events</span></strong>
                </div>


                <div class="Upcoming_Events" style="border-top:solid thick #6495ED; ">


                    <asp:GridView ID="gvClubsEvents" Font-Names="Calibri" 
                        runat="server" AutoGenerateColumns="False" BackColor="White" ShowHeader="false" ShowFooter="false"
                                                AllowPaging="true" PageSize="7" BorderColor="White" BorderStyle="None" BorderWidth="0px"                                           CellPadding="3"  DataKeyNames="EventsID" EmptyDataText="upcoming events are not available" ShowHeaderWhenEmpty="True"
                                               Width="98%" style="margin-left: 5px" OnPageIndexChanging="gvClubsEvents_PageIndexChanging"
                         OnRowEditing="gvClubsEvents_RowEditing" OnRowDataBound="gvClubsEvents_RowDataBound" >
                                                <Columns>
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblEventsID" runat="server" Text='<%#Bind("EventsID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>
                                                    
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblClubsID" runat="server" Text='<%#Bind("ClubsID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>

                      <asp:TemplateField HeaderText="Serial"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server" ForeColor="#000066"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>


                      <asp:TemplateField ItemStyle-Width="27%" >
                         
                        <ItemTemplate >
                            
                             <asp:Label ID="lbltoDate" runat="server" style="font-weight: bold" Text='<%#Bind("TimeDuration") %>' Font-Size="16px"  ForeColor="#000066"></asp:Label>
                             <asp:Label ID="lblfrmDate" runat="server" style="font-weight: bold" Text='<%#Bind("ToDay") %>' Font-Size="14px"  ForeColor="#000066"></asp:Label>
                             <asp:Label ID="lblfrmMonth" runat="server" style="font-weight: bold" Text='<%#Bind("ToMonth") %>' Font-Size="14px"  ForeColor="#000066"></asp:Label>
                            
                            


                            <!-- <asp:Label ID="lblEventsFDate" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="lblEventsMonth" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>

                             <asp:Label ID="Label22" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="Label23" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>
                                 <br />    <asp:Label ID="Label21" runat="server" style="font-size:11px"  Text='<%# Eval("FromDate", "{0:yyyy}") %>' ForeColor="#000066"></asp:Label> 
                                                       
                               -->                             
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="left"  />
                        </asp:TemplateField>
                        <asp:TemplateField  HeaderText="Events" ItemStyle-Width="73%">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                Text='<%#Bind("Headline") %>'   Font-Size="14px"
                                 ></asp:LinkButton>
                                                           
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" />
                        <HeaderStyle HorizontalAlign="center"  />
                        </asp:TemplateField>

                                                     
                                                   
                                                    
 </Columns>
                  

                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                 <FooterStyle BackColor="White" ForeColor="#000066" BorderStyle="None" /> 
                                               <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                        
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>
                     
                      <div id="Upcoming_slides" style=" margin-left:25px; margin-top:15px">

              <!-- start Basic Jquery Slider  -->
 

   <iframe src="WebForm1.aspx" style="height:205px;width:420px;border:none"></iframe>



              <!-- end Basic jQuery Slider -->

          </div>
 <div id="Div1" style=" margin-left:25px; margin-top:15px">
    
  <iframe width="420"    height="205"  src="https://www.youtube.com/embed/Yu4NHYVUtpc" frameborder="0" allowfullscreen></iframe>
    
   <!--  
  <iframe width="420"    height="205"   src="http://www.youtube.com/embed/fxCEcPxUbYA"  ></iframe>
    
<a href="http://dspace.easternuni.edu.bd:8080/xmlui/bitstream/handle/12345/371/EU_Documentary_September-2016.mp4?sequence=1&isAllowed=y" target="_blank">EU Documentary</a>.
     -->
      </div>
                   </div>
    

                
                   
                </div>
                  
            
            
            
            
            
            
            
            
            
            
            
            
            
             <!-- end of notice news n events -->

        <table style="width:100%">
                <tr>
                    <td>
                         <br />
                         <span style="font-size: 18px; font-weight: 600;">International Collaborations</span>
                <hr />
               
               <!-- <hr style="height: 7px" />
                  <marquee behavior ="alternate" onmouseover="this.stop(); " onmouseout="this.start();">
                      -->
               <a href="http://en.ynufe.edu.cn/"> <img src="image/Partner_Uni/YUNNAN.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.uum.edu.my/index.php/en/"> <img src="image/Partner_Uni/UUM.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.franklin.edu/"> <img src="image/Partner_Uni/Frank.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.salford.ac.uk/"> <img src="image/Partner_Uni/Salford.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.ais.ac.nz/"> <img src="image/Partner_Uni/AIS.jpg" style="height: 50px; width: 50px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.mdx.ac.uk/"> <img src="image/Partner_Uni/Middle.jpg" style="height: 50px; width: 65px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.unimap.edu.my/"> <img src="image/Partner_Uni/UniMAP.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.londonpremiercollege.com/"> <img src="image/Partner_Uni/LPC.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.msu.edu.my/v9/"> <img src="image/Partner_Uni/msu.jpg" style="height: 50px; width: 65px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               
                
                <a href="http://english.ynnu.edu.cn/"> <img src="image/Partner_Uni/YNU.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               
                <a href="http://www.worcester.ac.uk/"> <img src="image/Partner_Uni/Worcester.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.ait.ac.th/"> <img src="image/Partner_Uni/AIT.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
              <a href="http://www.tamk.fi/web/tamken/home"> <img src="image/Partner_Uni/TA.jpg" style="height: 50px; width: 60px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               


               <a href="http://www.uitm.edu.my/index.php/en/"> <img src="image/Partner_Uni/UITM.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               <a href="http://www.brockport.edu/"> <img src="image/Partner_Uni/brockport.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                 <a href="http://gjjl.ynvtc.cn/gjjlc_en/"> <img src="image/Partner_Uni/ynvtc.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                        <a href="http://english.hznu.edu.cn/"> <img src="image/Partner_Uni/HZNU_logo.jpg" style="height: 50px; width: 50px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                <a href="http://www.tni.ac.th/web/tni2014-en/"> <img src="image/Partner_Uni/TNI_logo.jpg" style="height: 50px; width: 50px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               

<a href="http://putrabusinessschool.edu.my/"> <img src="image/Partner_Uni/putra.jpg" style="height: 50px; width: 65px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
               
                
                    </td>
                </tr>
            </table> 
            </div>


            
               


        </div>

     


          
        









    </form>








    </asp:Content>
