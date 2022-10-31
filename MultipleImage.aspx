<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultipleImage.aspx.cs" Inherits="Eastern_Uni.MultipleImage" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div>
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:FileUpload ID="FileUpload2" runat="server" /><br />
            <asp:FileUpload ID="FileUpload3" runat="server" /><br />
            <asp:FileUpload ID="FileUpload4" runat="server" />
            <br />
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click1" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
           
            <br />
        </div>
    </form>
</body>
</html>
