<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="WorkshopFlyer_Rpt.aspx.cs" Inherits="Eastern_Uni.WorkshopFlyer_Rpt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Workshop Report</title>
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
           



            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
            OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="100" >
            <Columns>

               


                <asp:BoundField DataField="TruckingExt" HeaderText="User Id" runat="server" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" />
                <asp:BoundField DataField="Company" HeaderText="Company" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Contact" />
                <asp:BoundField DataField="Edu_Qual" HeaderText="Educational Qualification" />
                <asp:BoundField DataField="Data_Inserted" HeaderText="Registration Date" />
            </Columns>
        </asp:GridView>
    <br>
    <asp:Button ID="btnSave" runat="server" Text="Save to Excel" OnClick="btnSave_Click" />






                 
           <br /><br />


             </form>
                </div>
             </div>
          </div>
</asp:Content>
