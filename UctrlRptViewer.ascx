<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UctrlRptViewer.ascx.cs" Inherits="MVTAX_Reports_UctrlRptViewer" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<script type="text/javascript" language="javascript" src="<%# ResolveUrl("~/Common/jquery-1.4.2.min.js") %>"></script>
 <script type="text/javascript">

     $(document).ready(function () {

         $('#showHide1').click(function () {
             var value = this.innerHTML

             if (value == 'Hide') {
                 // debugger;
                 $('#showHide1').text('Show');
                 $(".leftColumn1").hide();
             }
             else {
                 // debugger;
                 $('#showHide1').text('Hide');
                 $(".leftColumn1").show();
             }
         });

     });

    </script>
<div style="background-color: #FFFFFF" >

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table width="100%">
        <tr>
                <td class="leftColumn1">
                    Printer :
                    <asp:DropDownList ID="cboPrinterList" runat="server">
                    </asp:DropDownList>
                    &nbsp;Paper Size :
                    <asp:DropDownList ID="cboPaperSize" runat="server">
                    </asp:DropDownList>
                    &nbsp;Orientation :
                    <asp:DropDownList ID="cboPaperOrientation" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtNoCopies" runat="server">1</asp:TextBox>
                    <asp:CheckBox ID="chkCollated" runat="server" Text="Collated" />
                    &nbsp;Pages From :
                    <asp:TextBox ID="txtPageFrom" runat="server">0</asp:TextBox>
                    &nbsp;To :
                    <asp:TextBox ID="txtPageTo" runat="server">0</asp:TextBox>
                    &nbsp;<asp:Button ID="btnPrint" runat="server" onclick="btnPrint_Click" 
                        Text="Print Report to Printer" OnClientClick="return confirm('Do you want to Print?');" />
                    &nbsp;
                    <a style="font-size:x-small" href="#" id="showHide1">Hide</a>
                </td>
                    
            </tr>
            
            <tr>
                <td>
                    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                        AutoDataBind="true" DisplayGroupTree="False" EnableDatabaseLogonPrompt="False" 
                        EnableParameterPrompt="false" Height="50px" 
                        onreportrefresh="CrystalReportViewer1_ReportRefresh" 
                        onviewzoom="CrystalReportViewer1_ViewZoom" Width="350px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="report_pager">
                    <asp:Button ID="btnFirst" runat="server" Font-Bold="True" 
                        onclick="btnFirst_Click" Text="&lt;&lt;" ToolTip="First" Visible="False" />
                    <asp:Button ID="btnPrev" runat="server" Font-Bold="True" 
                        onclick="btnPrev_Click" Text="&lt;" ToolTip="Previous" Visible="False" />
                    <asp:Button ID="btnNext" runat="server" Font-Bold="True" 
                        onclick="btnNext_Click" Text="&gt;" ToolTip="Next" Visible="False" 
                        Width="22px" />
                    <asp:Button ID="btnLast" runat="server" Font-Bold="True" 
                        onclick="btnLast_Click" Text="&gt;&gt;" ToolTip="Last" Visible="False" />
                </td>
            </tr>
        </table>
        <br />
    </ContentTemplate>
    <Triggers>
        <asp:PostBackTrigger ControlID="CrystalReportViewer1" />
    </Triggers>
</asp:UpdatePanel>

</div>