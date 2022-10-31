<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newHome_EU.aspx.cs" Inherits="Eastern_Uni.newHome_EU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Easter University</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../bootstrap/mainCss/style.css" />

    <!-- owl carousel css -->
    <link rel="stylesheet" type="text/css" href="../bootstrap/owlcarousel/css/owl.carousel.min.css" />
    <link rel="stylesheet" type="text/css" href="../bootstrap/owlcarousel/css/owl.theme.default.min.css" />
    <!-- owl carousel css end -->

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
                <!-- upper links start -->
                <div class="links">
                    <div class="row">
                        <div class="col">
                            <ul class="nav">
                                <li class="nav-item"><a href="#">Directory</a></li>
                                <li class="nav-item">Board of trustees</li>
                                <li class="nav-item">Event Calender</li>
                            </ul>
                        </div>
                        <div class="col">
                            <ul class="nav justify-content-end">
                                <li class="nav-item">Web Mail</li>
                                <li class="nav-item">Employee Login</li>
                                <li class="nav-item">Student Login</li>
                                <li class="nav-item">Alumni Login</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- upper links ends -->
                <div class="menu">
                    <!-- University Name and logo in a single row start here-->
                    <!--
	<div class="img">
		<img id="topImage" style="height: 150px;width:100%" class="img-fluid" src="img/header/WebHeaderEU_New.png" >
	</div>
-->
                    <!-- University Name and logo in a single row end here -->

                    <!-- nav bar start here -->

                    <nav class="navbar navbar-expand-lg font-weight-bold">
                        <a class="navbar-brand" href="#">Eastern University</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarNavDropdown">
                            <ul class="navbar-nav">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Academics</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Admission</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Administration</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Faculties</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Career</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Contact Us</a>
                                </li>

                            </ul>
                        </div>
                    </nav>
                </div>

                <!-- nav bar end here -->







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
                                <img class="d-block w-100 sliderImage" src="img/01.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/EUMO_2018.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Reception2018.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/ClubCurnival2017.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/ConSl_3.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Library.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/EUPC.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/HSC2017.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Library.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Mourt2019.jpg" alt="Third slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 sliderImage" src="img/Reception2018.jpg" alt="Third slide">
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
                <div class="topNews">
                    <div class="row">
                        <div class="col-2">
                            <span>Top News</span>
                        </div>
                        <div class="col-10">
                            <marquee>News here</marquee>
                        </div>
                    </div>
                </div>


                <!-- top news end here -->

                <!-- 4 box represent start here -->
                <div class="container">
                    <div class="boxResponsive">
                        <div class="box1">
                            <div class="boxText">
                                <span class="flex-wrap">About&nbsp;EU</span>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="boxText">
                                <span class="flex-wrap">Administration</span>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="boxText">
                                <span class="flex-wrap">Admission</span>
                            </div>
                        </div>
                        <div class="box1">
                            <div class="boxText">
                                <span class="flex-wrap">Libary</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 4 box ends here -->

                
                <!-- news and events -->
                <div class="container-fluid">
                <div class="newsAndEvents pt-3">
                    <div class="row">
                        <!-- news slider start here -->
                        <div class="col-md-6 col-sm-12 col-xm-12">
                            <div class="news">
                                <p class="display-4">News and Events</p>

                                <div id="owl-demo" class="owl-carousel owl-theme">


               <asp:Repeater ID="Repeater1" runat="server">  

                 
                       
                        <ItemTemplate>

                            <div class="item">
                                  <asp:Label ID="lblNewsID" runat="server" Text='<%#Bind("serial_no") %>' Visible="false"></asp:Label>
                                 <asp:LinkButton ID="lnkDetail_img" runat="server" CausesValidation="false" CommandName="Edit">
                                                            <asp:Image ID="PicLoc1" runat="server" Height="90px" ImageUrl='<%# Bind("HeaderImage") %>'
                                                                 Width="110px" AlternateText=" " />
                                                        </asp:LinkButton>
                                <br />
                                                        <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                            Text='<%#Bind("headline") %>' Font-Size="16px" CssClass="change"></asp:LinkButton>
                                                        <br />
                                                        <asp:Label ID="lblDay" runat="server" Text='<%#Bind("date") %>' ForeColor="#202020"></asp:Label>
                                                        &nbsp&nbsp&nbsp<asp:Label ID="lblMonth" runat="server" Text='<%#Bind("month") %>' ForeColor="#202020"></asp:Label>
                                                        &nbsp&nbsp&nbsp<asp:Label ID="lblYear" runat="server" Text='<%#Bind("year") %>' ForeColor="#202020"></asp:Label>
                                                        <br />
                                                        <asp:Label ID="lblbrief" runat="server" Text='<%#Bind("brief") %>' Font-Size="12px" ForeColor="#202020"></asp:Label>

                                <asp:HyperLink ID="lnkDetails" runat="server" NavigateUrl="EU_NewsDtl.aspx" DataNavigateUrlFields="serial_no"
                                    DataNavigateUrlFormatString="EU_NewsDtl.aspx?{0}">More Info...</asp:HyperLink>
                                </div>
                                                    </ItemTemplate>
                        
                        
                         
                    </asp:Repeater> 




                                    
                            

                                   
                                    


                                </div>
                            </div>
                        </div>
                        <!-- news slide end here -->
                        <!-- event slider start here -->
                        <div class="col-md-6 col-sm-12 col-xm-12">
                            <p class="display-4 text-center">Notice</p>
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#profile" role="tab" data-toggle="tab">General Notice</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#buzz" role="tab" data-toggle="tab">Upcoming Events</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#references" role="tab" data-toggle="tab">Job Cerculation</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade in active" id="profile">
                                    <table class="table table-hover table-bordered">
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



                                    </table>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="buzz">bbb</div>
                                <div role="tabpanel" class="tab-pane fade" id="references">ccc</div>
                            </div>
                        </div>
                        <!-- event slider end here -->
                    </div>
                </div>
                </div>
                <div class="container-fluid">
                <!--department names start here-->
                <div class="department">
                    <div class="title display-3 text-center">
                        <p>Faculties</p>
                    </div>
                    <div id="owl-demo1" class="owl-carousel owl-theme">
                        <!-- single department start-->
                        <div class="item">
                            <figure class="figure">

                                <img src="img/department/engDept.jpg" class="figure-img img-fluid rounded eventImage" alt="A generic square placeholder image with rounded corners in a figure.">
                                <div class="text-center">Department of Engineering</div>
                            </figure>
                        </div>
                        <!--        single department end -->
                        <!--        single department start-->
                        <div class="item">
                            <figure class="figure">

                                <img src="img/department/lawDept.jpg" class="figure-img img-fluid rounded eventImage" alt="A generic square placeholder image with rounded corners in a figure.">
                                <div class="text-center">Department of Law</div>
                            </figure>
                        </div>
                        <!--        single department end -->
                        <!--        single department start-->
                        <div class="item">
                            <figure class="figure">

                                <img src="img/department/bbaDept.jpg" class="figure-img img-fluid rounded eventImage" alt="A generic square placeholder image with rounded corners in a figure.">
                                <div class="text-center">Department of Business</div>
                            </figure>
                        </div>
                        <!--        single department end -->
                        <!--        single department start-->
                        <div class="item">
                            <figure class="figure">

                                <img src="img/department/englishDept.jpg" class="figure-img img-fluid rounded eventImage" alt="A generic square placeholder image with rounded corners in a figure.">
                                <div class="text-center">Department of Arts</div>
                            </figure>
                        </div>
                        <!--        single department end -->
                    </div>
                </div>
                </div>
                <!--department name end here-->

                <!--life at EU start here-->
                <div class="container-fluid">
                <div class='life pt-3'>
                    <div class="row">
                        <div class="col-md-8 col-sm-12 col-xm-12">
                            <div class="serviceTitle text-center display-4">Life @ EU</div>

                            <img class="img-fluid pr-2 float-left" width="33%" src="img/Life/life.jpg">
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
                            <div class="serviceBox  shadow1" style="background-color: ##EBA39E;">
                                <h3>Shadow 1</h3>
                            </div>
                            <div class="serviceBox  shadow1" style="background-color: #EDE89A;">
                                <h3>Shadow 1</h3>
                            </div>
                            <div class="serviceBox  shadow1" style="background-color: #9EEBA1;">
                                <h3>Shadow 1</h3>
                            </div>
                            <div class="serviceBox  shadow1" style="background-color: #C49EEB;">
                                <h3>Shadow 1</h3>
                            </div>


                        </div>
                    </div>
                </div>
                </div>
                <!--life at EU end here-->

                <!-- Message from vc and Convocation graph start here -->
                <div class="container-fluid">
                <div class="vcAndConvocation">
                    <div class="row">
                        <!-- Message from vc start here -->
                        <div class="col-md-6 col-sm-12 col-xm-12">
                            <div id="messageFrom" class="carousel slide" data-ride="carousel">

                                <ol class="carousel-indicators">
                                    <li data-target="#messageFrom" data-slide-to="0" class="active"></li>
                                    <li data-target="#messageFrom" data-slide-to="1"></li>
                                    <li data-target="#messageFrom" data-slide-to="2"></li>
                                </ol>

                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img class="d-block mx-auto rounded img-fluid" src="img/messageFrom/VCSir.jpg" alt="First slide">
                                        <div class="VC">
                                            <h3 class="text-center">Professor Dr. Shahid Akhtar Hossain </h3>
                                        </div>

                                        <!-- message -->
                                        <div class="message">
                                            <p>Welcome to the Eastern University, where excellence is nurtured, pursued and celebrated as we work for positive changes in the interest of a better Bangladesh. Ever since its inception in 2003 the EU administration has stressed imparting quality education at an affordable cost. The founders of the EU believe that the noble purpose of nation building could be best served by creating skilled and knowledgeable human resources; Eastern University has been the outcome of their idea of such a center for building human capital for nation-building.</p>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block mx-auto rounded img-fluid" src="img/messageFrom/ChairmanLiaquat.jpg" alt="Second slide">
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
                        <!-- Message from vc end here -->

                        <!-- Convocation Graph start here -->
                        <div class="col-md-6 col-sm-12 col-xm-12">
                            <div class="image">
                                <img class="img-fluid" src="img/graph/graph.jpg">
                            </div>
                        </div>
                        <!-- Convocation Graph end here -->
                    </div>
                </div>
                </div>
                <!-- Message from vc and convocation graph end here -->

                <!-- Image Galary And International Collaborations start here -->

                <div class="container-fluid">
                <div class="imageAndCollaboration">
                    <div class="row">

                        <!-- image Galary start here -->
                        <div class="col-md-8 col-sm-12 col-xm-12">
                            <h3 class="text-center">Photo Galary</h3>
                            <!-- for 1st row start here -->

                            <div class="row">
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
                                <div class="col-md-4 col-sm-4 col-xm-12">
                                    <div class="card mb-2">
                                        <img src="img/photoGalary/Header_EUC.jpg" class="card-img-top">
                                        <h4 class="card-title text-center">Convocation</h4>
                                    </div>
                                </div>
                            </div>

                            <!-- 1st row end here -->
                            <!-- 2nd row start here -->

                            <div class="row">
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
                                <div class="col-md-4 col-sm-4 col-xm-12">
                                    <div class="card mb-2">
                                        <img src="img/photoGalary/Header_EUC.jpg" class="card-img-top">
                                        <h4 class="card-title text-center">Convocation</h4>
                                    </div>
                                </div>
                            </div>

                            <!-- 2nd row end here -->
                        </div>
                        <!-- image Galary end here -->

                        <!-- Collaborations start here -->

                        <div class="col-md-4 col-sm-12 col-xm-12">
                        </div>

                        <!-- Collaborations end here -->
                    </div>
                </div>
                </div>
                <!-- Image Galary And International Collaborations end here -->



            </div>
            <!-- container End here -->
            <script src="../bootstrap/js/jquery-3.2.1.slim.min.js"></script>
            <script src="../bootstrap/js/popper.min.js"></script>
            <script src="../bootstrap/js/bootstrap.min.js"></script>
            <!-- for owl carousel news and events -->
            <script type="text/javascript" src="../bootstrap/owlcarousel/js/owl.carousel.min.js"></script>
            <script type="text/javascript" src="../bootstrap/owlcarousel/js/owl.js"></script>
        </div>
    </form>
</body>
</html>
