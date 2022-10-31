<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAffairs.Master" AutoEventWireup="true" CodeBehind="Admin_FutureEvents.aspx.cs" Inherits="Eastern_Uni.Admin_FutureEvents" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Future Events</title>
      <link href="CSS/AdminHome.css" rel="stylesheet" />
    <link href="Information.css" rel="stylesheet" />
      <style type="text/css">
          .auto-style1 {
          }
          .auto-style2 {
          }
          
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="full_content">

          <form id="Form1" runat="server">
             <br />

             <span style="font-size:larger;font-weight:600;color:blue;">Insert  / Update / Delete Future Events' Related Information</span>
             <hr />
             Insert Clubs' Future Events related inforamtion.....below   
              <br />
              <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">

                 

                     
                                 
                            
                 <br />
                    
                         <asp:Panel ID="pnlCourse" runat="server" GroupingText="Description of Events">
                             <table>
                     

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Club Name :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True"  ID="ddlClubType"
                             Height="20px"  style="position:relative; z-index:auto; top: 0px; left: 6px; width: 200px;"  >
                </asp:DropDownList>

                         </td>

                         <td class="auto-style1">
                              &nbsp;

                         </td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:TextBox ID="txtEventsID" runat="server" Visible="false" Width="250px"></asp:TextBox>
                         </td>

                     </tr>

                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                 </tr>

                                   <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00; text-decoration: underline;">Date of Events</span></td>
                                     <td class="auto-style2" colspan="3">
                                         &nbsp;</td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style1">&nbsp;&nbsp;<span style="font-weight: 500; font-size: larger; color: #f00;">From Date:</span></td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtfrmDate" runat="server" Width="250px"></asp:TextBox>
                                         <asp:CalendarExtender ID="cexDateFrm" runat="server" Format="dd/MM/yyyy" TargetControlID="txtfrmDate">
                                         </asp:CalendarExtender>
                                         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
                                     </td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>

                                 <tr>
                                     <td class="auto-style1">&nbsp;&nbsp;<span style="font-weight: 500; font-size: larger; color: #f00;">To Date </span></td>
                                     <td class="auto-style2" colspan="3">


                                         <asp:TextBox ID="txttoDate" runat="server" Width="250px"></asp:TextBox>
                                         <asp:CalendarExtender ID="cexToDate" runat="server" 
                                             Format="dd/MM/yyyy" TargetControlID="txttoDate">
                                         </asp:CalendarExtender>
                                         
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">&nbsp; Time </span></td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtTime" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                 </tr>

                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">&nbsp; Venue </span></td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtVenue" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                 </tr>

                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>

                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Events Headline :</span></td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtHeadline" runat="server" TextMode="MultiLine" Height="40px" Width="700px"></asp:TextBox>
                                     </td>
                                 </tr>

                     <tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 
                             &nbsp;</td>

                     </tr>

                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Details :</span> &nbsp;</td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtDetails" runat="server" TextMode="MultiLine" Height="150px" Width="700px"></asp:TextBox>
                                     </td>
                                 </tr>

<tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 
                             &nbsp;</td>

                     </tr>
                    
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">PictureLocation</span> </td>
                                     <td class="auto-style2" colspan="3">
                                         
                                         <asp:Panel ID="pnlImage" runat="server" GroupingText="Upload Photo" Width="250px">

                  <input type="file" id="File1" name="File1" runat="server" />
                  <br/>
                  <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1"/>

                 <asp:TextBox ID="txtPictureLocation" runat="server" Width="200px" Visible="false"></asp:TextBox>
                  
                
                <asp:Label ID="lblmsg" runat="server" ForeColor="Blue" ></asp:Label>
                                         &nbsp;
                      </asp:Panel>

                                     </td>
                                 </tr>
                    

                                 
                                 <tr>
                                     <td class="auto-style1" colspan="2">

                                         &nbsp;</td>
                                     <td class="auto-style1" colspan="2">
                                         </td>
                                 </tr>
                    
                               


                    
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Email :</span>&nbsp;</td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Remarks :</span>&nbsp;&nbsp;</td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtRemarks" runat="server" Width="500px"></asp:TextBox>
                                     </td>
                                 </tr>


                    
                                 </table>
</asp:Panel>


                        <table>
                    

                     <tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">


                              
                             &nbsp;</td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                              <asp:Button ID="Submit" runat="server" Text="Save" Height="36px" OnClick="Submit_Click" Width="150px" /></td>

                         <td class="auto-style1">

                             <asp:Button ID="btnClear" runat="server" Text="Clear" Height="36px" OnClick="btnClear_Click" Width="150px" /></td>

                         

                         <td class="auto-style2">

                             &nbsp;</td>

                     </tr>

                 </table>
                 <br />
               


                



             </div>

             <br />
             <br />

              Update or Deletion Below....
              <br />
              <asp:GridView ID="gvClubsEvent" runat="server" AutoGenerateColumns="False" DataKeyNames="EventsID"
                   AllowPaging="True" BackColor="#6699FF" BorderColor="#3366FF" PageSize="25" 
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="98%"
                  OnRowEditing="gvClubsEvent_RowEditing"  OnRowDeleting="gvClubsEvent_RowDeleting" 
                  OnRowDataBound="gvClubsEvent_RowDataBound" OnPageIndexChanging="gvClubsEvent_PageIndexChanging">
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

                     
                      <asp:TemplateField HeaderText="Clubs Name" ItemStyle-Width="25%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblClubName"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                      

                      <asp:TemplateField HeaderText="Event" ItemStyle-Width="40%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Headline") %>' ID="lblHeadline"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                       
                       

                       <asp:TemplateField HeaderText="Date" ItemStyle-Width="20%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Eval("FromDate", "{0:dd/MM/yyyy}") %>' ID="lblFromDate"></asp:Label>
                              <br />
                               <asp:Label runat="server" Text='<%# Eval("ToDate", "{0:dd/MM/yyyy}") %>' ID="lblToDate"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>


                      

                       <asp:TemplateField HeaderText="Edit" ItemStyle-Width="5%" >
                        <ItemTemplate>
                            <asp:ImageButton ID="imgButtonEdit" runat="server" ImageUrl="../image/edit.png" CommandName="Edit"
                                Text="Edit" ToolTip="Edit" OnClientClick="return confirm('Are you sure to Edit ?')"
                                CausesValidation="false" /></ItemTemplate>
                        <ItemStyle CssClass="grid_header" />
                        <ItemStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                      <asp:TemplateField HeaderText="Delete" ItemStyle-Width="5%">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgButton" runat="server" ImageUrl="../image/Delete.gif" CommandName="Delete"
                                    Text="Delete" ToolTip="Delete" OnClientClick="return confirm('Are you sure to delete?')" /></ItemTemplate>
                            <ItemStyle CssClass="grid_header" />
                        </asp:TemplateField>

                  </Columns>
                  

                  <FooterStyle BackColor="#99CCFF" ForeColor="#000099"></FooterStyle>

                 <HeaderStyle BackColor="#0033CC" Font-Bold="True" ForeColor="White"></HeaderStyle>

                 <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>

                 <RowStyle BackColor="#D7EBFF" ForeColor="#000099"></RowStyle>

                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                 <SortedAscendingCellStyle BackColor="#000099"></SortedAscendingCellStyle>


                 <SortedAscendingHeaderStyle BackColor="#000099"></SortedAscendingHeaderStyle>

                 <SortedDescendingCellStyle BackColor="#000099"></SortedDescendingCellStyle>

                 <SortedDescendingHeaderStyle BackColor="#000099"></SortedDescendingHeaderStyle>
              </asp:GridView>


              <asp:SqlDataSource runat="server" ID="Clubs_FutureEvents" 
                  ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                  DeleteCommand="DELETE FROM [Clubs_FutureEvents] WHERE [EventsID] = @EventsID" >
                  
                  <DeleteParameters>
                      <asp:Parameter Name="EventsID" Type="Int32"></asp:Parameter>
                  </DeleteParameters>
                 
              </asp:SqlDataSource>
          </form>

    </div>
</asp:Content>
