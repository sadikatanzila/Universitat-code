<%@ Page Title="" Language="C#" MasterPageFile="~/HR_AdminHome.Master" AutoEventWireup="true" CodeBehind="HR_UserCreate.aspx.cs" Inherits="Eastern_Uni.HR_UserCreate" %>
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
        .auto-style2 {
            width: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ViewContentPlace" runat="server">
    <div>
            <table cellpadding="2" border="0" width="100%">
                <tr>
                    <td align="center" style="font-weight: bold">
                        User Create
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
                            <asp:Label ID="lblUserFullname" runat="server" Text="User Full Name"></asp:Label>
                        </td>
                        <td>
                            :</td>
                        <td style="text-align: left">
                             <asp:TextBox ID="txtFName" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td class="auto-style2" style="text-align: left">&nbsp;</td>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtPhn" runat="server" Width="250px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
                        </td>
                        <td>: </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtName" runat="server" Width="250px" OnTextChanged="txtName_TextChanged"></asp:TextBox>
                            <asp:Label ID="lblUser" runat="server" EnableViewState="false" Text=""></asp:Label>
                            </td>
                        <td class="auto-style2" style="text-align: left">&nbsp;</td>
                        <td style="text-align: left" class="auto-style1"><asp:Label ID="lblMail" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtMail" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtPassword" runat="server" Width="250px" ></asp:TextBox>
                            
                        </td>
                        <td class="auto-style2" style="text-align: left">&nbsp;</td>
                        <td style="text-align: left" class="auto-style1"><asp:Label ID="lblCpass" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtCPass" runat="server" Width="250px" OnTextChanged="txtCPass_TextChanged" ></asp:TextBox>
                            <asp:Label ID="lblmsg" runat="server" EnableViewState="false" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblDept" runat="server" Text="Department/ Section"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
           <asp:DropDownList ID="ddlFaculty" runat="server" Width="250px">
                <asp:ListItem Text="No Dept" Value="0"></asp:ListItem>
                <asp:ListItem Text="Arts" Value="1"></asp:ListItem>
                <asp:ListItem Text="Business Administration" Value="2"></asp:ListItem>
                <asp:ListItem Text="Engineering & Technology" Value="3"></asp:ListItem>
                <asp:ListItem Text="Law" Value="4"></asp:ListItem>

               <asp:ListItem Text="HR" Value="5"></asp:ListItem>
                <asp:ListItem Text="IT" Value="6"></asp:ListItem>
            </asp:DropDownList>
                        </td>
                        <td class="auto-style2" style="text-align: left">&nbsp;</td>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblUserID" runat="server" Text="User ID"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtUserID" runat="server" ReadOnly="True" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="7" style="text-align: right">
                             <asp:CheckBox ID="chkUser" runat="server" Text="Is Removed" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="7" style="text-align: center">
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
                   
                    <asp:GridView ID="gvPagesList" runat="server" AutoGenerateColumns="false" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id"
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


                            <asp:TemplateField  HeaderText="User Full Name" ItemStyle-Width="30%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblFName" runat="server" Text='<%#Bind("HR_UserFullName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField  HeaderText="User Name">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%#Bind("HR_UserName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField  HeaderText="Dept. / Section">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblSection" runat="server" Text='<%#Bind("Faculty") %>'></asp:Label>
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
