<%@ Page Title="" Language="C#" MasterPageFile="~/HR_AdminHome.Master" AutoEventWireup="true" CodeBehind="HR_PageAuthorization.aspx.cs" Inherits="Eastern_Uni.HR_PageAuthorization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="js/HRjquery.min.js" type="text/javascript"></script>
    <script src="js/HRddaccordion.js" type="text/javascript"></script>
    <script src="js/HRddaccordion2.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ViewContentPlace" runat="Server">
  <div>
            <table cellpadding="2" border="0" width="100%">
                <tr>
                    <td align="center" style="font-weight: bold">
                        User Wise Authorization
                        <hr style="color: Green" />
                    </td>
                </tr>
            </table>
            <div>
                &nbsp;</div>
            <div align="center" style="width: 90%">
                <table style="padding-left: 50px;">
                    <tr>
                        <td>
                            <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                        </td>
                        <td>
                            :
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlHR_User" runat="server" CssClass="DropDownList" OnSelectedIndexChanged="ddlHR_User_SelectedIndexChanged"
                                AutoPostBack="true">
                            </asp:DropDownList>
                           
                        </td>
                    </tr>
                </table>
            </div>
            <div align="center" style="width: 100%">
                &nbsp;<br />
                <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="false"></asp:Label>
            </div>
            <div align="center" style="width: 100%;">
                <asp:Panel ID="panelGV" runat="server" ScrollBars="Auto" Width="60%" Height="320px">
                   
                    <asp:GridView ID="gvPagesList" runat="server" AutoGenerateColumns="false" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PageId"
                        EmptyDataText="No Data Found" ShowHeaderWhenEmpty="true" EmptyDataRowStyle-Font-Bold="true"
                        EmptyDataRowStyle-HorizontalAlign="Center" OnRowDataBound="gvPages_RowDataBound" 
                        Width="100%" ShowHeader="false">

                        <Columns>

                            <asp:TemplateField>
                                <ItemStyle HorizontalAlign="Center" Width="40px" />
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkBoxPages" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="lblSubMenuHeadID" runat="server" Text='<%#Bind("SubMenuHeadID") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle CssClass="hidden" />
                            </asp:TemplateField>

                            <asp:TemplateField >
                                <ItemStyle CssClass="hidden" />
                                <ItemTemplate>
                                    <asp:Label ID="lblMenuHeadID" runat="server" Text='<%#Bind("MenuHeadID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField >
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblPages" runat="server" Text='<%#Bind("PageName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </asp:Panel>
            </div>
            <div>
                &nbsp;</div>
            <div align="center" style="width: 100%">
                <asp:Button ID="btnPermission" runat="server" Text="Permission" ValidationGroup="UserPageAuthorizationForm"
                    CssClass="Button" OnClick="btnPermission_Click" />
            </div>
            <asp:ValidationSummary ID="vs" runat="server" CssClass="error" ValidationGroup="UserPageAuthorizationForm"
                ShowMessageBox="true" ForeColor="Red" ShowSummary="false" />
      </div>
</asp:Content>

