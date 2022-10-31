<%@ Page Title="" Language="C#" MasterPageFile="~/HR_AdminHome.Master" AutoEventWireup="true" CodeBehind="HR_MenuPage.aspx.cs" Inherits="Eastern_Uni.HR_MenuPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/HRjquery.min.js" type="text/javascript"></script>
    <script src="js/HRddaccordion.js" type="text/javascript"></script>
    <script src="js/HRddaccordion2.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
        }
        .Button {
            margin-left: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ViewContentPlace" runat="server">
     <div>
            <table cellpadding="2" border="0" width="100%">
                <tr>
                    <td align="center" style="font-weight: bold">
                        Create Menu Page
                        <hr style="color: Green" />
                    </td>
                </tr>
            </table>
            <div>
                &nbsp;</div>
            <div align="center" style="width: 90%">
                <table style="padding-left: 50px; width: 463px;">
                    <tr>
                        <td style="text-align: left" class="auto-style1">
                            <asp:Label ID="lblPageHeader" runat="server" Text="Header Name"></asp:Label>
                        </td>
                        <td>
                            :</td>
                        <td style="text-align: left">
                             <asp:DropDownList ID="ddlHeader" runat="server" Width="250px"  >
                                         </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblPageName" runat="server" Text="Menu Page Name"></asp:Label>
                        </td>
                        <td>: </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtPage" runat="server" Width="250px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblPageLink" runat="server" Text="Page Link"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtLink" runat="server" Width="250px"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3" style="text-align: center">
                             <asp:Button ID="btnSubmit" runat="server" Text="Save"  OnClick="btnSubmit_Click"   CssClass="Button" Width="100px" />
                              <asp:Button ID="btnClear" runat="server" Text="Clear"  OnClick="btnClear_Click"   CssClass="Button" Width="100px" />
                             <asp:TextBox ID="txtID" runat="server" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div align="center" style="width: 100%">
                &nbsp;<br />
                <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="false"></asp:Label>
            </div>
            <div align="center" style="width: 100%;">
                <asp:Panel ID="panelGV" runat="server" ScrollBars="Auto" Width="60%" Height="420px">
                   
                    <asp:GridView ID="gvPagesList" runat="server" AutoGenerateColumns="false" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PageId"
                        EmptyDataText="No Data Found" ShowHeaderWhenEmpty="true" EmptyDataRowStyle-Font-Bold="true"
                        EmptyDataRowStyle-HorizontalAlign="Center" OnRowDataBound="gvPages_RowDataBound" 
                        Width="100%" OnPageIndexChanging="gvPagesList_PageIndexChanging" OnRowDeleting="gvPagesList_RowDeleting" OnRowEditing="gvPagesList_RowEditing"  >

                        <Columns>

                          <asp:TemplateField HeaderText="Serial" ItemStyle-Width="10%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                            <asp:TemplateField Visible="false" >
                                
                                <ItemTemplate>
                                    <asp:Label ID="lblMenuHeadID" runat="server" Text='<%#Bind("MenuHeadID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField Visible="false" >
                                
                                <ItemTemplate>
                                    <asp:Label ID="lblPageId" runat="server" Text='<%#Bind("PageId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField  HeaderText="Web Page Name" ItemStyle-Width="30%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblPages" runat="server" Text='<%#Bind("PageName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField  HeaderText="Link">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblURL" runat="server" Text='<%#Bind("URL") %>'></asp:Label>
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

                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </asp:Panel>
            </div>
            <div>
                &nbsp;</div>
            <div align="center" style="width: 100%">
            </div>
            <asp:ValidationSummary ID="vs" runat="server" CssClass="error" ValidationGroup="UserPageAuthorizationForm"
                ShowMessageBox="true" ForeColor="Red" ShowSummary="false" />
       </div>
</asp:Content>
