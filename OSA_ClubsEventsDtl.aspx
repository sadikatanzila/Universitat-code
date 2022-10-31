<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="OSA_ClubsEventsDtl.aspx.cs" Inherits="Eastern_Uni.OSA_ClubsEventsDtl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
     <link href="CSS/mouse_hover.css" rel="stylesheet" />

   


    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 3%;
        }
        </style>


   


    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <div id="ContentBody">

     



        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('image/Other/Content_Banner.png')">
                
                 <br /><br /><br />
              <table style="width: 95%; height: 56px;">
                    <tr>
                        <td class="auto-style19">

                        </td>
                        <td class="auto-style15" style="text-align: right;font-weight: bold; font-size: 25px">
                                Future Event
                
                        </td>
                    </tr>
                </table>
                <br /><br />
             <table style="width:100%">
                 <tr style="text-align: right; font-weight: bold; font-size: large; text-indent: 15px;">
                    

                
                     <td class="auto-style1">

                         &nbsp;</td>
                     <td class="auto-style2">

                         &nbsp;</td>
                     <td style="width:30%">

                         &nbsp;</td>
                 </tr>

                 <tr>
                     <td class="auto-style1" colspan="3">

                         


                         <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" 
                                                BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="EventsID" 
                             EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="96%" style="margin-left: 15px" ShowHeader="False">
                                                <Columns>


                                                        <asp:TemplateField  ItemStyle-Width="98%">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server"  Font-Size="12px" Text="Date : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                              <asp:Label ID="lblEventsFDate" runat="server" style="font-size:medium;  "  Text='<%# Eval("FromDate", "{0:dd/MM/yyyy}") %>'></asp:Label>&nbsp;&nbsp;
                             <!-- <asp:Label ID="lblEventsTDate" runat="server"  Font-Size="12px" Text='<%# Eval("ToDate", "{0:dd/MM/yyyy}") %>'></asp:Label>-->
                                 <br />
                                     <asp:Label ID="Label1" runat="server"  Font-Size="12px" Text="Name of Event : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                                                                                
                                                            <asp:Label ID="lblEventsHeadline" runat="server" Text='<%#Bind("Headline") %>' style="font-size:medium;  "></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label4" runat="server"  Font-Size="12px" Text="Organized by : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                               <asp:Label ID="lblClubsTitle" runat="server"  style="font-size:medium;  " Text='<%#Bind("Name") %>'></asp:Label>
                                                               <br />
                                                            <asp:Label ID="Label5" runat="server"  Font-Size="12px" Text="Time : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                               <asp:Label ID="lblTime" runat="server"  style="font-size:medium;  " Text='<%#Bind("Time") %>'></asp:Label>

                                                             <br />
                                                            <asp:Label ID="lblvenu" runat="server"  Font-Size="12px" Text="Venue : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                               <asp:Label ID="lblVenue" runat="server"  style="font-size:medium;  " Text='<%#Bind("Venue") %>'></asp:Label>
                                                            
                                                             <hr />
                                                          
                                <br />
 
 <asp:Label ID="Label2" runat="server"  Font-Size="12px" Text="Details : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
<br />
                                                            <asp:Panel ID="Panel1" runat="server" style="margin-left:25px">

                                 <asp:Label ID="lblEventsDtl" runat="server"  style="font-size:medium;" Text='<%#Bind("Details") %>'></asp:Label>
     </asp:Panel>
                                 <br /> <br />


                               
                               
                                 <asp:Image ID="Image2" runat="server"  ImageUrl='<%# Bind("PictureLocation") %>' Width="730px" alt="will be published later....  "/>
                                                            <br /><br />
                                  <asp:Label ID="lblRemarks" runat="server"  Font-Size="12px" Text=""></asp:Label>
                                                            
                                                            
                                                             </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="Center"/>
                                                        </asp:TemplateField>

                                                       

                                               

                                                    

                                                    

                                                </Columns>
                                               <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#A3A5BA" Font-Bold="True" ForeColor="#000000" Font-Size="Larger" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                         
                     <br /><br />
                     
                       
                     
                     
                     
                     
                     
                     </td>
                 </tr>

                 <tr>
                     <td class="auto-style1">

                         &nbsp;</td>
                     <td class="auto-style2">

                         &nbsp;</td>
                     <td style="width:30%; text-align: right;">
                         
                         
                        
                     <a href="OSA_CalenderEvents.aspx"><span style="font-weight: bold; color: #0000FF;">Back to Home</span></a>
                     </td>
                 </tr>

             </table> 
              
                
                    

            </div>

             

            
        </div>


    </div>


    </form>


</asp:Content>
