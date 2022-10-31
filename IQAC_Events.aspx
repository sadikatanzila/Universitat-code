<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="IQAC_Events.aspx.cs" Inherits="Eastern_Uni.IQAC_Events" %>
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
                                 <td style="text-align: center;font-weight: bold; color: #FF0000; font-size: medium;">
                                      
                                     <!-- <marquee behavior ="alternate" onmouseover="this.stop(); " onmouseout="this.start();">
                                 
                               Coming soon ......
                            </marquee>
                                     -->



                                     <div class="Upcoming_Events" >


                    <asp:GridView ID="gvClubsEvents" Font-Names="Calibri" 
                        runat="server" AutoGenerateColumns="False" BackColor="White" ShowHeader="false" ShowFooter="false"
                                                AllowPaging="true" PageSize="7" BorderColor="White" BorderStyle="None" BorderWidth="0px"                                           CellPadding="3"  DataKeyNames="EventsID" EmptyDataText="upcoming events are not available" ShowHeaderWhenEmpty="True"
                                               Width="98%" style="margin-left: 5px" OnPageIndexChanging="gvClubsEvents_PageIndexChanging"
                         OnRowEditing="gvClubsEvents_RowEditing" OnRowDataBound="gvClubsEvents_RowDataBound" >
                                                <Columns>
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblEventsID" runat="server" Text='<%#Bind("EventsID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>
                                                    
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblClubsID" runat="server" Text='<%#Bind("ClubsID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>

                      <asp:TemplateField HeaderText="Serial"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server" ForeColor="#000066"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>


                      <asp:TemplateField ItemStyle-Width="20%" >
                         
                        <ItemTemplate >
                            
                             <asp:Label ID="lbltoDate" runat="server" style="font-weight: bold" Text='<%#Bind("TimeDuration") %>' Font-Size="16px"  ForeColor="#000066"></asp:Label>
                             <asp:Label ID="lblfrmDate" runat="server" style="font-weight: bold" Text='<%#Bind("ToDay") %>' Font-Size="14px"  ForeColor="#000066"></asp:Label>
                             <asp:Label ID="lblfrmMonth" runat="server" style="font-weight: bold" Text='<%#Bind("ToMonth") %>' Font-Size="14px"  ForeColor="#000066"></asp:Label>
                            
                            


                            <!-- <asp:Label ID="lblEventsFDate" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="lblEventsMonth" runat="server" style="font-weight: bold"  Text='<%# Eval("FromDate", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>

                             <asp:Label ID="Label22" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:dd}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>&nbsp;&nbsp;
                          <asp:Label ID="Label23" runat="server" style="font-weight: bold"  Text='<%# Eval("TimeDuration", "{0:MMMM}") %>' Font-Names="Times New Roman" ForeColor="#000066"></asp:Label>
                                 <br />    <asp:Label ID="Label21" runat="server" style="font-size:11px"  Text='<%# Eval("FromDate", "{0:yyyy}") %>' ForeColor="#000066"></asp:Label> 
                                                       
                               -->                             
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="left"  />
                        </asp:TemplateField>
                        <asp:TemplateField  HeaderText="Events" ItemStyle-Width="80%">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                Text='<%#Bind("Headline") %>'   Font-Size="14px"  ForeColor="#000066"
                                 ></asp:LinkButton>
                                                           
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" />
                        <HeaderStyle HorizontalAlign="center"  />
                        </asp:TemplateField>

                                                     
                                                   
                                                    
 </Columns>
                  

                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                 <FooterStyle BackColor="White" ForeColor="#000066" BorderStyle="None" /> 
                                               <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                        
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>
                     
                      

                   </div>
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
