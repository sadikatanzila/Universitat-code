<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="IQAC_PicGallery.aspx.cs" Inherits="Eastern_Uni.IQAC_PicGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>IQAC</title> 
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
   
    
     <link rel="stylesheet" href="css/nivo-slider.css" media="screen"/>

     <script type="text/javascript" src="js/Simplefade/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/Simplefade/jssor.slider.mini.js"></script>

    <script type="text/javascript" src="js/Simplefade/jssor.slider.min.js"></script>
    <script type="text/javascript" src="js/Simplefade/jssor.slider.debug.js"></script>
    
    <script>
        jQuery(document).ready(function ($) {

            var jssor_1_SlideshowTransitions = [
              { $Duration: 1200, $Opacity: 2 }
            ];

            var jssor_1_options = {
                $AutoPlay: true,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_1_SlideshowTransitions,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $BulletNavigatorOptions: {
                    $Class: $JssorBulletNavigator$
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 900);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>

    <style>
        
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('img/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 12 css */
        /*
        .jssora12l                  (normal)
        .jssora12r                  (normal)
        .jssora12l:hover            (normal mouseover)
        .jssora12r:hover            (normal mouseover)
        .jssora12l.jssora12ldn      (mousedown)
        .jssora12r.jssora12rdn      (mousedown)
        */
        .jssora12l, .jssora12r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 30px;
            height: 46px;
            cursor: pointer;
            background: url('img/a12.png') no-repeat;
            overflow: hidden;
        }
        .jssora12l { background-position: -16px -37px; }
        .jssora12r { background-position: -75px -37px; }
        .jssora12l:hover { background-position: -136px -37px; }
        .jssora12r:hover { background-position: -195px -37px; }
        .jssora12l.jssora12ldn { background-position: -256px -37px; }
        .jssora12r.jssora12rdn { background-position: -315px -37px; }
    </style>
    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <div id="ContentBody">
        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/PicturesIQAC.jpg')">
                
                


                <br /><br /> 
                
                <br /><br />   <br /><br />  <br /><br />  <br /><br />  

         <table style="width:100%; font-size: 15px;  ">
                             <tr>
                                 <td style="width:1%;">

                                     &nbsp;</td>
                                 <td style="text-align: center;">
                                    <br /> <br />

<!--<p style="text-align: center; font-weight: bold; font-size: large;">Picture Gallery of IQAC</p>
                                     <br />-->
                                    

 <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 900px; height: 675px; overflow: hidden; visibility: hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 900px; height: 675px; overflow: hidden;">
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (1).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (2).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (3).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (4).jpg" />
            </div>


             <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (5).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (6).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (7).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (8).jpg" />
            </div>


             <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (9).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (10).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (11).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (12).jpg" />
            </div>

             <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (13).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (14).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (15).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (16).jpg" />
            </div>

             <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (17).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (18).jpg" />
            </div>
            

             <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (19).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (20).jpg" />
            </div>

             <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (21).jpg" />
            </div>
            <div data-p="112.50" style="display: none;">
                <img data-u="image" src="IQAC/PicGallery/IQAC_Pic (22).jpg" />
            </div>


        
           
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora12l" style="top:0px;left:0px;width:30px;height:46px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora12r" style="top:0px;right:0px;width:30px;height:46px;" data-autocenter="2"></span>
    </div>
                                  </td>
                             </tr>
                 
                            

                             <tr>
                                 <td style="width:5%;">

                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>

                 

                 
                             <tr>
                                 <td style="width:5%;">

                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>

                 

                 
                         </table>
              
                
                    

            </div>

             

            
        </div>


    </div>


    </form>


</asp:Content>
