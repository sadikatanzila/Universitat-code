<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EUMO_AdmitCard.aspx.cs" Inherits="Eastern_Uni.EUMO_AdmitCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 66px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            height: 42px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>



    <table width="500px"    cellspacing="0" cellpadding="2" align="center" style="border:4px #000 solid; background-image: url('image/Other/MessageBG_01.jpg'); background-repeat: no-repeat;">
   <tr>
    <td style="font-weight: bold;vertical-align: top;  text-align: center;  color: #4F4F4F;" colspan="6">
       <!-- background-image: url('Admins/Data/EUMO_2014Header.jpg'); -->
         <strong style="font-size: x-small; margin-left:100px">Serial: <asp:Label ID="lblSl" runat="server" Text=""></asp:Label></strong> 
       <br />
       
     
           
      
    </td>
  </tr>
        <tr>
            <td style="font-weight: bold;vertical-align: middle; text-align: center; font-size: 25px; color: #0000FF;" colspan="6" class="auto-style1">
                 <p>  5th Eastern University Math Olympiad 2018</p>

            </td>
            
        </tr>
  
  <tr>
    <td style="font-weight: bold;vertical-align: top; text-align: center; border-bottom: solid thin black; font-size: 25px; border-bottom-width: 2px;" colspan="6">

        <strong>ADMIT CARD</strong>
   <strong>
    <!--  (<span><img src="Admins/Data/ac.png" width="68" height="18" /></span>) <br>-->
   <asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label></strong>
        </td>
  </tr>
  
  <tr>
    <td style="font-size: 18px;">&nbsp;&nbsp;</td>
    <td style="font-weight: bold; font-size: 18px; vertical-align: top;">Name</td>
    <td width="15" style="font-size: 18px; vertical-align: top;"><strong>:</strong></td>
    <td  style="font-size: 18px; text-transform: capitalize;" colspan="3">

        
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
      </td>

  </tr>
  <tr>
    <td style="font-size: 18px;">&nbsp;&nbsp;</td>
    <td style="font-weight: bold; font-size: 18px; vertical-align: top;">Board</td>
    <td width="15" style="font-size: 18px; vertical-align: top;"><strong>:</strong></td>
    <td  style="font-size: 18px; text-transform: capitalize;">

        
        <asp:Label ID="lblBoard" runat="server" Text=""></asp:Label>
      </td>
      <td  style="text-transform: capitalize; width: 84px; text-align: center;" rowspan="4" colspan="2">
         <div style="border: thin solid #000000; Height:104px; width: 84px;">
             <asp:DataList ID="dtlist" runat="server" RepeatColumns="1" CellPadding="1">
<ItemTemplate>
   
         <asp:Image ID="Image2" runat="server" Height="102px" ImageUrl='<%# Bind("PicLocation") %>' Width="82px" />
    </ItemTemplate>
    </asp:DataList>
            
       </div>
        
           

        
        </td>
  </tr>
  <tr>
    <td style="font-size: 18px;">&nbsp;&nbsp;</td>
    <td style="font-weight: bold; font-size: 18px; vertical-align: top;">Institute</td>
    <td width="15" style="font-size: 18px; vertical-align: top;"><strong>:</strong></td>
    <td  style="font-size: 18px; text-transform: capitalize;">

        
        <asp:Label ID="lblInstitution" runat="server" Text=""></asp:Label>
      </td>
  </tr>
  
  <tr>
    <td style="font-size: 14px;" class="auto-style4"></td>
    <td style=" font-size: 15px; vertical-align: bottom; text-decoration: underline;" colspan="3" class="auto-style4">SSC/ O-Level/ Equivalent info.</td>
  </tr>
  
  <tr>
    <td style="font-size: 18px;">&nbsp;</td>
    <td style="font-weight: bold; font-size: 18px; vertical-align: top;">Year</td>
    <td width="15" style="font-size: 18px; vertical-align: top;"><strong>:</strong></td>
    <td  style="font-size: 18px; text-transform: capitalize;">

        
        <asp:Label ID="lblYear" runat="server" Text=""></asp:Label>
      </td>
  </tr>
  
  <tr>
    <td style="font-size: 18px;">&nbsp;&nbsp;</td>
    <td style="font-weight: bold; font-size: 18px; vertical-align: top;">Roll </td>
    <td width="15" style="font-size: 18px; vertical-align: top;"><strong>:</strong></td>
    <td  style="font-size: 18px; text-transform: capitalize;" colspan="3" >

        
        <asp:Label ID="lblRoll" runat="server" Text=""></asp:Label>
      </td>
  </tr>
  <tr>
    <td style="font-size: 18px;">&nbsp;&nbsp;</td>
    <td style="font-weight: bold; font-size: 18px; vertical-align: top;">Reg.</td>
    <td width="15" style="font-size: 18px; vertical-align: top;"><strong>:</strong></td>
    <td  style="font-size: 18px; text-transform: capitalize;" colspan="3" >

        
    	  <asp:Label ID="lblRegiNo" runat="server" Text=""></asp:Label>  

      </td>
  </tr>
  
        <tr>
    <td style="font-size: 10px; vertical-align: bottom; color: #5F5F5F;" colspan="5" class="auto-style5">

        
         Note: You must bring your Institutional ID card/ equivalent document to proof your Studentship.

    </td>
    <td  style="font-size: small; text-transform: capitalize; color: #0000FF; text-align: right; font-weight: bold;vertical-align: bottom;" class="auto-style5">

         <a href="#" onclick="window.print();" style="color: #0000FF; ">
      Print
            </a>
        </td>
  </tr>
  
        </table>

    </div>
    </form>
</body>
</html>
