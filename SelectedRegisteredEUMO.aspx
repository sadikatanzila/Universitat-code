<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="SelectedRegisteredEUMO.aspx.cs" Inherits="Eastern_Uni.SelectedRegisteredEUMO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Selected Registered Students</title>
    <link href="CSS/SubAdmission.css" rel="stylesheet" />
   
      <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
   
    <script type="text/javascript">
        function openPopup(strOpen) {
            open(strOpen, "Info",
                 "status=1, width=300, height=200, top=100, left=300");
        }
</script>
    

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div id="ContentBody"> 
       
    

 <div id="second">
            
       <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/ContentBannerEUMO.jpg')">

         <form id="Form1" runat="server">


             <br /><br />
             <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                     </td>
                     <td style="width:15%">

                         
                         
                          </td>
                     <td>

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 10px; width: 620px;">

                    

                   
                           5th Eastern University Math Olympiad, EUMO 2018 
                  <br /> <strong style="font-size: 16px">(Nationwide - For H.S.C. / A-Level / equivalent students)
                        <br />    Friday, 16th March, 2018</strong>  
                           </p></td>
                 </tr>

                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td style="width:8%">

                         
                           &nbsp;</td>
                     <td>

                         &nbsp;</td>
                 </tr>

                 <tr>
                     <td style="width:2%">

                         &nbsp;</td>
                     <td colspan="2" style="font-weight: bold; text-align: center;">

                          <strong style="font-size: 16px;color:blue;">
                             Organized by the Department of Computer Science and Engineering<br />
&nbsp;Eastern University, Dhaka</strong>
                           </td>
                 </tr>

                 </table>

             <br /><br />
             <table style="width:99%">

                 <tr>
                         <td style="text-align: right;  font-size: medium;" >
                                <div style="width:98%" >
                                    <a href="RegistrationEUMO.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="color:blue; font-weight: bold;"><span>Click here for Online Registration</span></a> 
 <br />
             <a href="eumo2018.aspx" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" style="color:blue; font-weight: bold;"><span>EUMO 2018 Home</span></a> 
             
             

                                </div> 

                         </td>
                     </tr>

             </table>
             
             <br />
             <table style="width:99%;border: thin solid #000000; color:blue;  font-weight: bold; font-style: normal; background-color: #C4C4C4;">
                             <tr>
                                 <td style="text-align: left;font-size: large; margin-left:15px">
 &nbsp;&nbsp;Selected Registered Students
                             </td>
                                 <td style="text-align: right;width:10.5%">
                                     
                         <asp:DataList ID="dtlist" runat="server" RepeatColumns="1" CellPadding="1">
<ItemTemplate>
   <strong> Total: 
        <label> <%#Eval("Total_Student") %> </label>
       </strong>
    </ItemTemplate>
    </asp:DataList>
                                 </td>
                             </tr>
                             
                           
                             
                         </table>
             <asp:Label ID="lblMessage" runat="server" Text="" Font-Size="Large" ForeColor="#CC0000" Font-Bold="True"></asp:Label>

             <asp:Panel ID="pnlGrid" runat="server">
             <table style="width:95%">
                 <tr>
                     <td>

                     </td>
                     <td>
                         <asp:GridView ID="gvEUMOStd" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="Sl" AllowPaging="True"  EmptyDataText="No rows returned"
                 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" Width="100%" OnRowDataBound="gvEUMOStd_RowDataBound"
                 OnPageIndexChanging="gvEUMOStd_PageIndexChanging" PageSize="2000" OnRowEditing="gvEUMOStd_RowEditing">
                 <Columns>

                    
                   
                     

                      <asp:TemplateField HeaderText="Serial No" SortExpression="Sl" ItemStyle-Width="5%">
                         
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     

                     <asp:TemplateField HeaderText="Sl" Visible="false">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Sl") %>' ID="lblSl"></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("TruckingExt") %>' ID="lblTracking"></asp:Label>
                                <asp:Label runat="server" Text='<%# Bind("Cell") %>' ID="lblCell"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Student" SortExpression="Admission_Type" ItemStyle-Width="35%">
                        
                         <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblAdmission_Type"></asp:Label>
                              
                             
                             
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Education Board" ItemStyle-Width="10%">
                        
                         <ItemTemplate>
                             
                             <asp:Label runat="server" Text='<%# Bind("Board") %>' ID="lblBoard"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="College/ Institution" ItemStyle-Width="35%">
                         
                         <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Institution") %>' ID="lblInstitution"></asp:Label>
                             <br />

                             <asp:Label ID="lblYr" runat="server" Font-Bold="True" Text="Year: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Year") %>' ID="lblYear"></asp:Label>



                             <asp:Label ID="lblGPAInfo" runat="server" Font-Bold="True" Text="GPA: " Visible="false"></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("GPA") %>' ID="lblGPA" Visible="false"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     
               
                   <asp:TemplateField HeaderText="Print Admit Card"  ItemStyle-Width="10%">
                         
                         <ItemTemplate>
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"
                                                                Text="Admit Card" ForeColor="#000099"></asp:LinkButton>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>



                 </Columns>


                          

                 <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <AlternatingRowStyle BackColor="AliceBlue" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />


             </asp:GridView>


                          <!--    <asp:TemplateField HeaderText="PopUp">
            <ItemTemplate>
                <a href="javascript:openPopup('Info.aspx?id=<%# Eval("Sl") %>')">
                   <img src="pics/info.gif" border=0px width=13px/></a>
            </ItemTemplate>
            </asp:TemplateField>
                     -->
                     </td>
                 </tr>

             </table>

             </asp:Panel>


              <asp:Panel ID="pnlAdmitcard" runat="server">

                    <table>
            <tr>
                <td>
                    <strong>Insert Your Mobile No. which was used for registration time</strong>
                    <br/><br />
                    <asp:Label ID="Label1" runat="server" Text="Mobile Number :"></asp:Label><asp:TextBox ID="txtMobileNo" runat="server" style="margin-left: 42px" Width="183px"></asp:TextBox>
                 
                </td>
            </tr>
            <tr style="text-align: center">
                <td>
                 
                    <asp:Button ID="btnSubmit" runat="server"  Text="Submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" style="margin-left: 58px" Text="Clear" Width="62px" />
                </td>
            </tr>
        </table>
                  </asp:Panel>


             </form>

           </div>

     </div>

           </div>
</asp:Content>
