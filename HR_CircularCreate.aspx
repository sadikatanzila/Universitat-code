<%@ Page Title="" Language="C#" MasterPageFile="~/HR_AdminHome.Master" AutoEventWireup="true" CodeBehind="HR_CircularCreate.aspx.cs" Inherits="Eastern_Uni.HR_CircularCreate" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


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
                        create new job circular
                        <hr style="color: Green" />
                    </td>
                </tr>
            </table>
            <div>
                &nbsp;</div>
            <div align="center" style="width: 90%">
                <table style="padding-left: 50px; width: 463px;">
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtYear" runat="server" ></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblSemester" runat="server" Text="Semester"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                             <asp:DropDownList ID="ddlSemester" runat="server" CssClass="DropDownList" Width="250px">
                            </asp:DropDownList>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblCircularName" runat="server" Text="Circular Name"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtCircular" runat="server" Width="250px"></asp:TextBox>
                           
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblPageName" runat="server" Text="Deadline"></asp:Label>
                        </td>
                        <td>: </td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txtdeadline" runat="server" Width="250px"></asp:TextBox>
                            <asp:CalendarExtender ID="cexDateFrm" runat="server" Format="dd/MM/yyyy" TargetControlID="txtdeadline">
                                         </asp:CalendarExtender>
                                         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="text-align: right">
                            <asp:CheckBox ID="chkDeactive" runat="server" Text="Deactivate Post" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3" style="text-align: center">
                             <asp:Button ID="btnSubmit" runat="server" Text="Save"  OnClick="btnSubmit_Click"   CssClass="Button" Width="100px" />
                              <asp:Button ID="btnClear" runat="server" Text="Clear"  OnClick="btnClear_Click"   CssClass="Button" Width="100px" />
                             <asp:TextBox ID="txtID" runat="server" Visible="false"></asp:TextBox>
                <asp:Label ID="MsgError" runat="server" Text="" EnableViewState="false"></asp:Label>
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
                   
                    <asp:GridView ID="grdJobCircular" runat="server" AutoGenerateColumns="false" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="JobCircular_ID"
                        EmptyDataText="No Data Found" ShowHeaderWhenEmpty="true" EmptyDataRowStyle-Font-Bold="true"
                        EmptyDataRowStyle-HorizontalAlign="Center" OnRowDataBound="grdJobCircular_RowDataBound" 
                        Width="100%" OnPageIndexChanging="grdJobCircular_PageIndexChanging" OnRowDeleting="grdJobCircular_RowDeleting" OnRowEditing="grdJobCircular_RowEditing" >

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
                                    <asp:Label ID="lblCircularID" runat="server" Text='<%#Bind("JobCircular_ID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                           

                            <asp:TemplateField  HeaderText="Circular" >
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblCircular" runat="server" Text='<%#Bind("CircularNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                               <asp:TemplateField  HeaderText="Deadline" >
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("Deadline", "{0:dd/MM/yyyy}") %>' ID="lblDeadline"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            

                            
                       <asp:TemplateField HeaderText="Edit" ItemStyle-Width="5%"  Visible="false">
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
