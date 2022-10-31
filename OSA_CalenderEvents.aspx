<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="OSA_CalenderEvents.aspx.cs" Inherits="Eastern_Uni.OSA_CalenderEvents" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


   


    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 3%;
        }
        .auto-style3 {
            width: 753px;
        }
        </style>


   


    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <div id="ContentBody">

       
    





        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-image: url('image/Other/Content_Banner.png'); background-repeat: no-repeat">
                
                <!--
<div id="StdAff">

    <div id="left" >
        
    </div>
     <div id="right">
         <ul>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								
							</ul>
    </div>

</div>
                --><br /><br /> <br />
                <table style="width:95%">
                    <tr style="text-align: right; font-weight: bold; font-size:25px; text-indent: 15px;">
                        <td >
                           
                        Calender of Events
                        </td>
                    </tr>
                </table>
             <br /><br /><br /><br /><br /><br />
                
                <asp:Panel ID="pnlSearch" runat="server" GroupingText="" Width="99%" Visible="true">
    <b style="font-size: large">Future Events:</b>&nbsp;<br /><br />
     <asp:GridView ID="gvClubsEvents" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3"  DataKeyNames="EventsID" EmptyDataText="No Student Affairs related Upcoming Events at this moment" ShowHeaderWhenEmpty="True"
                                               Width="95%" style="margin-left: 15px"

        
                     OnPageIndexChanging="gvClubsEvents_PageIndexChanging" OnRowDataBound="gvClubsEvents_RowDataBound" OnRowEditing="gvClubsEvents_RowEditing" >
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

                                                    <asp:TemplateField HeaderText="Serial" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                                                        <asp:TemplateField  HeaderText="Events" ItemStyle-Width="20%">
                                                        <ItemTemplate>
                                                           <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text='<%#Bind("Headline") %>' Font-Names="Times New Roman" ForeColor="#000066"
                                                                style="font-weight: bold;" ></asp:LinkButton>
                                                           
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Left" />
                                                        <HeaderStyle HorizontalAlign="center"  />
                                                        </asp:TemplateField>

                                                     <asp:TemplateField  HeaderText="Organized by" ItemStyle-Width="20%">
                                                        <ItemTemplate>

                                                             <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblClubName"></asp:Label>
                                                         
                                                           
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="center"  />
                                                        </asp:TemplateField>
                                                    <asp:TemplateField  HeaderText="Date" ItemStyle-Width="20%">
                                                        <ItemTemplate>
                                                          
                              <asp:Label runat="server" Text='<%# Eval("FromDate", "{0:dd/MM/yyyy}") %>' ID="lblFromDate"></asp:Label>
                              <!--<br />
                               <asp:Label runat="server" Text='<%# Eval("ToDate", "{0:dd/MM/yyyy}") %>' ID="lblToDate"></asp:Label>-->
                          </ItemTemplate>
                                                      
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="center" />
                                                        </asp:TemplateField>
                                                
                                                    <asp:TemplateField  HeaderText="Time" ItemStyle-Width="20%">
                                                        <ItemTemplate>
                                                            <asp:Label runat="server" Text='<%# Bind("Time") %>' ID="lblTime"></asp:Label>
                                                         
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="center"  />
                                                        </asp:TemplateField>

                                                    <asp:TemplateField  HeaderText="Venue" ItemStyle-Width="15%">
                                                        <ItemTemplate>
                                                          
                             <asp:Label runat="server" Text='<%# Bind("Venue") %>' ID="lblVenue"></asp:Label>
                              
                          </ItemTemplate>
                                                      
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="center" />
                                                        </asp:TemplateField>
                                                    
 </Columns>
                  

                 <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                               <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>



    </asp:Panel> 
              
                
                    

            </div>

             

            
        </div>


    </div>


    </form>


</asp:Content>
