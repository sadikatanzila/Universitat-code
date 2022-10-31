<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Eastern_Uni.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="Form1" runat="server">
    <div>



          <!-- slider start here -->
                <div class="slider">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="2000">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="9"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="10"></li>
                        </ol>

                        <!-- Add slider pic start here -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100 sliderImage" src="img/01.jpg" alt="First slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/EUMO_2018.jpg" alt="Second slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Reception2018.jpg" alt="Third slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/ClubCurnival2017.jpg" alt="Third slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/ConSl_3.jpg" alt="Third slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Library.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/EUPC.jpg" alt="Third slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/HSC2017.jpg" alt="Third slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Library.jpg" alt="Third slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Mourt2019.jpg" alt="Third slide" />
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Reception2018.jpg" alt="Third slide" />
                            </div>
                        </div>

                        <!-- Add slider pic end here -->

                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <!-- slider end here -->

                <!-- top news start here -->
                <div class="topNews my-1">
                    <div class="row">
                        <div class="col-2">
                            <div class="topHeading text-center">
                                <h4 class="topText">Top News</h4>
                            </div>
                        </div>
                        <div class="col-10">
                            <div id="top">
                                <marquee onmouseover="this.stop();" onmouseout="this.start();" behaviour="scroll" direction="left" scrollamount="5">
   <ul>
   <li><a class="m" href="ConvocationGuideline.aspx"><asp:Label ID="lblGuide" runat="server" Text="6th Convocation Registration"></asp:Label></a></li>
   <li><a class="m" href="http://www.easternuni.edu.bd/EU_NoticeDtl.aspx?token=1+DVPnUVspSdXirBQ7cc4w=="><asp:Label ID="lblAdresult" runat="server" Text="Result of the Admission Test(LLB)" ></asp:Label></a></li>
   <li><a class="m" href="Admission_Overview.aspx"><asp:Label ID="Label_6" runat="server" Text=""></asp:Label></a></li>
   <li><a  class="m" href="Current_AddmissionNews4.aspx"><asp:Label ID="Label5" runat="server" Text=""></asp:Label></a></li>
   <li><a  class="m" ><asp:Label ID="Label15" runat="server" Text="Admission Office Open on weekly holidays also"></asp:Label></a></li>
   <li><a class="m" href="BrkNews5.aspx"><asp:Label ID="lbltop10" runat="server" Text="" ></asp:Label></a></li>
   <li><a class="m" href="BrkNews2.aspx"><asp:Label ID="lbltop9" runat="server" Text="" ></asp:Label></a></li>
   <li><a  class="m" href="Current_AddmissionNews3.aspx"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></a> </li>
   <li> <a  class="m" href="bkash_payment.aspx"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></a></li>
   <li><a class="m" href="TopnewsLink1.aspx"><asp:Label ID="lbltop5" runat="server" Text="" ></asp:Label></a></li>
   <li><a class="m" href="BrkNews1.aspx"><asp:Label ID="lbltop6" runat="server" Text="" ></asp:Label></a></li>
   </ul>                
 



<!-- 
<a  class="m" href="Current_AddmissionNews1.aspx"><asp:Label ID="Label_7" runat="server" Text=""></asp:Label></a> &nbsp; 
                 |&nbsp

<a class="m" href="Career.aspx"><asp:Label ID="lbltop1" runat="server" Text=""></asp:Label></a>&nbsp
                     | &nbsp 


  
<a class="m" href="https://docs.google.com/forms/d/e/1FAIpQLSfgsLBrJQTke_07Wlp7v4cbRGdIqc7wFaNxxQ5tLV6Eb73J8g/viewform"><asp:Label ID="lbltop3" runat="server" Text="" ></asp:Label></a>&nbsp 
                     | &nbsp  

  <a  class="m" ><asp:Label ID="Label_15" runat="server" Text="Admission Office will remain open 16th to 19th August 2018 from 9AM to 6PM"></asp:Label></a>&nbsp; 
  | &nbsp  

   





    
  
   



<a class="m" href="eumo2018.aspx"><asp:Label ID="lbltop2" runat="server" Text="" ></asp:Label></a>&nbsp
    <asp:Label ID="Labelmsg" runat="server" Text="(Registration Date extended till 13th March)" ForeColor="#FF3300" Font-Bold="True"></asp:Label>&nbsp 
 
 
  | &nbsp  
 


 
<a class="m" href="WorkshopFlyer.aspx"><asp:Label ID="lbltop9_" runat="server" Text="" ></asp:Label></a>&nbsp
  
 | 
    
   

 

 



 <a class="m" href="RegistrationGPA.aspx"><asp:Label ID="lbltop7" runat="server" Text="" ></asp:Label></a>&nbsp 


                       
               | &nbsp 


 <a  class="m" href="Admission_PResult.aspx"><asp:Label ID="Label_9" runat="server" Text=""></asp:Label></a>&nbsp


| &nbsp  




  
      
<a class="m" href="EUBC2016.aspx"><asp:Label ID="lbltop8" runat="server" Text="" ></asp:Label></a>&nbsp 
|   
 

 -->        
        
                    
                 <!--    | &nbsp<a  class="m" href="Current_AddmissionNews2.aspx"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></a> &nbsp;-->

                <!--BrkNews3.aspx-->
                
 
 
                     <!--
                     
       | &nbsp <a class="m" href="TopNews4.aspx"><asp:Label ID="lbltop4" runat="server" Text="" ></asp:Label></a>                 
                    
                     | &nbsp<a  class="m" href="TopNews3.aspx"><asp:Label ID="Label6" runat="server" Text=""></asp:Label></a> &nbsp  
                         
                         
                            
  <a class="m" href="Admission_PResult.aspx"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></a>&nbsp;
           | &nbsp    
                         --></marquee>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- top news end here -->

                <!-- 4 box represent start here -->
                <div class="container">
                    <div class="boxResponsive text-center">
                        <div class="box1">
                            <div class="boxText">
                                <a href="EU_Profile.aspx"><span class="flex-wrap">About&nbsp;EU</span></a>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="boxText">
                                <a href="Academics_Sys.aspx" ><span class="flex-wrap">Academics</span></a>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="boxText">
                                <a href="Admission_Overview.aspx"><span class="flex-wrap">Admission</span></a>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="boxText">
                                <a href="http://library.easternuni.edu.bd/"><span class="flex-wrap">Library</span></a>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="boxText">
                                <a href="http://webportal.easternuni.edu.bd:80/Online_Alumni/_AlumniSearch.aspx"><span class="flex-wrap">Alumni</span></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 4 box ends here -->


                <!-- Message From vc and chairman and Notice  start here-->
                <div class="container-fluid">
                    <div class="vcAndConvocation">
                        <div class="row">
                            <!-- Message From vc and chairman start here -->
                            <div class="col-md-6 col-sm-12 col-xm-12">
                                <div id="messageFrom" class="carousel slide" data-ride="carousel">

                                    <ol class="carousel-indicators">
                                        <li data-target="#messageFrom" data-slide-to="0" class="active"></li>
                                        <li data-target="#messageFrom" data-slide-to="1"></li>
                                        <li data-target="#messageFrom" data-slide-to="2"></li>
                                    </ol>

                                    <div class="carousel-inner">
                                        <div class="carousel-item active">
                                            <img class="d-block mx-auto rounded img-fluid" src="image/Faculty/VCSir.jpg" alt="First slide">
                                            <div class="VC">
                                                <h3 class="text-center">Professor Dr. Shahid Akhtar Hossain </h3>
                                            </div>

                                            <!-- message -->
                                            <div class="message">
                                                <p>Welcome to the Eastern University, where excellence is nurtured, pursued and celebrated as we work for positive changes in the interest of a better Bangladesh. Ever since its inception in 2003 the EU administration has stressed imparting quality education at an affordable cost. The founders of the EU believe that the noble purpose of nation building could be best served by creating skilled and knowledgeable human resources; Eastern University has been the outcome of their idea of such a center for building human capital for nation-building.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img class="d-block mx-auto rounded img-fluid" src="image/Faculty/ChairmanLiaquat.jpg" alt="Second slide">
                                            <div class="chairman">
                                                <h3 class="text-center">Mr. Liaquat Hossain Moghul</h3>
                                            </div>
                                            <div class="message">
                                                <p>Eastern University has made praiseworthy success over the years and is growing rapidly in terms of academic progress by providing quality education. With our vision to become a leading university in South Asia in its chosen fields of education, our mission is to be a “Centre of Excellence” by setting new standards of quality education in Bangladesh. With cooperation from all concerned, I am sure; we will achieve our mission and realize our vision through quality education, training, research, entrepreneurship and community services. </p>
                                            </div>
                                        </div>
                                    </div>

                                    <a class="carousel-control-prev" href="#messageFrom" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#messageFrom" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                                
                            </div>
                            <!-- Message From vc and chairman end here -->
                            <!--  Notice start here -->
                            <div class="col-md-6 col-sm-12 col-xm-12">
                                <div class="container">
                                    <!--<p class="display-4 text-center">Notice</p> -->

                                    <!--Notice main start here -->

                                    <ul id="Ul1" class="nav nav-tabs" role="tablist" runat="server">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#generalNotice" role="tab" data-toggle="tab">General Notice</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#UpcomingEvents" role="tab" data-toggle="tab">Upcoming Events</a>
                                        </li>
                                        <!--
                                        <li class="nav-item">
                                            <a class="nav-link" href="#jobcircular" role="tab" data-toggle="tab">Job Circular</a>
                                        </li>
                                        -->
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade show active" id="generalNotice">
                                            <asp:GridView ID="grdNotice" Font-Names="Calibri" runat="server" AutoGenerateColumns="False"
                                                BackColor="White" ShowHeader="false" ShowFooter="false"
                                                AllowPaging="true" PageSize="5" BorderColor="White" BorderStyle="None" BorderWidth="0px"
                                                CellPadding="3" DataKeyNames="id" EmptyDataText="" ShowHeaderWhenEmpty="True"
                                                Width="98%" Style="margin-left: 5px" OnRowEditing="grdNotice_RowEditing">
                                                <Columns>
                                                    <asp:TemplateField Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblNoticeID" runat="server" Text='<%#Bind("id") %>'></asp:Label>


                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left" />
                                                    </asp:TemplateField>

                                                    <asp:TemplateField ItemStyle-Width="100%">

                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text='<%#Bind("headlines") %>' Font-Size="16px" CssClass="change"></asp:LinkButton>

                                                            <br />
                                                            <asp:Label ID="lblbrief" runat="server" Text='<%#Bind("brief") %>' Font-Size="12px" ForeColor="#202020"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="lblpubdate" runat="server" Text="Publish Date :" Font-Size="10px" ForeColor="#202020"></asp:Label>
                                                            <asp:Label ID="lblNoticeHeadingDate" runat="server" Text='<%#Bind("Notice_Date") %>' Font-Size="10px" ForeColor="#202020"></asp:Label>

                                                            <asp:LinkButton ID="lnkDetail1" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text=' More Info...' Font-Size="12px" CssClass="change"></asp:LinkButton>


                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left" />
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

                                            <asp:GridView ID="grdNoticeOthers" Font-Names="Calibri" Visible="false"
                                                runat="server" AutoGenerateColumns="False" BackColor="White" ShowHeader="false" ShowFooter="false"
                                                AllowPaging="true" PageSize="5" BorderColor="White" BorderStyle="None" BorderWidth="0px"
                                                CellPadding="3" DataKeyNames="id" EmptyDataText="Notices are not available" ShowHeaderWhenEmpty="True"
                                                Width="98%" Style="margin-left: 5px" OnRowEditing="grdNoticeOthers_RowEditing">
                                                <Columns>
                                                    <asp:TemplateField Visible="false">
                                                        <ItemTemplate>
                                                            <asp:Label ID="lblNoticeID_Othrs" runat="server" Text='<%#Bind("id") %>'></asp:Label>


                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left" />
                                                    </asp:TemplateField>



                                                    <asp:TemplateField ItemStyle-Width="100%">

                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkDetail_Othrs" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text='<%#Bind("headlines") %>' Font-Size="16px" CssClass="change"></asp:LinkButton>

                                                            <br />
                                                            <asp:Label ID="lblbrief_Othrs" runat="server" Text='<%#Bind("brief") %>' Font-Size="12px" ForeColor="#202020"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="lblpubdate" runat="server" Text="Publish Date :" Font-Size="10px" ForeColor="#202020"></asp:Label>
                                                            <asp:Label ID="lblNoticeHeadingDate_Othrs" runat="server" Text='<%#Bind("Notice_Date") %>' Font-Size="10px" ForeColor="#202020"></asp:Label>
                                                            <asp:LinkButton ID="lnkDetail1_Othrs" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text=' More Info...' Font-Size="12px" CssClass="change"></asp:LinkButton>

                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left" />
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


                                            <!-- try new type of notice tab start here -->
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="UpcomingEvents">

                                            <div class="Upcoming_Events" style="border-top: solid thick #6495ED;">


                                                <asp:GridView ID="gvClubsEvents" Font-Names="Calibri"
                                                    runat="server" AutoGenerateColumns="False" BackColor="White" ShowHeader="false" ShowFooter="false"
                                                    AllowPaging="true" PageSize="7" BorderColor="White" BorderStyle="None" BorderWidth="0px" CellPadding="3" DataKeyNames="EventsID" EmptyDataText="upcoming events are not available" ShowHeaderWhenEmpty="True"
                                                    Width="98%" Style="margin-left: 5px" OnPageIndexChanging="gvClubsEvents_PageIndexChanging"
                                                    OnRowEditing="gvClubsEvents_RowEditing" OnRowDataBound="gvClubsEvents_RowDataBound">
                                                    <Columns>
                                                        <asp:TemplateField Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblEventsID" runat="server" Text='<%#Bind("EventsID") %>'></asp:Label>


                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="center" />
                                                            <HeaderStyle HorizontalAlign="left" />
                                                        </asp:TemplateField>

                                                        <asp:TemplateField Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblClubsID" runat="server" Text='<%#Bind("ClubsID") %>'></asp:Label>


                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="left" />
                                                            <HeaderStyle HorizontalAlign="left" />
                                                        </asp:TemplateField>

                                                        <asp:TemplateField HeaderText="Serial" Visible="false">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblSerial" runat="server" ForeColor="#000066"></asp:Label>
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="center" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                        </asp:TemplateField>


                                                        <asp:TemplateField ItemStyle-Width="27%">

                                                            <ItemTemplate>

                                                                <asp:Label ID="lbltoDate" runat="server" Style="font-weight: bold" Text='<%#Bind("TimeDuration") %>' Font-Size="16px" ForeColor="#000066"></asp:Label>
                                                                <asp:Label ID="lblfrmDate" runat="server" Style="font-weight: bold" Text='<%#Bind("ToDay") %>' Font-Size="14px" ForeColor="#000066"></asp:Label>
                                                                <asp:Label ID="lblfrmMonth" runat="server" Style="font-weight: bold" Text='<%#Bind("ToMonth") %>' Font-Size="14px" ForeColor="#000066"></asp:Label>




                                                                <!-- <asp:Label ID="lblEventsFDate" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="lblEventsMonth" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>

                             <asp:Label ID="Label22" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="Label23" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>
                                 <br />    <asp:Label ID="Label21" runat="server" style="font-size:11px"  Text='<%# Eval("FromDate", "{0:yyyy}") %>' ForeColor="#000066"></asp:Label> 
                                                       
                               -->
                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="left" />
                                                            <HeaderStyle HorizontalAlign="left" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="Events" ItemStyle-Width="73%">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                    Text='<%#Bind("Headline") %>' Font-Size="14px"></asp:LinkButton>

                                                            </ItemTemplate>
                                                            <ItemStyle HorizontalAlign="Left" />
                                                            <HeaderStyle HorizontalAlign="center" />
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

                                                <div id="Upcoming_slides" style="margin-left: 25px; margin-top: 15px">

                                                    <!-- start Basic Jquery Slider  -->


                                                    <iframe src="WebForm1.aspx" style="height: 205px; width: 420px; border: none"></iframe>



                                                    <!-- end Basic jQuery Slider -->

                                                </div>


                                                <div id="Div1" style="margin-left: 25px; margin-top: 15px">
                                                    <!--   
<iframe width="420"    height="205"  src="https://www.youtube.com/embed/j9Hc8zMQ9Po" frameborder="0" allowfullscreen></iframe>

<iframe width="420"    height="205"  src="https://www.youtube.com/embed/Yu4NHYVUtpc" frameborder="0" allowfullscreen></iframe>-->

                                                    <!--  
  <iframe width="420"    height="205"   src="https://www.youtube.com/watch?v=Yu4NHYVUtpc&feature=youtu.be"  ></iframe>
    
<a href="http://dspace.easternuni.edu.bd:8080/xmlui/bitstream/handle/12345/371/EU_Documentary_September-2016.mp4?sequence=1&isAllowed=y" target="_blank">EU Documentary</a>.
     -->
                                                </div>
                                            </div>


                                        </div>

                                        <!-- Job circular start here-->
                                        <!--
                                        <div role="tabpanel" class="tab-pane fade" id="jobcircular">
                                            <div style="text-align: right; font-weight: bold; width: 95%">
                                                Download Application form :
                            <br />
                                                <a href="image/Career/Faculty Position_EU_Career.doc" style="color: #0000FF; font-weight: bold;" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">Faculty Position</a>
                                                &nbsp; ||  &nbsp;
                            <a href="image/Career/Administrative Position_EU_Career.doc" style="color: #0000FF; font-weight: bold;" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'">Administrative Position</a>

                                            </div>

                                            <marquee behavior="alternate" onmouseover="this.stop(); " onmouseout="this.start();">
                                 
                                No Vacency at this moment in Eastern University......
                            </marquee>

                                            <img class="img-fluid" src="image/Career_06052017.jpg" style="width: 95%;max-height:1000px;" />

                                        </div>
                                        -->
                                        <!-- Job circular end here-->
                                    </div>
                                    <!--Notice Main end here -->
                                </div>
                            </div>
                            <!--  Notice end here -->

                        </div>
                    </div>
                </div>
                <!-- Message From vc and chairman and Notice  end here -->

                <!-- News And evenst and graph start here -->
                <div class="container-fluid">
                    <div class="newsAndEvents">
                        <div class="row">
                            <!-- >News and Events start here -->
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xm-12">
                                <h2 class="text-center">Upcoming Events</h2>

                                    <!--Try new uncoming events under news start here-->
                                    <div class="Upcoming_Events" style="border-top: solid thick #6495ED;">


                                        <asp:GridView ID="gvClubsEvents1" Font-Names="Calibri"
                                            runat="server" AutoGenerateColumns="False" BackColor="White" ShowHeader="false" ShowFooter="false"
                                            AllowPaging="true" PageSize="7" BorderColor="White" BorderStyle="None" BorderWidth="0px" CellPadding="3" DataKeyNames="EventsID" EmptyDataText="upcoming events are not available" ShowHeaderWhenEmpty="True"
                                            Width="98%" Style="margin-left: 5px" OnPageIndexChanging="gvClubsEvents_PageIndexChanging"
                                            OnRowEditing="gvClubsEvents_RowEditing" OnRowDataBound="gvClubsEvents_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblEventsID" runat="server" Text='<%#Bind("EventsID") %>'></asp:Label>


                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="center" />
                                                    <HeaderStyle HorizontalAlign="left" />
                                                </asp:TemplateField>

                                                <asp:TemplateField Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblClubsID" runat="server" Text='<%#Bind("ClubsID") %>'></asp:Label>


                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="left" />
                                                    <HeaderStyle HorizontalAlign="left" />
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Serial" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSerial" runat="server" ForeColor="#000066"></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="center" />
                                                    <HeaderStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>


                                                <asp:TemplateField ItemStyle-Width="27%">

                                                    <ItemTemplate>

                                                        <asp:Label ID="lbltoDate" runat="server" Style="font-weight: bold" Text='<%#Bind("TimeDuration") %>' Font-Size="16px" ForeColor="#000066"></asp:Label>
                                                        <asp:Label ID="lblfrmDate" runat="server" Style="font-weight: bold" Text='<%#Bind("ToDay") %>' Font-Size="14px" ForeColor="#000066"></asp:Label>
                                                        <asp:Label ID="lblfrmMonth" runat="server" Style="font-weight: bold" Text='<%#Bind("ToMonth") %>' Font-Size="14px" ForeColor="#000066"></asp:Label>




                                                        <!-- <asp:Label ID="lblEventsFDate" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="lblEventsMonth" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>

                             <asp:Label ID="Label22" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="Label23" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>
                                 <br />    <asp:Label ID="Label21" runat="server" style="font-size:11px"  Text='<%# Eval("FromDate", "{0:yyyy}") %>' ForeColor="#000066"></asp:Label> 
                                                       
                               -->
                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="left" />
                                                    <HeaderStyle HorizontalAlign="left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Events" ItemStyle-Width="73%">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                            Text='<%#Bind("Headline") %>' Font-Size="14px"></asp:LinkButton>

                                                    </ItemTemplate>
                                                    <ItemStyle HorizontalAlign="Left" />
                                                    <HeaderStyle HorizontalAlign="center" />
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

                                        <div id="Div2" style="margin-left: 25px; margin-top: 15px">

                                            <!-- start Basic Jquery Slider  -->


                                            <iframe src="WebForm1.aspx" style="height: 205px; width: 420px; border: none"></iframe>



                                            <!-- end Basic jQuery Slider -->

                                        </div>


                                        <div id="Div3" style="margin-left: 25px; margin-top: 15px">
                                            <!--   
<iframe width="420"    height="205"  src="https://www.youtube.com/embed/j9Hc8zMQ9Po" frameborder="0" allowfullscreen></iframe>

<iframe width="420"    height="205"  src="https://www.youtube.com/embed/Yu4NHYVUtpc" frameborder="0" allowfullscreen></iframe>-->

                                            <!--  
  <iframe width="420"    height="205"   src="https://www.youtube.com/watch?v=Yu4NHYVUtpc&feature=youtu.be"  ></iframe>
    
<a href="http://dspace.easternuni.edu.bd:8080/xmlui/bitstream/handle/12345/371/EU_Documentary_September-2016.mp4?sequence=1&isAllowed=y" target="_blank">EU Documentary</a>.
     -->
                                        </div>
                                    </div>
                                    <!--Try new uncoming events under news end here-->

                            </div>
                            <!-- Message from vc end here -->

                            <!-- Convocation Graph start here -->
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xm-12">
                            <div class="container news">
                                    <h3 class="text-center">News and Events</h3>

                                    <div id="owl-demo" class="owl-carousel owl-theme">
                                        <asp:Repeater ID="Repeater1" runat="server" >



                                            <ItemTemplate>
                                                <!--design new news start here -->
                                              <asp:Panel CssClass="contactsList" ID="contactList" runat="server" OnClick="contactLink_Click" >
                
                                                <div class="item">
                                                    <div class="row dateAndTitle">
                                                        <div class="col-3 newsItem">
                                                            <div class="dateBox">
                                                                <asp:Label ID="Label5" runat="server" Text='<%#Bind("serial_no") %>' Visible="false"></asp:Label>
                                                                <span class="month">
                                                                    <asp:Label ID="Label2" runat="server" Text='<%#Bind("month") %>' ForeColor="#202020"></asp:Label></span>
                                                                <span class="day">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%#Bind("date") %>' ForeColor="#202020"></asp:Label></span>
                                                                <span class="year">
                                                                    <asp:Label ID="Label3" runat="server" Text='<%#Bind("year") %>' ForeColor="#202020"></asp:Label></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-9" style="word-wrap: break-word">
                                                            <p>
                                                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" CommandName="Edit" 
                                                                    Text='<%#Bind("headline") %>' Font-Size="16px" CssClass="change"></asp:LinkButton>
                                                            </p>
                                                        </div>
                                                    </div>

                                                    <div class="eventsNews">
                                                        <figure class="figure">
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="Edit">
                                                                <asp:Image ID="Image1" CssClass="img-fluid" runat="server" ImageUrl='<%# Bind("HeaderImage") %>'
                                                                    AlternateText=" " />
                                                            </asp:LinkButton>
                                                            <figcaption class="figure-caption">
                                                                <asp:Label ID="Label4" runat="server" Text='<%#Bind("brief") %>' Font-Size="12px" ForeColor="#202020"></asp:Label></figcaption>
                                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="EU_NewsDtl.aspx" DataNavigateUrlFields="serial_no"
                                                                DataNavigateUrlFormatString="EU_NewsDtl.aspx?{0}">More Info...</asp:HyperLink>
                                                        </figure>
                                                    </div>
                                                </div>
                                          </asp:Panel>
                                                <!---design new news end here -->
                                            </ItemTemplate>



                                        </asp:Repeater>
                                    </div>                                

                                </div>

                                <%--<canvas id="pieChart" width="100%" class="p-2"></canvas>--%>
                                <!--check mainpage.js file for chat-->
                            </div>
                            <!-- Convocation Graph end here -->
                        </div>
                    </div>
                </div>
                <!-- News And evenst and graph end here -->

                <!--Main campus pic start here css style.css getstarted-->
                <section id="getstarted" class="py-5 text-center text-light" style="background-image: url('img/Slider_1.jpg'); background-size: cover; background-attachment: fixed; background-repeat: no-repeat; min-height: 350px; position: relative;">
                    <div class="dark-overlay" style="background: rgba(0,0,0,0); position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                        <div class="container">
                            <div class="row">
                                <div class="col mt-5 py-5">
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--Main campus pic end here-->

                <!--department names start here-->
                <div class="container-fluid">

                    <div class="department">
                        <div class="title display-3 text-center">
                            <p>Faculties</p>
                        </div>
                        <div id="owl-demo1" class="owl-carousel owl-theme">
                            <!--        single department start-->
                            <div class="item">
                                <figure class="figure">
                                    <a href="Arts_Faculty.aspx">
                                        <img src="img/department/englishDept.jpg" class="figure-img img-fluid rounded eventImage" alt="Arts" />
                                        <div class="text-center facultyName">Faculty of Arts</div>
                                    </a>
                                </figure>
                            </div>
                            <!--        single department end -->
                            <!--        single department start-->
                            <div class="item">
                                <figure class="figure">

                                    <a href="BBA_Faculty.aspx">
                                        <img src="img/department/bbaDept.jpg" class="figure-img img-fluid rounded eventImage" alt="BBA" />
                                        <div class="text-center facultyName">Faculty of Business Administration</div>
                                    </a>
                                </figure>
                            </div>
                            <!--        single department end -->
                            <!-- single department start-->
                            <div class="item">
                                <figure class="figure">

                                    <a href="Eng_Faculty.aspx">
                                        <img src="img/department/engDept.jpg" class="figure-img img-fluid rounded eventImage" alt="Engineering" />
                                        <div class="text-center facultyName">Faculty of Engineering</div>
                                    </a>
                                </figure>
                            </div>
                            <!--        single department end -->
                            <!--        single department start-->
                            <div class="item">
                                <figure class="figure">

                                    <a href="Law_Faculty.aspx">
                                        <img src="img/department/lawDept.jpg" class="figure-img img-fluid rounded eventImage" alt="LAW" />
                                        <div class="text-center facultyName">Faculty of Law</div>
                                    </a>
                                </figure>
                            </div>
                            <!--        single department end -->


                        </div>
                    </div>
                </div>
                <!--department name end here-->

                <!--life at EU and service start here-->
                <div class="container-fluid lifeAndService">
                    <!--Old code start here-->
                    <!-- <div class='life'>
                        <div class="row">
                            <div class="col-md-8 col-sm-12 col-xm-12">
                                <div class="serviceTitle text-center display-4">Life @ EU</div>

                                <img class="img-fluid pr-2 float-left" width="33%" src="img/Life/life.jpg" />
                                <p>
                                    Appellat a culpa commodo eu si magna eu anim. Malis quo mandaremus ne ita sunt 
                firmissimum. Ad possumus efflorescere an nescius a nulla. Veniam ea incididunt 
                ex dolore, te an distinguantur an summis eiusmod ad transferrem, quis ita te 
                duis officia. An cernantur ita quamquam. Nam enim exquisitaque, eiusmod tamen 
                excepteur in ita admodum ex appellat, quem singulis offendit, quamquam esse iis 
                expetendis distinguantur, fugiat nostrud laboris in ne mandaremus ne cupidatat, 
                dolor tempor reprehenderit. Nisi ita quibusdam qui nulla, doctrina aliqua ex 
                ullamco efflorescere o appellat ad nescius, litteris praesentibus a ullamco, 
                arbitror minim senserit nescius o occaecat nulla iudicem, mandaremus qui 
                fabulas, labore proident hic exercitation. Nescius amet veniam occaecat labore 
                eu quibusdam ita dolor incididunt in occaecat nisi arbitror, incididunt aut amet 
                appellat.
                                </p>

                            </div>
                            <div class="col-md-1 vertical-line">
                            </div>

                            <div class="col-md-3 col-sm-12 col-xm-12">
                                <div class="serviceTitle text-center">
                                    <p class="display-4">Services</p>
                                </div>
                                <div class="serviceBox" style="background-color: #EBA39E;">
                                    <h3><a href="Career_Service.aspx">Career Services</a></h3>
                                </div>
                                <div class="serviceBox" style="background-color: #EDE89A;">
                                    <h3><a href="Phy_Coucilling.aspx">Psycho-Social Counselling</a></h3>
                                </div>
                                <div class="serviceBox" style="background-color: #9EEBA1;">
                                    <h3><a href="#">Medical</a></h3>
                                </div>
                                <div class="serviceBox" style="background-color: #C49EEB;">
                                    <h3><a href="#">Transport</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <!--old code end here -->
                    <!--new code start here -->
                    <div class="lifeAtEU">
                        <div class="serviceTitle text-center display-4">Life @ EU</div>

                        <img class="img-fluid pr-2 float-left" width="33%" src="img/Life/life.jpg" />
                        <p>
                            Appellat a culpa commodo eu si magna eu anim. Malis quo mandaremus ne ita sunt 
                firmissimum. Ad possumus efflorescere an nescius a nulla. Veniam ea incididunt 
                ex dolore, te an distinguantur an summis eiusmod ad transferrem, quis ita te 
                duis officia. An cernantur ita quamquam. Nam enim exquisitaque, eiusmod tamen 
                excepteur in ita admodum ex appellat, quem singulis offendit, quamquam esse iis 
                expetendis distinguantur, fugiat nostrud laboris in ne mandaremus ne cupidatat, 
                dolor tempor reprehenderit. Nisi ita quibusdam qui nulla, doctrina aliqua ex 
                ullamco efflorescere o appellat ad nescius, litteris praesentibus a ullamco, 
                arbitror minim senserit nescius o occaecat nulla iudicem, mandaremus qui 
                fabulas, labore proident hic exercitation. Nescius amet veniam occaecat labore 
                eu quibusdam ita dolor incididunt in occaecat nisi arbitror, incididunt aut amet 
                appellat.
                        </p>
                    </div>
                    <div class="services">
                        <div class="serviceTitle text-center">
                            <p class="display-4">Services</p>
                        </div>
                        <div class="serviceBox" style="background-color: #EBA39E;">
                            <h3><a href="Career_Service.aspx">Career Services</a></h3>
                        </div>
                        <div class="serviceBox" style="background-color: #EDE89A;">
                            <h3><a href="Phy_Coucilling.aspx">Psycho-Social Counselling</a></h3>
                        </div>
                        <div class="serviceBox" style="background-color: #9EEBA1;">
                            <h3><a href="#">Medical</a></h3>
                        </div>
                        <div class="serviceBox" style="background-color: #C49EEB;">
                            <h3><a href="#">Transport</a></h3>
                        </div>
                    </div>
                    <!--new code end here -->
                </div>
                <!--life at EU and service end here-->



                <!-- Image Galary And International Collaborations start here -->
                <div class="container-fluid">
                    <div class="imageAndCollaboration">
                        <div class="row">

                            <!-- image Galary start here -->


                            <div class="col-md-8 col-sm-12 col-xm-12">
                                <h3 class="text-center">Photo Galary</h3>

                                  <div class="row">
                                <asp:DataList ID="PhotoAlbumList" runat="server" BackColor="Gray" BorderColor="#666666"  
                                    onitemcommand="PhotoAlbumList_ItemCommand"
            BorderStyle="None" BorderWidth="2px" CellPadding="3" CellSpacing="2"  datakeyfield="AlbumID"
            Font-Names="Verdana" Font-Size="Small" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" Width="99%"
            >
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
           
            <ItemStyle BackColor="White" ForeColor="Black" BorderWidth="0px" VerticalAlign="Top"/>
            <ItemTemplate >
                  <asp:Label ID="lblAlbumID" runat="server" Text='<%#Bind("AlbumID") %>' Visible="false"  ></asp:Label>
                 <asp:LinkButton ID="lnkDetail_img" runat="server" CausesValidation="false" CommandName="Edit">
                          <asp:Image ID="PicLoc1" runat="server"   ImageUrl='<%# Bind("HeaderImage") %>' Width="100%"  AlternateText=" "/>   
               </asp:LinkButton>
              <br />
               
             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit" OnClick="btnAlbum_Click"
                  Text='<%#Bind("Album_Name") %>'  ></asp:LinkButton>
             
              
            </ItemTemplate>
        </asp:DataList>

                                      </div>
                                <!-- for 1st row start here -->
                                <!--
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 col-xm-12">
                                        <div class="card mb-2">
                                            <img src="img/photoGalary/Header_EUC.jpg" class="card-img-top" />
                                            <h4 class="card-title text-center">Convocation</h4>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xm-12">
                                        <div class="card mb-2">
                                            <img src="img/photoGalary/Header_EUC.jpg" class="card-img-top">
                                            <h4 class="card-title text-center">Convocation</h4>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 col-xm-12">
                                        <div class="card mb-2">
                                            <img src="img/photoGalary/Header_EUC.jpg" class="card-img-top">
                                            <h4 class="card-title text-center">Convocation</h4>
                                        </div>
                                    </div>

                                </div>
                                -->
                                <!-- 1st row end here -->
                            </div>
                            <!-- image Galary end here -->

                            <!-- Collaborations start here -->

                            <div class="col-md-4 col-sm-12 col-xm-12">
                                <h3 class="text-center">International Collaborations</h3>
                                <div>
                                    <a href="http://en.ynufe.edu.cn/">
                                        <img src="image/Partner_Uni/YUNNAN.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.uum.edu.my/index.php/en/">
                                        <img src="image/Partner_Uni/UUM.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.franklin.edu/">
                                        <img src="image/Partner_Uni/Frank.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.salford.ac.uk/">
                                        <img src="image/Partner_Uni/Salford.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.ais.ac.nz/">
                                        <img src="image/Partner_Uni/AIS.jpg" style="height: 50px; width: 50px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.mdx.ac.uk/">
                                        <img src="image/Partner_Uni/Middle.jpg" style="height: 50px; width: 65px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.unimap.edu.my/">
                                        <img src="image/Partner_Uni/UniMAP.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.londonpremiercollege.com/">
                                        <img src="image/Partner_Uni/LPC.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.msu.edu.my/v9/">
                                        <img src="image/Partner_Uni/msu.jpg" style="height: 50px; width: 65px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>


                                    <a href="http://english.ynnu.edu.cn/">
                                        <img src="image/Partner_Uni/YNU.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>

                                    <a href="http://www.worcester.ac.uk/">
                                        <img src="image/Partner_Uni/Worcester.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.ait.ac.th/">
                                        <img src="image/Partner_Uni/AIT.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.tamk.fi/web/tamken/home">
                                        <img src="image/Partner_Uni/TA.jpg" style="height: 50px; width: 60px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>



                                    <a href="http://www.uitm.edu.my/index.php/en/">
                                        <img src="image/Partner_Uni/UITM.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.brockport.edu/">
                                        <img src="image/Partner_Uni/brockport.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://gjjl.ynvtc.cn/gjjlc_en/">
                                        <img src="image/Partner_Uni/ynvtc.jpg" style="height: 50px; width: 45px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.csc.edu.cn/studyinchina/indexen.aspx">
                                        <img src="image/Partner_Uni/HZNU_logo.jpg" style="height: 50px; width: 50px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                    <a href="http://www.tni.ac.th/web/tni2014-en/">
                                        <img src="image/Partner_Uni/TNI_logo.jpg" style="height: 50px; width: 50px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>


                                    <a href="http://putrabusinessschool.edu.my/">
                                        <img src="image/Partner_Uni/putra.jpg" style="height: 50px; width: 65px; margin: 2px; border: solid medium rgba(105, 99, 185, 0.71)" /></a>
                                </div>
                            </div>

                            <!-- Collaborations end here -->
                        </div>
                    </div>
                </div>
                <!-- Image Galary And International Collaborations end here -->

                <!-- Location on a map start here-->
                <div class="container-fluid pb-3">
                    <div class="location bg-dark text-light">
                        <div class="row">

                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <h2 class="text-center">Main Campus</h2>
                                <div class="text-center">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7297.216267643195!2d90.31381164603204!3d23.86804501612337!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c21973bf4711%3A0x90650477a61db73d!2sEastern+University+Permanent+Campus!5e0!3m2!1sen!2sbd!4v1562748264430!5m2!1sen!2sbd" width="70%" height="350px" frameborder="0" style="border: 0" allowfullscreen></iframe>
                                </div>
                            </div>

                            <div class="col-md-6 col-lg-6 col-sm-12">
                                <h2 class="text-center">Administration</h2>
                                <div class="text-center">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d2368.107114087812!2d90.3809761131191!3d23.743084602433996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1562748059100!5m2!1sen!2sbd" width="70%" height="350px" frameborder="0" style="border: 0" allowfullscreen></iframe>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <!--Location on a map end here-->


    </div>
</form>

</asp:Content>
