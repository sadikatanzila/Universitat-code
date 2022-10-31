<%@ Page Title="" Language="C#" MasterPageFile="~/HR_AdminHome.Master" AutoEventWireup="true" CodeBehind="HR_AppliedPosition.aspx.cs" Inherits="Eastern_Uni.HR_AppliedPosition" %>
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
                        Applied Position Create
                        <hr style="color: Green" />
                    </td>
                </tr>
            </table>
            <div>
                &nbsp;</div>
            <div align="center" style="width: 90%">
                <table style="padding-left: 50px; width:80%">
                    <tr>
                        <td style="text-align: left" class="auto-style1">
                            <asp:Label ID="lbltype" runat="server" Text="Job Category"></asp:Label>
                        </td>
                        <td>
                            :</td>
                        <td style="text-align: left">
                             <asp:DropDownList ID="ddlType" runat="server" CssClass="DropDownList" AutoPostBack="True"
                                  Width="250px" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                            </asp:DropDownList>
                             
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblDept" runat="server" Text="Section/ Department"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="ddldept" runat="server" CssClass="DropDownList" Width="250px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblPosition" runat="server" Text="Position"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtPosition" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left"><asp:Label ID="lblPriority" runat="server" Text="Priority"></asp:Label></td>
                        <td>:</td>
                        <td style="text-align: left"> <asp:TextBox ID="txtPriority" runat="server" Width="250px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3" style="text-align: center">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="Button" OnClick="btnSubmit_Click" Text="Save" Width="100px" />
                            <asp:Button ID="btnClear" runat="server" CssClass="Button" OnClick="btnClear_Click" Text="Clear" Width="100px" />
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
                <asp:Panel ID="panelGV" runat="server" ScrollBars="Auto" Width="60%" Height="320px">
                   
                    <asp:GridView ID="gvJobType" runat="server" AutoGenerateColumns="false" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="JobType_Id"
                        EmptyDataText="No Data Found" ShowHeaderWhenEmpty="true" EmptyDataRowStyle-Font-Bold="true"
                        EmptyDataRowStyle-HorizontalAlign="Center" OnRowDataBound="gvPages_RowDataBound" 
                        Width="100%" OnPageIndexChanging="gvJobType_PageIndexChanging" OnRowDeleting="gvJobType_RowDeleting" OnRowEditing="gvJobType_RowEditing"  >

                        <Columns>

                          <asp:TemplateField HeaderText="Serial" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>


                            <asp:TemplateField  HeaderText="Job Category" ItemStyle-Width="25%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblFName" runat="server" Text='<%#Bind("Category") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField  HeaderText="Department">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblDept" runat="server" Text='<%#Bind("Department") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField  HeaderText="Post">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%#Bind("Job_Post") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField  HeaderText="Priority" ItemStyle-Width="5%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblPriority" runat="server" Text='<%#Bind("Priority") %>'></asp:Label>
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

