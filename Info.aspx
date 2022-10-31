<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="Eastern_Uni.Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checking Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <table>
            <tr>
                <td>
                    <strong>InsertYour Mobile No. which was used for registration time</strong>
                    <br/><br />
                    <asp:Label ID="Label1" runat="server" Text="Mobile Number :"></asp:Label><asp:TextBox ID="txtMobileNo" runat="server" style="margin-left: 42px" Width="183px"></asp:TextBox>
                 
                </td>
            </tr>
            <tr style="text-align: center">
                <td>
                 
                    <asp:Button ID="btnSubmit" runat="server"  Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
