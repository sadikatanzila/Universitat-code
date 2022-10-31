<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Eastern_Uni.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Basic jQuery Slider - Demo</title>

    <!-- bjqs.css contains the *essential* css needed for the slider to work -->
    <link rel="stylesheet" href="CSS/SlidesCSS/bjqs.css"/>

    <!-- some pretty fonts for this demo page - not required for the slider -->
    <link href='CSS/SlidesCSS/SourceCode.css' rel='stylesheet' type='text/css'/>

    <!-- demo.css contains additional styles used to set up this demo page - not required for the slider -->
    <link rel="stylesheet" href="CSS/SlidesCSS/demo.css"/>

    <!-- load jQuery and the plugin -->
    <script src="js/SlidesJs/jquery-1.7.1.min.js"></script>
    <script src="js/SlidesJs/bjqs-1.3.js"></script>
</head>
<body>
    <form id="form1" runat="server" style="border:none" >
        <div id="container">

            <div id="banner-fade">

                <!-- start Basic Jquery Slider -->
                <ul class="bjqs">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <li>
                                 <img src='<%# DataBinder.Eval(Container.DataItem,"SliderImage") %>' title='<%# (DataBinder.Eval(Container.DataItem,"Headline").ToString()).Split('.')[0].ToString() %>' alt="">
                               
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <!-- end Basic jQuery Slider -->

            </div>
            <!-- End outer wrapper -->

            <script class="secret-source" style="display:none;">
                jQuery(document).ready(function ($) {

                    $('#banner-fade').bjqs({
                        height: 290,
                        width: 620,
                        responsive: true
                    });

                });
      </script>
        </div>
        <script src="js/SlidesJs/libs/jquery.secret-source.min.js"></script>
        <script>
            jQuery(function ($) {

                $('.secret-source').secretSource({
                    includeTag: false
                });

            });
    </script>
    </form>
</body>
</html>
