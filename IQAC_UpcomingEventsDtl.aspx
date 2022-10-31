<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="IQAC_UpcomingEventsDtl.aspx.cs" Inherits="Eastern_Uni.IQAC_UpcomingEventsDtl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>IQAC</title> 
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    


    

    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <div id="ContentBody">

       
      






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/EventsIQAC.jpg')">
                
                


                <br /><br /> 
                
                <br /><br />   <br /><br />  <br /><br />  <br /><br />  
             <table style="width:95%; font-size: 15px;  ">
                             <tr>
                                 <td style="width:5%;">

                                     &nbsp;</td>
                                 <td style="text-align: center; color: #FF0000; font-size: medium;">
                                      
                                     <!-- <marquee behavior ="alternate" onmouseover="this.stop(); " onmouseout="this.start();">
                                 
                               Coming soon ......
                            </marquee>
                                     -->



                                     <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="White" 
                                                BorderStyle="None" BorderWidth="0px"
                                                CellPadding="3" DataKeyNames="EventsID" 
                             EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="96%" style="margin-left: 15px" ShowHeader="False" OnSelectedIndexChanged="gvDepartment_SelectedIndexChanged1">
                                                <Columns>


                                                        <asp:TemplateField  ItemStyle-Width="98%">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server"  Font-Size="12px" ForeColor="#000066" Text="Date : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;


                                                             <asp:Label ID="lblfrmDate" runat="server" style="font-weight: bold;font-size:medium;" Text='<%#Bind("TimeDuration") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>
                             <asp:Label ID="lblfrmMonth" runat="server" style="font-weight: bold;font-size:medium;" Text='<%#Bind("ToDay") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>
                             <asp:Label ID="lbltoDate" runat="server" style="font-weight: bold;font-size:medium;" Text='<%#Bind("ToMonth") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>
                            
                              <!-- <asp:Label ID="lblEventsFDate" runat="server" style="font-size:medium;  " ForeColor="#000066"  Text='<%# Eval("FromDate", "{0:dd/MM/yyyy}") %>'></asp:Label>&nbsp;&nbsp;
                             <asp:Label ID="lblEventsTDate" runat="server"  Font-Size="12px" Text='<%# Eval("ToDate", "{0:dd/MM/yyyy}") %>'></asp:Label>-->
                                 <br />
                                     <asp:Label ID="Label1" runat="server"  Font-Size="12px" ForeColor="#000066"  Text="Name of Event : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                                                                                
                                                            <asp:Label ID="lblEventsHeadline" runat="server"  ForeColor="#000066" Text='<%#Bind("Headline") %>' style="font-size:medium;  "></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label4" runat="server" ForeColor="#000066" Font-Size="12px" Text="Organized by : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                               <asp:Label ID="lblClubsTitle" runat="server" ForeColor="#000066" style="font-size:medium;  " Text='<%#Bind("Organized_by") %>'></asp:Label>
                                                              <br />
                                                           
                                                            <asp:Label ID="Label5" runat="server" ForeColor="#000066" Font-Size="12px" Text="Time : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                               <asp:Label ID="lblTime" runat="server"  style="font-size:medium;  " ForeColor="#000066" Text='<%#Bind("Time") %>'></asp:Label>

                                                             <br />
                                                            <asp:Label ID="lblvenu" runat="server" ForeColor="#000066"  Font-Size="12px" Text="Venue : " style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
                               <asp:Label ID="lblVenue" runat="server"  style="font-size:medium;  " ForeColor="#000066" Text='<%#Bind("Venue") %>'></asp:Label>
                                                            
                                                             <hr />
                                                          
                                <br />
 
 <asp:Label ID="Label2" runat="server"  Font-Size="12px" Text="Details : " ForeColor="#000066" style="font-size:medium;font-weight: bold;  "></asp:Label>&nbsp;&nbsp;
<br />
                                                            <asp:Panel ID="Panel1" runat="server" style="margin-left:25px">

                                 <asp:Label ID="lblEventsDtl" runat="server" ForeColor="#000066" style="font-size:medium;" Text='<%#Bind("Details") %>'></asp:Label>
     </asp:Panel>
                                 <br /> <br />


                               
                               
                                 <asp:Image ID="Image2" runat="server"  ImageUrl='<%# Bind("PictureLocation") %>' Width="100%" ForeColor="#999999" alt="will be published later....  "/>
                                                            <br /><br />
                                  <asp:Label ID="lblRemarks" runat="server"  Font-Size="12px" Text=""></asp:Label>
                                                            
                                                            
                                                             </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="Center"/>
                                                        </asp:TemplateField>

                                                       

                                               

                                                    

                                                    

                                                </Columns>
                                               <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="White" />
                                                <HeaderStyle BackColor="#A3A5BA" Font-Bold="True" ForeColor="White" Font-Size="Larger" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                                  </td>
                             </tr>
                 
                            

                             <tr>
                                 <td style="width:5%;">

                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>

                 

                 
                             <tr>
                                 <td style="width:5%;">

                                     &nbsp;</td>
                                 <td>
                                     &nbsp;</td>
                             </tr>

                 

                 
                         </table> 
              
                
                    

            </div>

             

            
        </div>


    </div>


    </form>


</asp:Content>
