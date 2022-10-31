<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newHomeEU.aspx.cs" Inherits="Eastern_Uni.newHomeEU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Eastern University</title>
    <link rel="shortcut icon" type="image/x-icon" href="img/Header/logo.png" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />


    <!-- owl carousel css -->
    <link rel="stylesheet" type="text/css" href="../bootstrap/owlcarousel/css/owl.carousel.min.css" />
    <link rel="stylesheet" type="text/css" href="../bootstrap/owlcarousel/css/owl.theme.default.min.css" />
    <!-- owl carousel css end -->

    <!--Font Awesome-->
    <link rel="stylesheet" type="text/css" href="bootstrap/fontawesome/css/all.css" />

    <!--Custom css -->
    <link rel="stylesheet" type="text/css" href="bootstrap/mainCss/style.css" />
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
                                <li class="nav-item"><a href="Trustee_Board.aspx">Board of trustees</a></li>
                                <li class="nav-item"><a href="http://webportal.easternuni.edu.bd:80/Calender/_AcademicCalendarSearch.aspx">Event Calender</a></li>
                            </ul>
                        </div>
                        <div class="col">
                            <ul class="nav justify-content-end">
                                <li class="nav-item"><a href="https://www.google.com/a/easternuni.edu.bd/ServiceLogin?service=mail&passive=true&rm=false&continue=http://mail.google.com/a/easternuni.edu.bd/&ltmpl=default&ltmplcache=2">Web Mail</a></li>
                                <li class="nav-item"><a href="http://webportal.easternuni.edu.bd:80/staffs/_login.aspx">Employee Login</a></li>
                                <li class="nav-item"><a href="http://webportal.easternuni.edu.bd:80/student/_login.aspx">Student Login</a></li>
                                <li class="nav-item"><a href="http://webportal.easternuni.edu.bd:80/Online_Alumni/_login.aspx">Alumni Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- upper links ends -->
                <div class="menu">
                    <!-- University Name and logo in a single row start here-->
                    <div class="img">
                        <img id="topImage" style="height: 150px; width: 100%" class="img-fluid" src="image/Header/WebHeaderEU_New.png">
                    </div>
                    <!-- University Name and logo in a single row end here -->
                </div>

                <!--nav bar start here-->
                <div id="menu_area" class="menu-area">
                    <div class="container-fluid">
                        <div class="row">
                            <nav class="navbar navbar-light navbar-expand-lg mainmenu">
                                <a style="color: #fff; font-size: 20px; font-weight: bold; text-decoration: none;" href="HomeEU.aspx">Home <span class="sr-only">(current)</span></a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav mr-auto">


                                        <!-- About EU dropdown start here -->
                                        <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="EU_Profile.aspx" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">EU Profile</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Message from</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="Administration_OC.aspx"><span>Chairman</span></a></li>
                                                            <li><a href="Administration_OVC.aspx"><span>Vice Chancellor</span></a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="Trustee_Board.aspx"><span>Board of Trustees</span></a></li>
                                                    <li><a href="FormerChairmen.aspx"><span>Former Chairmen of EU</span></a></li>
                                                    <li><a href="AboutEU_Linkage.aspx"><span>International Academic Collaborations</span></a></li>
                                                    <li><a href="AboutEU_Advisors.aspx"><span>International Advisors</span></a></li>
                                                    <li><a href="Campus Map.aspx"><span>Campus Map</span></a></li>
                                                </ul>
                                            </li>
                                        </div>
                                        <!-- About EU dropdown end here -->

                                        <!-- Academics dropdown start here -->
                                        <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Academics</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Academic Programs</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href=" Academics_UP.aspx "><span>Undergraduate</span></a></li>
                                                            <li><a href="Academics_GP.aspx"><span>Graduate</span></a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="Academics_Sys.aspx"><span>Academic Systems</span></a></li>
                                                    <li><a href="Academics_Rules.aspx"><span>Academic Rules & Procedures</span></a></li>
                                                    <li><a href="Academics_Reg.aspx"><span>Registration Procedures</span></a></li>
                                                    <li><a href="Academics_ClsAtd.aspx"><span>Rules of Class Attendance</span></a></li>
                                                    <li><a href="Academics_Exm.aspx"><span>Tests and Exams</span></a></li>
                                                    <li><a href="Academics_Std.aspx"><span>Academic Standing of a Student</span></a></li>
                                                    <li><a href="Academics_Degree.aspx"><span>Degree Requirements</span></a></li>
                                                    <li><a href="EU_Conduct.aspx"><span>Code of Conduct of EU Students</span></a></li>


                                                    <li><a href="http://webportal.easternuni.edu.bd:80/Calender/_AcademicCalendarSearch.aspx"><span>Academic Calendar</span></a></li>
                                                </ul>
                                            </li>
                                        </div>
                                        <!-- Academics dropdown end here -->

                                        <!-- Admission dropdown start here -->
                                        <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admission</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li><a href="Admission_Overview.aspx"><span>Overview</span></a></li>
                                                    <li><a href="http://webportal.easternuni.edu.bd:80/onlineadmission/index.aspx"><span>Online Admission Form</span></a></li>
                                                    <li><a href="Admission_WEU.aspx"><span>Why Study at EU</span></a></li>

                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A5" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admission Eligibility</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="Admission_UA.aspx"><span>Undergraduate Admission</span></a></li>
                                                            <li><a href="Admission_GA.aspx"><span>Graduate Admission</span></a></li>
                                                        </ul>
                                                        <li><a href="Admission_TF.aspx"><span>Tuition and Fees</span></a></li>
                                                        <li><a href="Admission_FAidSch.aspx"><span>Financial Aid & Scholarship</span></a></li>
                                                        <!-- <li><a href="Admission_PResult.aspx"><span>Admission Results</span></a></li>
            <li><a href="Admission_TutionFee.aspx"><span>Tution Fee Waiver</span></a></li> -->
                                                    </li>
                                                </ul>
                                            </li>
                                        </div>
                                        <!-- Admission dropdown end here -->

                                        <!-- Administration dropdown start here -->
                                        <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A6" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Administration</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li><a href="Administration_G.aspx"><span>Governance</span></a></li>
                                                    <li><a href="Administration_S.aspx"><span>Syndicate</span></a></li>
                                                    <li><a href="Academic_Council.aspx"><span>Academic Council</span></a></li>
                                                    <li><a href="Administration_keyPersonnel.aspx"><span>Key Personnel</span></a></li>
                                                    <li><a href="Administration_Offices.aspx"><span>Offices</span></a></li>
                                                    <li><a href="Administration_UC.aspx"><span>Other Committees</span></a></li>

                                                </ul>
                                            </li>
                                        </div>
                                        <!-- Administration dropdown end here -->

                                        <!-- Faculties dropdown start here -->
                                        <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A7" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Faculties</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                                                    <!-- Faculty of Arts submenu start here-->
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A8" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Faculty of Arts</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="Arts_Faculty.aspx"><span>Home</span></a></li>
                                                            <li><a href="F_Arts.aspx"><span>Message from the Dean</span></a> </li>
                                                            <li><a href="Administration_Arts.aspx"><span>Administration</span></a></li>
                                                            <li><a href="Programs_Arts.aspx"><span>Programs</span></a></li>
                                                            <li><a href="Faculty_Arts.aspx"><span>Faculty Members</span></a></li>
                                                            <li class="dropdown">
                                                                <a class="dropdown-toggle" href="#" id="A9" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Courses</a>
                                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                    <li><a href="CourseENG.aspx"><span>Courses of B.A.(Hons.) in English</span></a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>

                                                    </li>
                                                    <!-- Faculty of Arts submenu end here-->

                                                    <!--Faculty of Business Administration submenu start here-->

                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A10" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Faculty of Business Administration</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="BBA_Faculty.aspx"><span>Home</span></a></li>
                                                            <!-- <li><a href="F_BBA.aspx"><span>Message from the Dean</span></a> </li>-->
                                                            <li><a href="Administration_BBA.aspx"><span>Administration</span></a></li>
                                                            <li><a href="Programs_BA.aspx"><span>Programs</span></a></li>
                                                            <li><a href="Faculty_BA.aspx"><span>Faculty Members</span></a></li>
                                                            <li class="dropdown">
                                                                <a class="dropdown-toggle" href="#" id="A11" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Courses</a>
                                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                    <li><a href="CoursesBBA.aspx"><span>Courses of BBA (Bachelor of Business Administration)</span></a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>

                                                    </li>
                                                    <!--Faculty of Business Administration submenu end here-->

                                                    <!--Faculty of Engineering & Technology submenu start here-->
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A12" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Faculty of Engineering & Technology</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="Eng_Faculty.aspx"><span>Home</span></a> </li>
                                                            <li><a href="F_Engg.aspx"><span>Message from the Dean</span></a> </li>
                                                            <li><a href="Administration_Eng.aspx"><span>Administration</span></a></li>
                                                            <li><a href="Programs.aspx"><span>Programs</span></a></li>
                                                            <li><a href="Faculty_Eng.aspx"><span>Faculty Members</span></a></li>
                                                            <li class="dropdown">
                                                                <a class="dropdown-toggle" href="#" id="A13" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Courses</a>
                                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                    <li><a href="CourseCSE.aspx"><span>Courses of B.Sc. in CSE</span></a></li>
                                                                    <li><a href="CourseEEE.aspx"><span>Courses of B.Sc. in EEE</span></a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>

                                                    </li>
                                                    <!--Faculty of Engineering & Technology submenu end here-->

                                                    <!--Faculty of Law submenu start here-->
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A14" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Faculty of Law</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="Law_Faculty.aspx"><span>Home</span></a> </li>
                                                            <li><a href="F_Laws.aspx"><span>Message from the Dean</span></a> </li>
                                                            <li><a href="Administration_Law.aspx"><span>Administration</span></a></li>
                                                            <li><a href="Programs_Laws.aspx"><span>Programs</span></a></li>
                                                            <li><a href="Faculty_Laws.aspx"><span>Faculty Members</span></a></li>
                                                            <li class="dropdown">
                                                                <a class="dropdown-toggle" href="#" id="A15" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Courses</a>
                                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                                    <li><a href="CourseLaws.aspx"><span>Courses of LL.B (Hons.)</span></a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>

                                                    </li>
                                                    <!--Faculty of Law submenu end here-->
                                                </ul>
                                            </li>
                                        </div>
                                        <!-- Faculties dropdown end here -->

                                        <!--IQAC dropdown start here-->
                                        <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A16" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">IQAC</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li><a href="IQAC_Home.aspx"><span>IQAC Home</span></a></li>
                                                    <li><a href="IQAC_Members.aspx"><span>Members</span></a></li>
                                                    <li><a href="IQAC_Office.aspx"><span>Offices</span></a></li>
                                                    <li><a href="IQAC_Goals.aspx"><span>Goals</span></a></li>
                                                    <li><a href="IQAC_Resources.aspx"><span>Resources</span></a></li>
                                                    <li><a href="IQAC_Events.aspx"><span>Event Schedule</span></a></li>
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A17" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Downloads</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="IQAC_DownloadsLinks.aspx"><span>Presentations</span></a></li>
                                                            <li><a href="IQAC_DownloadsDocuments.aspx"><span>Documents</span></a></li>
                                                        </ul>
                                                        <li><a href="IQAC_PicGallery.aspx"><span>Picture Gallery</span></a></li>
                                                    </li>
                                                </ul>
                                            </li>
                                        </div>
                                        <!--IQAC dropdown end here-->


                                        <!--Services dropdown start here-->
                                        <!--  <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A18" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A19" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Career Service and International Office</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="Career_Service.aspx"><span>Career Services</span></a></li>
                                                            <li><a href="Int_Office.aspx"><span>International Office</span></a></li>
                                                        </ul>

                                                    </li>

                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A20" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Office of Student Affairs</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="StudentAffairs.aspx"><span>About the OSA</span></a></li>
                                                            <li><a href="OSA_Core.aspx"><span>Core Values</span></a></li>
                                                            <li><a href="OSA_Philosophy.aspx"><span>Core Philosophy</span></a></li>
                                                            <li><a href="OSA_Activities.aspx"><span>Activities</span></a></li>
                                                            <li><a href="OSA_Services.aspx"><span>Services</span></a></li>
                                                            <li><a href="OSA_Clubs.aspx"><span>Clubs and Forums</span></a></li>
                                                            <li><a href="OSA_Conduct.aspx"><span>Code of Conduct</span></a></li>
                                                            <li><a href="OSA_CalenderEvents.aspx"><span>Calendar of Events</span></a></li>
                                                        </ul>

                                                    </li>

                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle" href="#" id="A21" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Photo Gallery</a>
                                                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                            <li><a href="PhotoGallery.aspx"><span>Photo Album</span></a></li>
                                                            <li><a href="Photo_MathOlym.aspx"><span>Eastern University Math Olympiad</span></a></li>
                                                        </ul>

                                                    </li>
                                                    <li><a href="Phy_Coucilling.aspx"><span>Psycho-Social Counselling</span></a></li>
                                                    <li><a href="http://dspace.easternuni.edu.bd:8080/xmlui/bitstream/handle/12345/433/EU%20Newsletter%20Fall%202016.pdf?sequence=1&isAllowed=y"><span>Newsletter</span></a></li>

                                                    <li><a href="Life_Campus_SC.aspx"><span>Co-curricular Activities</span></a></li>
                                                </ul>
                                            </li>
                                        </div> -->
                                        <!--Services dropdown end here-->


                                        <!--Libary dropdown start here-->
                                        <!-- <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A22" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Library</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li ><a href="http://library.easternuni.edu.bd/"><span>Library Home</span></a></li> 
                <li ><a href="http://library.easternuni.edu.bd/ebook2"><span>e-Books</span></a></li>
                <li><a href="http://library.easternuni.edu.bd/onlinejournals2"><span>Online Journals</span></a></li>

<li><a href="http://dspace.easternuni.edu.bd:8080/xmlui/"><span>Institutional Repository</span></a></li>

                                                </ul>
                                            </li>
                                        </div> -->
                                        <!--Libary dropdown end here-->

                                        <!--career dropdown start here-->
                                        <li><a href="Career.aspx">Career</a></li>
                                        <!--career dropdown end here-->

                                        <!--Alumni dropdown start here-->
                                        <div>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" href="#" id="A23" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Alumni</a>
                                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                    <li><a href="http://webportal.easternuni.edu.bd:80/Online_Alumni/_login.aspx"><span>Registration Form</span></a></li>
                                                    <li><a href="http://webportal.easternuni.edu.bd:80/Online_Alumni/_AlumniSearch.aspx"><span>Web Directory</span></a></li>

                                                </ul>
                                            </li>
                                        </div>
                                        <!--Alumni dropdown end here-->

                                        <!--contact us dropdown start here-->
                                        <li><a href="Contact Us.aspx">Contact Us</a></li>
                                        <!--contact us dropdown end here-->




                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
                <!-- nav bar end here-->

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
                         -->
                         
                         </marquee>
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

                                    <ul class="nav nav-tabs" role="tablist" runat="server">
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
                                        <asp:Repeater ID="Repeater1" runat="server">



                                            <ItemTemplate>

                                                <!--Old design start here-->

                                                <!--
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
                            -->
                                                <!--Old design start here-->

                                                <!--design new news start here -->
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
                                <!-- for 1st row start here -->

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

                <!--Footer start here -->
                <footer id="footer">
                    <div class="site-footer">
                        <div class="container-fluid footerFlex">
                            <div class="footer-into mr-3">
                                <h3>Eastern University</h3>
                                <p>
                                    <i class="fas fa-map-marker-alt"></i>
                                    House 26, Road 5<br />
                                    Dhanmondi, Dhaka-1205<br />
                                    <i class="fas fa-mobile-alt"></i>+88029676031-5<br />
                                    <i class="fas fa-fax"></i>+8802967 5981<br />
                                    <i class="far fa-envelope"></i>info@easternuni.edu.bd,
                                        <br />
                                    registrar@easternuni.edu.bd
                                </p>
                            </div>
                            <div class="footer-links">
                                <h6>About EU</h6>
                                <ul class="footer-links">
                                    <li><i class="fas fa-arrow-right"></i><a href="EU_Profile.aspx">EU Profile</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Trustee_Board.aspx">Board of Trustees</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Administration_OC.aspx">Message From the Chairman</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Administration_OVC.aspx">Message From the Vice-Chancellor</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="AboutEU_Advisors.aspx">International Advisors</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="AboutEU_Linkage.aspx">International Academic Linkages</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Campus Map.aspx">Campus Map</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Contact Us.aspx">Contact Us</a></li>
                                </ul>
                            </div>
                            <div class="footer-links">
                                <h6>Admission</h6>
                                <ul class="footer-links">
                                    <li><i class="fas fa-arrow-right"></i><a href="Admission_Overview.aspx">Overview</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Admission_WEU.aspx">Why Study at EU</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Admission_UA.aspx">Undergraduate Admission</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Admission_GA.aspx">Graduate Admission</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Admission_TF.aspx">Tuition and Fees</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Admission_FAidSch.aspx">Financial Aid & Scholarship</a></li>
                                </ul>

                            </div>
                            <div class="footer-links">
                                <h6>Academics</h6>
                                <ul class="footer-links">
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_Rules.aspx">Academic Rules & Procedures</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_Reg.aspx">Registration Procedures</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_ClsAtd.aspx">Rules of Class Attendance</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Admission_GA.aspx">Graduate Admission</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_Exm.aspx">Tests and Exams</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_Std.aspx">Academic Standing of a Student</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_Degree.aspx">Degree Requirements</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_UP.aspx">Undergraduate Programs</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Academics_GP.aspx">Graduate Programs</a></li>
                                </ul>
                            </div>
                            <div class="footer-links">
                                <h6>Faculties</h6>
                                <ul class="footer-links">
                                    <li><i class="fas fa-arrow-right"></i><a href="Arts_Faculty.aspx">Faculty of Arts</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="BBA_Faculty.aspx">Faculty of Business Administration</a></li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Eng_Faculty.aspx">Faculty of Engineering</li>
                                    <li><i class="fas fa-arrow-right"></i><a href="Law_Faculty.aspx">Faculty of Law</a></li>
                                </ul>
                            </div>
                        </div>

                        <hr />
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-sm-6 col-xs-12">
                                    <p class="copyright-text">
                                        Copyright &copy; 2019 All Rights Reserved by 
         <a href="#">EUIT</a>.
                                    </p>
                                </div>

                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <ul class="social-icons">
                                        <li><a class="facebook" href="#"><i class="fab fa-facebook"></i></a></li>
                                        <li><a class="twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a class="dribbble" href="#"><i class="fab fa-dribbble"></i></a></li>
                                        <li><a class="linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!--Footer end here -->

            </div>



            <!-- container End here -->
            <script src="bootstrap/js/jquery-3.2.1.slim.min.js"></script>
            <script src="bootstrap/js/popper.min.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>

            <!-- for owl carousel news and events -->
            <script type="text/javascript" src="../bootstrap/owlcarousel/js/owl.carousel.min.js"></script>
            <script type="text/javascript" src="../bootstrap/owlcarousel/js/owl.js"></script>

            <!--For chart-->
            <script src="bootstrap/js/chart.js"></script>

            <!--Mainpage js-->
            <script src="bootstrap/js/mainPage.js"></script>


        </div>
    </form>
</body>
</html>
