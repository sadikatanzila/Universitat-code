<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GPA_AdmitCard.aspx.cs" Inherits="Eastern_Uni.GPA_AdmitCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GPA Reception Admit Card</title>
    <style type="text/css">
        .auto-style1 {
            height: 66px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>



    <table width="750px"    cellspacing="0" cellpadding="2" align="center" style="border:4px #000 solid;  background-repeat: no-repeat;">
   <tr>
    <td style="font-weight: bold;vertical-align: top;  text-align: center; text-indent: 600px; color: #5F5F5F;" colspan="2">
       <!-- background-image: url('Admins/Data/EUMO_2014Header.jpg'); -->
         <strong style="font-size: xx-small; ">Serial: <asp:Label ID="lblSl" runat="server" Text=""></asp:Label></strong> 
       <br />
       
     
           
      
    </td>
  </tr>
        <tr>
            <td style="font-weight: bold;vertical-align: middle; text-align: center; font-size: 25px; color: #0000FF;" colspan="2" class="auto-style1">
                 <p>Eastern University GPA Reception 2017<strong><asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label></strong>
                 </p>

            </td>
            
        </tr>
  
  <tr>
    <td style="font-weight: bold;vertical-align: top; text-align: center; border-bottom: solid thin black; font-size: 25px; border-bottom-width: 2px;" colspan="2">

        &nbsp;</td>
  </tr>
  
  <tr>
    <td style="font-size: 18px;" colspan="2">

        <table style="width:100%">
          <tr>
               <td style="width:5%">

              </td>
              <td style="width:25%">

                  <b>Name</b></td>
              <td style="width:5%">

                 <b> :</b></td>
              <td>

        
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>

              </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>Father&#39;s Name</b></td>
              <td style="width:5%">

                  <b>:</b></td>
              <td>

        
        <asp:Label ID="lbl_FName" runat="server" Text=""></asp:Label>

              </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>Mother&#39;s Name</b></td>
              <td style="width:5%">

                  <b>:</b></td>
              <td>

        
        <asp:Label ID="lbl_MName" runat="server" Text=""></asp:Label>

              </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  &nbsp;</td>
              <td style="width:5%">

                  &nbsp;</td>
              <td>

        
                  &nbsp;</td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td colspan="3">

                  HSC/ A-Level/ Equivalent info.</td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>Institute</b></td>
              <td style="width:5%">

                  <b>:</b></td>
              <td>

        
        <asp:Label ID="lblInstitution" runat="server" Text=""></asp:Label>

              </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>Board</b></td>
              <td style="width:5%">

                  <b>:</b></td>
              <td>

        
        <asp:Label ID="lblBoard" runat="server" Text=""></asp:Label>

              </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>Roll </b>

              </td>
              <td style="width:5%">

                  <b>:</b></td>
              <td>

                  <asp:Label ID="lblRoll" runat="server" Text=""></asp:Label>

              </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>Reg. No </b>

              </td>
              <td style="width:5%">

                  <strong>:</strong></td>
              <td>

                  <asp:Label ID="lblReg" runat="server" Text=""></asp:Label>

              </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>GPA</b></td>
              <td style="width:5%">

                  <b>:</b></td>
              <td>

                  <asp:Label ID="lblGPA" runat="server" Text=""></asp:Label>  

               </td>
          </tr>

          <tr>
               <td style="width:5%">

                   &nbsp;</td>
              <td style="width:25%">

                  <b>Group</b></td>
              <td style="width:5%" class="auto-style6">

                  :</td>
              <td>

                  <asp:Label ID="lblgrp" runat="server" Text=""></asp:Label>  

               </td>
          </tr>

      </table>

    </td>
    

      
  </tr>
  
        <tr>
    <td style="font-size: 10px; vertical-align: bottom; color: #5F5F5F;" class="auto-style5">

        
         Note: You must bring this printed copy with HSC Markshit (Online Result Copy) & HSC Admit Card.

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
