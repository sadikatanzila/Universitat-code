<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScrollingImage.aspx.cs" Inherits="Eastern_Uni.ScrollingImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Slider Scrolling</title>
     <meta charset="utf-8" />   
    <link rel="stylesheet" href="css/nivo-slider.css" media="screen"/>
    <link rel="stylesheet" href="CSS/futurico-theme.css" media="screen"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.nivo.slider.pack.js"></script>

    <script>
        $(window).load(function () {
            $('#slider').nivoSlider({
                directionNavHide: false,
                captionOpacity: 1,
                prevText: '<',
                nextText: '>'
            });
        });
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="slider-wrapper futurico-theme">
 
    <div id="slider" class="nivoSlider">
 
        <img src="img/Slider_1.jpg" alt="" />
 
        <img src="img/Slider_2.jpg" alt="" />
 
        <img src="img/Slider_4.jpg" alt="" />
 
        <img src="img/Slider_11.jpg" alt="" />

        <img src="img/Slider_5.jpg" alt="" />
 
        <img src="img/Slider_6.jpg" alt="" />
 
        <img src="img/Slider_7.jpg" alt="" />
 
        <img src="img/Slider_8.jpg" alt="" />
 
    </div>
 <div id="caption1" class="nivo-html-caption">
    <strong>New Project</strong> <span></span> <em>Some description here</em>.
</div>
 
<div id="caption3" class="nivo-html-caption">
    <strong>Image 3</strong> <span></span> <em>Some description here</em>.
</div>
</div>
    </form>
</body>
</html>
