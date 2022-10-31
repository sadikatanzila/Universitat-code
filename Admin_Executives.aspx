<%@ Page Title="" Language="C#" MasterPageFile="~/StudentAffairs.Master" AutoEventWireup="true" CodeBehind="Admin_Executives.aspx.cs" Inherits="Eastern_Uni.Admin_Executives" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Clubs Executives</title>
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

             <span style="font-size:larger;font-weight:600;color:blue;">INSERT  / UPDATE / DELETE Executive Information</span>
             <hr />
             Insert New Clubs Executives inforamtion.....below   
              <br />
              <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">

                 

                     
                                 
                            
                 <br />
                    
                         <asp:Panel ID="pnlCourse" runat="server" GroupingText="Clubs Executives' Details">
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

                 
                 
                             <asp:TextBox ID="txtExecutiveID" runat="server" Visible="false" Width="250px"></asp:TextBox>
                         </td>

                     </tr>

                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                 </tr>

                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Name of Executive :</span></td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtName" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                 </tr>

                     <tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 
                             &nbsp;</td>

                     </tr>

                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Post :</span> &nbsp;</td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtPost" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                 </tr>

<tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 
                             &nbsp;</td>

                     </tr>
                    
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">ID :</span> &nbsp;</td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtID" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2" colspan="3">&nbsp;</td>
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
              <asp:GridView ID="gvExecutive" runat="server" AutoGenerateColumns="False" DataKeyNames="ExecutiveID"
                   AllowPaging="True" BackColor="#6699FF" BorderColor="#3366FF"  
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="98%"
                  OnRowEditing="gvExecutive_RowEditing"  OnRowDeleting="gvExecutive_RowDeleting" 
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

                     
                      <asp:TemplateField HeaderText="Clubs Name" ItemStyle-Width="20%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("ClubName") %>' ID="lblClubName"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Post" ItemStyle-Width="20%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Post") %>' ID="lblPost"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Name" ItemStyle-Width="30%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblName"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                       
                       

                       <asp:TemplateField HeaderText="ID" ItemStyle-Width="15%" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("ID") %>' ID="lblID"></asp:Label>
                             
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


              <asp:SqlDataSource runat="server" ID="Clubs" 
                  ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                  DeleteCommand="DELETE FROM [Clubs] WHERE [ClubsID] = @ClubsID" >
                  
                  <DeleteParameters>
                      <asp:Parameter Name="ClubsID" Type="Int32"></asp:Parameter>
                  </DeleteParameters>
                 
              </asp:SqlDataSource>
          </form>

    </div>
</asp:Content>
