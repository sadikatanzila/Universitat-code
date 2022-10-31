<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCheck.aspx.cs" Inherits="Eastern_Uni.WebFormCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Prompt alert before leaving webpage using JavaScript
    in Asp.net </title>
    <script type="text/javascript">
        //By using JavaScript
        window.onbeforeunload = function () {
            return 'please save your setting before leaving the page';
        }
    </script>
</head>
<body  >
    <form id="form1" runat="server">
    <div>
    <h1 style="text-align:center">main page</h1>
        <a id="home"  href="http://www.easternuni.edu.bd/">EU Home</a>
    </div>
    </form>
</body>
</html>
