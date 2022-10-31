<%@ Page Title="" Language="C#" MasterPageFile="~/HR_AdminHome.Master" AutoEventWireup="true" CodeBehind="HR_ReActivePrevCircular.aspx.cs" Inherits="Eastern_Uni.HR_ReActivePrevCircular" %>
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
                        Re-Active Previous Job Circular
                        <hr style="color: Green" />
                    </td>
                </tr>
            </table>
            <div>
                &nbsp;</div>
            <div align="center" style="width: 90%">
                <table style="padding-left: 50px; width:80%">
                    <tr>
                        <td style="text-align: left" class="auto-style1" colspan="7">
                <asp:Label ID="errorMsg" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label> 
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text="Job Circular"></asp:Label></td>
                        <td>
                            :</td>
                        <td style="text-align: left" colspan="5">
                              <asp:DropDownList ID="ddlCircularAll" runat="server" CssClass="DropDownList" Width="350px">
                             </asp:DropDownList>

                        </td>
                    </tr>

                    </table>
                <asp:Panel ID="pnlCircularCreate" runat="server">


                <table style="padding-left: 50px; width:80%">
                    <tr>
                        <td style="text-align: left" class="auto-style1">
                            <asp:Label ID="lbltype0" runat="server" Text="Applied Position Type"></asp:Label>
                        </td>
                        <td>
                            :</td>
                        <td style="text-align: left" colspan="5">
                             <asp:DropDownList ID="ddlJobCat1" runat="server" CssClass="DropDownList" Width="250px"
                                 AutoPostBack="True" OnSelectedIndexChanged="ddlJobCat1_SelectedIndexChanged">
                             </asp:DropDownList>
                             
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="auto-style1">
                            <asp:Label ID="Label4" runat="server" Text="Department/ Section"></asp:Label>
                        </td>
                        <td>
                            :</td>
                        <td style="text-align: left" colspan="5">
                            <asp:DropDownList ID="ddlDept1" runat="server" CssClass="DropDownList" Width="250px" 
                                AutoPostBack="True" OnSelectedIndexChanged="ddlDept1_SelectedIndexChanged" >
                            </asp:DropDownList>
                             
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lbltype" runat="server" Text="Applied Position"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:DropDownList ID="ddlType1" runat="server" CssClass="DropDownList" Width="250px" >
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblSubject1" runat="server" Text="Subject"></asp:Label>
                        </td>
                        <td><asp:Label ID="lblcolon1" runat="server" Text=":"></asp:Label></td>
                        <td style="text-align: left" colspan="5">
                                                        <asp:DropDownList ID="ddlSubject1" runat="server" CssClass="DropDownList" Width="250px">
                            </asp:DropDownList>
                        
                            <asp:Label ID="lblmsg1" runat="server" Text="mandatory for faculty section"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left"><asp:Label ID="lblPriority" runat="server" Text="From Date"></asp:Label></td>
                        <td>:</td>
                        <td style="text-align: left"> <asp:TextBox ID="txtfrmDate1" runat="server" Width="105px"></asp:TextBox>

                             <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" TargetControlID="txtfrmDate1">
                                         </asp:CalendarExtender>
                        </td>
                        <td style="text-align: left">&nbsp;</td>
                        <td style="text-align: left">
                            <asp:Label ID="lblPriority0" runat="server" Text="To Date"></asp:Label>
                            
                        </td>
                        <td style="text-align: left">:</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txttoDate1" runat="server" Width="105px"></asp:TextBox>
                             <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" TargetControlID="txttoDate1">
                                         </asp:CalendarExtender>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="text-align: right" colspan="5">
                            <asp:CheckBox ID="chkDeactive1" runat="server" Text="Deactivate Post" Visible="false" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="7" style="text-align: center">
                            <asp:Button ID="btnSearch" runat="server" CssClass="Button"  Text="Search" Width="100px" OnClick="btnSearch_Click" />
                            <asp:Button ID="btnRefresh" runat="server" CssClass="Button"  Text="Cancel" Width="100px" OnClick="btnRefresh_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="7" style="text-align: left">
                <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="false"></asp:Label>
                        </td>
                    </tr>
                </table>


                <br />




                 <asp:Panel ID="pnlReActive" runat="server" GroupingText="Re Active" Visible="false" Width="85%">
                     <table style="width:100%" >
                <tr>
                    <td align="right" style="vertical-align: top;" class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Job Circular"></asp:Label>
<br /><br />
                    </td>
                    <td align="center" style="text-transform: capitalize;vertical-align: top;" class="auto-style4">
                        :</td>
                    <td align="left" style="text-transform: capitalize; vertical-align: top;">
                        <asp:DropDownList ID="ddlCircular" runat="server" CssClass="DropDownList" Width="350px">
                             </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="text-transform: capitalize;" colspan="3">
                        <asp:Label ID="lblCircularID" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
</table>


                     
                     <table style="padding-left: 50px; width:95%">
                         
                       
                         
                         <tr>
                             <td class="auto-style1" style="text-align: left">
                                 <asp:Label ID="lblJobCat" runat="server" Text="Applied Position Type"></asp:Label>
                             </td>
                             <td>:</td>
                             <td colspan="5" style="text-align: left">
                                 <asp:DropDownList ID="ddlJobCat" runat="server" AutoPostBack="True" CssClass="DropDownList" OnSelectedIndexChanged="ddlJobCat_SelectedIndexChanged" Width="250px">
                                 </asp:DropDownList>
                             </td>
                         </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="Label2" runat="server" Text="Department/ Section"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:DropDownList ID="ddlDept" runat="server" CssClass="DropDownList" Width="250px" 
                                AutoPostBack="True" OnSelectedIndexChanged="ddlDept_SelectedIndexChanged" >
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="Label3" runat="server" Text="Applied Position"></asp:Label>
                        </td>
                        <td>:</td>
                        <td colspan="5" style="text-align: left">
                            <asp:DropDownList ID="ddlType" runat="server" CssClass="DropDownList"  Width="250px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
                        </td>
                        <td> <asp:Label ID="lblcolon" runat="server" Text=":"></asp:Label></td>
                        <td style="text-align: left" colspan="5">
                    <asp:DropDownList ID="ddlSubject" runat="server" CssClass="DropDownList" Width="250px">
                            </asp:DropDownList>
                        
                            <asp:Label ID="lblmsg" runat="server" Text="mandatory for faculty section"></asp:Label>
                        </td>
                    </tr>


                         <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblSemester" runat="server" Text="Semester"></asp:Label>
                        </td>
                        <td> &nbsp;</td>
                        <td style="text-align: left" colspan="5">
                    <asp:DropDownList ID="ddlSemester" runat="server" CssClass="DropDownList" Width="250px">
                            </asp:DropDownList>
                        
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
                        </td>
                        <td> &nbsp;</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtYear" runat="server" ></asp:TextBox>


                            
                        </td>
                    </tr>


                    <tr>
                        <td class="auto-style1" style="text-align: left"><asp:Label ID="lblVacency" runat="server" Text="No. of Vacencies"></asp:Label></td>
                        <td>:</td>
                        <td style="text-align: left" colspan="5"> <asp:TextBox ID="txtVaceny" runat="server" Width="250px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left; vertical-align: top;">
                            <asp:Label ID="lblDescription" runat="server" Text="Job Description/ Responsibilities"></asp:Label>
                        </td>
                        <td style="vertical-align: top;">:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtDescription" runat="server" Width="500px" Height="150px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left; vertical-align: top;">
                            <asp:Label ID="lblNature" runat="server" Text="Job Nature"></asp:Label>
                        </td>
                        <td style="vertical-align: top;">:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtNature" runat="server" Height="150px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left; vertical-align: top;">
                            <asp:Label ID="lblEducational" runat="server" Text="Educational Requirements"></asp:Label>
                        </td>
                        <td style="vertical-align: top;">:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtEducational" runat="server" Height="150px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                        </td>
                    </tr>
                         <tr>
                        <td class="auto-style1" style="text-align: left; vertical-align: top;">
                            <asp:Label ID="lblExperience0" runat="server" Text="Experience on Job Time"></asp:Label>
                        </td>
                        <td style="vertical-align: top;">:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtExperienceTime" runat="server" Width="250px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left; vertical-align: top;">
                            <asp:Label ID="lblExperience" runat="server" Text="Working Experience"></asp:Label>
                        </td>
                        <td style="vertical-align: top;">:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtExperience" runat="server" Height="150px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left; vertical-align: top;">
                            <asp:Label ID="lblAdditionalReq" runat="server" Text="Additional Job Requirements"></asp:Label>
                        </td>
                        <td style="vertical-align: top;">:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtAdditionalReq" runat="server" Height="150px" TextMode="MultiLine" Width="500px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="text-align: left">
                            <asp:Label ID="lblLocation" runat="server" Text="Job Location"></asp:Label>
                        </td>
                        <td class="auto-style2">:</td>
                        <td style="text-align: left" class="auto-style2" colspan="5">
                            <asp:TextBox ID="txtLocation" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblSalaryRan" runat="server" Text="Salary Range"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left" colspan="5">
                            <asp:TextBox ID="txtSalaryRan" runat="server" Width="250px"></asp:TextBox>
                        </td>
                    </tr>

                    
                    <tr>
                        <td class="auto-style1" style="text-align: left">
                            <asp:Label ID="lblFrmDate" runat="server" Text="From Date"></asp:Label>
                        </td>
                        <td>:</td>
                        <td style="text-align: left">
                          
                            <asp:TextBox ID="txtfrmDate" runat="server" Width="250px"></asp:TextBox>
                                         <asp:CalendarExtender ID="cexDateFrm" runat="server" Format="dd/MM/yyyy" TargetControlID="txtfrmDate">
                                         </asp:CalendarExtender>
                                         <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
                                     
                           
                           
                          
                        </td>
                        <td style="text-align: left">&nbsp;</td>
                        <td style="text-align: left">
                            <asp:Label ID="lblDateline" runat="server" Text="Deadline"></asp:Label>
                        </td>
                        <td style="text-align: left">:</td>
                        <td style="text-align: left">
                            
                           <asp:TextBox ID="txttoDate" runat="server" Width="250px"></asp:TextBox>
                                         <asp:CalendarExtender ID="cexToDate" runat="server" Format="dd/MM/yyyy" TargetControlID="txttoDate">
                                         </asp:CalendarExtender>
                            
                        </td>
                    </tr>

                    
                    <tr>
                        <td class="auto-style1" style="text-align: left">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="text-align: right" colspan="5"> <asp:CheckBox ID="chkDeactive" runat="server" Text="Deactivate Post" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="7" style="text-align: center">
                           <asp:Button ID="btnSubmit" runat="server" CssClass="Button" OnClick="btnSubmit_Click" Text="Save" Width="100px" />
                            <asp:Button ID="btnClear" runat="server" CssClass="Button" OnClick="btnClear_Click" Text="Clear" Width="100px" />
                            <asp:TextBox ID="txtJobCircular_ID" runat="server" Visible="false"></asp:TextBox>
                        </td>
                    </tr>
                </table>




                     </asp:Panel>

                     </asp:Panel>
            </div>
            <div align="center" style="width: 100%">
                &nbsp;<br />
            </div>
            <div align="center" style="width: 100%;">
                
                <asp:Panel ID="panelGV" runat="server" ScrollBars="Auto" Width="90%" Height="500px">
                   
                    <asp:GridView ID="gvJobCircular" runat="server" AutoGenerateColumns="false" BackColor="White" PageSize="25"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="JobPost_ID"
                        EmptyDataText="No Data Found" ShowHeaderWhenEmpty="true" EmptyDataRowStyle-Font-Bold="true"
                        EmptyDataRowStyle-HorizontalAlign="Center" OnRowDataBound="gvPages_RowDataBound" 
                        Width="100%" OnPageIndexChanging="gvJobCircular_PageIndexChanging" OnRowDeleting="gvJobCircular_RowDeleting" OnRowEditing="gvJobCircular_RowEditing"  >

                        <Columns>

                          <asp:TemplateField HeaderText="Serial" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                              <asp:TemplateField  HeaderText="Circular ID" ItemStyle-Width="10%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblCircularID" runat="server" Text='<%#Bind("CircularName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField  HeaderText="Post Name" ItemStyle-Width="20%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblPost" runat="server" Text='<%#Bind("Job_Post") %>'></asp:Label>
                                    <br />
                                     <asp:Label ID="lblDept" runat="server" Text='<%#Bind("Department") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                              <asp:TemplateField  HeaderText="No.of Vacancies" ItemStyle-Width="5%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblValue" runat="server" Text='<%#Bind("Value") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField  HeaderText="Educational Requirements" ItemStyle-Width="45%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblReq" runat="server" Text='<%#Bind("Educational_Req") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField  HeaderText="Deadline" ItemStyle-Width="15%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>

                                     <asp:Label runat="server" Text='<%# Eval("Start_Date", "{0:dd/MM/yyyy}") %>' ID="lblFromDate"></asp:Label>
                                <br />   <asp:Label ID="lbl_To" runat="server" Text='to'></asp:Label>
                                     <br />
                               <asp:Label runat="server" Text='<%# Eval("Deadline", "{0:dd/MM/yyyy}") %>' ID="lblToDate"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                              <asp:TemplateField  HeaderText="Active Post" ItemStyle-Width="5%">
                                <ItemStyle CssClass="alphabetic" />
                                <ItemTemplate>
                                    <asp:Label ID="lblActivate" runat="server" Text='<%#Bind("IsActive") %>'></asp:Label>
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
