<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="OSA_ClubsDtl.aspx.cs" Inherits="Eastern_Uni.OSA_ClubsDtl" %>
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
            

            <div id="s_container" style="background-position: inherit center; background-image: url('image/Other/MasterBG_HomePage.jpg'); background-repeat: no-repeat;">
                
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
                -->
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

                         
                     <br /><br />
                     
                       <asp:Panel ID="pnlClubs" runat="server">
                    <table style="width:100%">
                        <tr>
                            <td class="auto-style4" colspan="2" style="text-align: center">


                                <asp:Label ID="lblClubsTitle" runat="server" Font-Bold="true" Font-Size="large" ForeColor="blue" Text=""></asp:Label>

                            </td>

                        </tr>

                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style5">
                              <br />
                                <asp:Label ID="lblDetails" runat="server"  Font-Size="12px" Text=""></asp:Label>
                                 <br /><br />
                                <asp:Label ID="Label1" runat="server" Font-Bold="true"  Font-Size="12px" Text="Objectives :"></asp:Label>
                                <br />
                                <asp:Panel ID="Panel1" runat="server" style="margin-left:25px">
                                <asp:Label ID="lblObjectives" runat="server"  Font-Size="12px" Text=""  ></asp:Label>
                                    </asp:Panel>
                                 <br /><br />
                                <asp:Label ID="Label2" runat="server" Font-Bold="true"  Font-Size="12px" Text="Activities :"></asp:Label><br />
                               <asp:Panel ID="Panel2" runat="server" style="margin-left:25px">
                                 <asp:Label ID="lblActivities" runat="server"  Font-Size="12px" Text="" ></asp:Label>
                               </asp:Panel>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5" style="font-size: large"><b>Future Event (Event Calendar)&nbsp;&nbsp; :</b>&nbsp;<br /><br /></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5">







                                <asp:GridView ID="gvClubsEvents" runat="server" AutoGenerateColumns="False" DataKeyNames="EventsID"
                       AllowPaging="True" BackColor="#696B8B" BorderColor="#696B8B"  EmptyDataText="No Data Found"
                      BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="98%"
                     OnPageIndexChanging="gvClubsEvents_PageIndexChanging" OnRowDataBound="gvClubsEvents_RowDataBound" OnRowEditing="gvClubsEvents_RowEditing" >
                                                <Columns>
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblEventsID" runat="server" Text='<%#Bind("EventsID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
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
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                                                        <asp:TemplateField  HeaderText="Events" ItemStyle-Width="50%">
                                                        <ItemTemplate>
                                                           <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text='<%#Bind("Headline") %>' Font-Names="Times New Roman" ForeColor="#000066"
                                                                style="font-weight: bold;" ></asp:LinkButton>
                                                           
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="center"  />
                                                        </asp:TemplateField>

                                                     
                                                    <asp:TemplateField  HeaderText="Date" ItemStyle-Width="20%">
                                                        <ItemTemplate>
                                                          
                              <asp:Label runat="server" Text='<%# Eval("FromDate", "{0:dd/MM/yyyy}") %>' ID="lblFromDate"></asp:Label>
                             <!-- <br />
                               <asp:Label runat="server" Text='<%# Eval("ToDate", "{0:dd/MM/yyyy}") %>' ID="lblToDate"></asp:Label>-->
                          </ItemTemplate>
                                                      
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="center" />
                                                        </asp:TemplateField>
                                                
                                                    <asp:TemplateField  HeaderText="Remarks" ItemStyle-Width="25%">
                                                        <ItemTemplate>
                                                          
                             <asp:Label runat="server" Text='<%# Bind("Remarks") %>' ID="lblRemarks"></asp:Label>
                              
                          </ItemTemplate>
                                                      
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="center" />
                                                        </asp:TemplateField>
                                                    
 </Columns>
                  

                  <FooterStyle BackColor="White" ForeColor="#000066" />

                <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />

                 <PagerStyle HorizontalAlign="Center" ForeColor="Black"></PagerStyle>

                 <RowStyle BackColor="White" ForeColor="Black"></RowStyle>

                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>








                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5"><b>Name of Coordinators&nbsp;&nbsp; :</b>&nbsp;<br /> <br /></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5">
                                
         <asp:GridView ID="gvCoordinators" runat="server" AutoGenerateColumns="False" DataKeyNames="CoordinatosID"
                   AllowPaging="True" BackColor="#696B8B" BorderColor="#696B8B"  EmptyDataText="No Data Found"
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="98%"
                  OnRowDataBound="gvCoordinators_RowDataBound" OnPageIndexChanging="gvCoordinators_PageIndexChanging">
                  <Columns>
                     
                      <asp:TemplateField HeaderText="Serial" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="CoordinatosID"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblCoordinatosID" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>


                      <asp:TemplateField HeaderText="Name" ItemStyle-Width="35%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblName"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                       
                       <asp:TemplateField HeaderText="Designation" ItemStyle-Width="25%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Designation") %>' ID="lblDesignation"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                       <asp:TemplateField HeaderText="Contact" ItemStyle-Width="35%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Phone") %>' ID="lblPhone"></asp:Label>
                              <br />
                               <asp:Label runat="server" Text='<%# Bind("Email") %>' ID="lblEmail"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>


                      

                  </Columns>
                  

                  <FooterStyle BackColor="White" ForeColor="#000066" />

                <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />

                 <PagerStyle HorizontalAlign="Center" ForeColor="Black"></PagerStyle>

                 <RowStyle BackColor="White" ForeColor="Black"></RowStyle>

                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5">






 <b>Executive Committee&nbsp;&nbsp; :</b>  <br /> 
&nbsp;<asp:GridView ID="gvExecutive" runat="server" AutoGenerateColumns="False" DataKeyNames="ExecutiveID"
                   AllowPaging="True" BackColor="#696B8B" BorderColor="#696B8B"  EmptyDataText="No Data Found"
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="98%"
                  OnRowDataBound="gvExecutive_RowDataBound" OnPageIndexChanging="gvExecutive_PageIndexChanging">
                  <Columns>
                     
                      <asp:TemplateField HeaderText="Serial" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="ExecutiveID"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblExecutiveID" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                     
                    

                      <asp:TemplateField HeaderText="Post" ItemStyle-Width="25%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Post") %>' ID="lblPost"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Name" ItemStyle-Width="45%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblName"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                       
                       

                       <asp:TemplateField HeaderText="ID" ItemStyle-Width="25%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("ID") %>' ID="lblID"></asp:Label>
                             
                          </ItemTemplate>
                      </asp:TemplateField>


                      

                       

                  </Columns>
                  

                 <FooterStyle BackColor="White" ForeColor="#000066" />

                <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />

                 <PagerStyle HorizontalAlign="Center" ForeColor="Black"></PagerStyle>

                 <RowStyle BackColor="White" ForeColor="Black"></RowStyle>

                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                 
              </asp:GridView>







                            </td>
                        </tr>

                    </table>
<br /><br />
                        

















</asp:Panel>
                     
                     
                     
                     
                     
                     </td>
                 </tr>

                 <tr>
                     <td class="auto-style1">

                         &nbsp;</td>
                     <td class="auto-style2">

                         &nbsp;</td>
                     <td style="width:30%">
                         
                         
                         &nbsp;</td>
                 </tr>

             </table> 
              
                
                    

            </div>

             

            
        </div>


    </div>


    </form>


</asp:Content>
