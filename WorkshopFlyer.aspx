<%@ Page Title="Workshop Flyer" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="WorkshopFlyer.aspx.cs" Inherits="Eastern_Uni.WorkshopFlyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Workshop Registration</title>
   <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="ContentBody">
       
    


        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-position: inherit center; background-image: url('image/Other/Content_Banner.png'); background-repeat: no-repeat;">
   

     

         <form id="Form1" runat="server">
            
             

               <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                     </td>
                    
                     <td colspan="3" style="width:100%">

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 2px; width: 100%;">

                    

                   
                           <asp:Label ID="Label1" runat="server" Text="Workshop on Strategies for Career Advancement"></asp:Label>
                            
                  <br /> <strong style="font-size: 16px">for<br />
                     Officers & Executive
                        <br />   12 August (Saturday), 2017</strong>  
                           </p></td>

                    
                 </tr>


                 </table>
             <br /><br />  
             <p style="text-align:right; width:95%">
  <a href="RegWorkshop.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="color:blue; font-weight: bold;"><span>Click here for Online Registration</span></a> 
                 
             </p>
                         
              <br /><br />  
        <p style="font-size:14px;font-style: normal;">

                    

            <img src="FutureEvents/Workshop_02082017.jpg"  alt="Workshop on Strategies" style="Width:900px"/> 
                        </p>    
                 
           <br /><br />


             </form>
                </div>
             </div>
          </div>
</asp:Content>
