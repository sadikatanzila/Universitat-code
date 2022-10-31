<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EUBC_AdmitCard.aspx.cs" Inherits="Eastern_Uni.EUBC_AdmitCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>EUBC Admit Card</title>
    <style type="text/css">
        .auto-style6 {
            width: 30%;
        }
        .auto-style7 {
            width: 50%;
        }
        .auto-style8 {
            height: 47px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <table cellspacing="0" cellpadding="2" align="center" style="width:70%; border:4px #000 solid; background-repeat: no-repeat; background-image: url('image/Other/MessageBG_01.jpg')">
   <tr>
       <td   colspan="2" style="color: #6A6A6A; text-align: right;">
            <strong style="font-size: xx-small; ">Serial: <asp:Label ID="lblSl" runat="server" Text=""></asp:Label></strong>
           </td>
       <td   colspan="2"  rowspan="3" style="font-weight: bold;vertical-align: top; text-align: center; border-bottom: solid thin black; font-size: 15px; border-bottom-width: 2px;" >
          <asp:Image ID="Image2" runat="server" ImageUrl="~/Admins/Data/Logo_EUBC2016.png"  Height="95px" Width="130px"/>

       </td>
       </tr>
   <tr>
       <td   colspan="2" style="color: #0000FF; font-weight: bold; font-size:25px; text-align: center;">
             <p>  Eastern University Business Challenge 2016</p>
           </td>
       </tr>
   <tr>
       <td   colspan="2" style="font-weight: bold;vertical-align: top; text-align: center; border-bottom: solid thin black; font-size: 15px; border-bottom-width: 2px;" >
            <strong>ADMIT CARD</strong>
   <strong>
   <asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label></strong>
        </td>
       </tr>
   <tr>
       <td   colspan="4">

           &nbsp;</td>
       </tr>
   <tr >
       <td colspan="4"  >

            &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Name of Institution :" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblInstitution" runat="server" Text=""></asp:Label>
       </td>
       </tr>
   <tr>
       <td colspan="4"  >

            &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Address :" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
       </td>
       </tr>
   <tr>
       <td colspan="4"  >
  &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label3" runat="server" Text="Board :" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        
                
        <asp:Label ID="lblBoard" runat="server" Text=""></asp:Label>

       </td>
       </tr>
   <tr>
       <td colspan="4"  >

            &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label4" runat="server" Text="HSC/ A-Level/ Equivalent :" Font-Bold="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="lblSSC_OLevel" runat="server" Text=""></asp:Label>

       </td>
       </tr>
   <tr>
       <td colspan="4"  >

              &nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Text="Total Student :" Font-Bold="True"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbltotal" runat="server" Text=""></asp:Label>

       </td>
       </tr>
   <tr>
       <td  >

              &nbsp;</td>
       <td>

           &nbsp;</td>
       <td>

           &nbsp;</td>
       <td>

           &nbsp;</td>
       </tr>
   <tr>
       <td colspan="4" style="font-size: large" >
           <strong>Name of Participants</strong>
              &nbsp;</td>
       </tr>
   <tr>
       <td colspan="4" style="margin-left:25px" >
          <table style="width:95%; ">
           <asp:DataList ID="StdDatalist" runat="server" style="width:95%">
                       
                        <ItemTemplate>
            <tr>
                <td class="auto-style6"><label style="font-weight: bold"> <%#Eval("DesignationGrp") %> </label></td>
                <td class="auto-style7">

                </td>
                <td rowspan="6">
                    <asp:Image ID="Image2" runat="server" Height="102px" ImageUrl='<%# Bind("PicLocation") %>' Width="82px" />
                </td>
            </tr>
                            <tr>
                <td class="auto-style6">Name :</td>
                <td class="auto-style7"><label> <%#Eval("Name") %> </label>

                </td>
            </tr>
                            <tr>
                <td class="auto-style6">GPA/ Grade:</td>
                <td class="auto-style7">
                    <label> <%#Eval("GPA") %> </label>
                </td>
            </tr>
                            <tr>
                <td class="auto-style6">Subject/ Group:</td>
                <td class="auto-style7"><label> <%#Eval("Department") %> </label>

                </td>
          
                            <tr>
                <td class="auto-style6">Mobile No :</td>
                <td class="auto-style7"><label> <%#Eval("Cell") %> </label>

                </td>
            </tr>
                            <tr>
                <td class="auto-style6">Email Address :</td>
                <td class="auto-style7"><label> <%#Eval("Email") %> </label>

                </td>
            </tr>
                            

                          </ItemTemplate>
                </asp:DataList>
        </table>
            &nbsp;</td>
       </tr>
   <tr>
       <td  >

            &nbsp;</td>
       <td>

           &nbsp;</td>
       <td>

           &nbsp;</td>
       <td>

           &nbsp;</td>
       </tr>
   <tr>
       <td colspan="3" class="auto-style8"  >
             Note: You must bring your Institutional ID card/ equivalent document as prove of your Studentship.
           &nbsp;</td>
       <td class="auto-style8"  >
           <a href="#" onclick="window.print();" style="color: #0000FF; ">
      Print
            </a></td>
       </tr>
       </table>

    
    </div>
    </form>
</body>
</html>
