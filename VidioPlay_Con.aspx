<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VidioPlay_Con.aspx.cs" Inherits="Eastern_Uni.VidioPlay_Con" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <%--The code that can used to play a video file with .wmv extension --%>
    <object type="video/x-ms-wmv" data="Vidio/Chaneel_I.wmv" width="420" height="340">
    <param name="url" value="Vidio/Chaneel_I.wmv"/>
    <param name="src" value="Vidio/Chaneel_I.wmv" />
    <param name="autostart" value="true" />
    <param name="sound" value="false" /> 
    <param name="controller" value="true" />
    </object>
    <%--End code to play video file--%>
    </div>
    </form>
</body>
</html>
