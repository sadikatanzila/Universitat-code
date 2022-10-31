<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="StdReg_Searching.aspx.cs" Inherits="Eastern_Uni.StdReg_Searching" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Math Olympiad Search</title>
    <link href="CSS/SubAdmission.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 194px;
        }
        .auto-style2 {
            width: 635px;
        }
        .auto-style3 {
            width: 45px;
        }
        .TextBox {}
        .auto-style4 {
            width: 45px;
            height: 54px;
        }
        .auto-style5 {
            width: 194px;
            height: 54px;
        }
        .auto-style6 {
            width: 635px;
            height: 54px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="full_content" style="background-repeat: no-repeat; background-image: url('image/Other/ContentBanner_master.png')">


         <form id="Form1" runat="server">
             <br />
                    <br /><br />
             <table style="width:98%">
                 <tr>
                     <td style="width:5%">

                     </td>
                     <td style="width:20%">

                         
                           <asp:Image ID="Image1" runat="server" ImageUrl="~/Admins/Data/EUMO.jpg" Height="95px" Width="90px"/>
                          </td>
                     <td colspan="2">

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 10px; width: 620px;">

                    

                   
                           <asp:Label ID="Label2" runat="server" Text="4th Eastern University Math Olympiad, EUMO 2015"></asp:Label>
                  <br /> <strong style="font-size: 16px">(Nationwide - For H.S.C. / A-Level / equivalent students)
                        <br />    Friday, 18th December, 2015</strong>  
                           </p></td>
                 </tr>
                 
                 
                 
                 
                 <tr>
                     <td style="width:5%">

                         &nbsp;</td>
                     <td colspan="3">
                        

                         <table style="width:99%">
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             <strong style="font-size: 16px;color:blue;">
                             Organized by the Department of Computer Science and Engineering<br />
&nbsp;Eastern University, Dhaka</strong>
                         </td>
                     </tr>
                          </table>

                     </td>
                 </tr>
                 </table>
             <br /><br /><br />
             
             <hr />
             <b>Searching info.....below</b><br /><br />
             <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">
                  <br />

                 
                
                 

                 

                 <table>
                     
                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Name</span></td>

                         <td class="auto-style2">

                 <asp:TextBox ID="txtName" runat="server" CssClass="TextBox" Width="250px"></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              &nbsp;</td>

                         <td class="auto-style2">

                             <asp:TextBox ID="txtSl" runat="server" CssClass="TextBox" Visible="false"></asp:TextBox>
                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1" style="vertical-align: top">

                               <span style="font-weight: 500; font-size: larger; color: #f00;">Cell Number </span></td>

                         <td class="auto-style2">

                             
                         <asp:TextBox ID="txtCell" runat="server" Width="250px" CssClass="TextBox"></asp:TextBox>
                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">SSC/ O-Level <br />Roll Number</span></td>

                         <td class="auto-style2">

                            <asp:TextBox ID="txtRoll" runat="server" CssClass="TextBox" Width="250px"></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style4">

                             </td>

                         <td class="auto-style5">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">GPA</span></td>

                         <td class="auto-style6">

                            <asp:TextBox ID="txtGPA" runat="server" CssClass="TextBox" Width="250px"></asp:TextBox>
                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Education Board</span></td>

                         <td class="auto-style2">

                            <asp:DropDownList ID="ddlBoard" runat="server" AutoPostBack="True"
                                            Height="22px" Width="260px"  >
                                            <asp:ListItem Selected="True" Value="0">---Please Select---</asp:ListItem>
                                            <asp:ListItem Value="1">Barisal</asp:ListItem>
                                            <asp:ListItem Value="2">Chittagong</asp:ListItem>
                                            <asp:ListItem Value="3">Comilla</asp:ListItem>
                                            <asp:ListItem Value="4">Dhaka</asp:ListItem>
                                            <asp:ListItem Value="5">Dinajpur</asp:ListItem>
                                            <asp:ListItem Value="6">Jessore</asp:ListItem>
                                            <asp:ListItem Value="7">Rajshahi</asp:ListItem>
                                            <asp:ListItem Value="8">Sylhet</asp:ListItem>
                                   <asp:ListItem Value="9">Madrasah</asp:ListItem>
                                          </asp:DropDownList>

                         </td>

                     </tr>

                     </table>
                 
                 
                 <br />
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                 <br />
                
                
                 


                 <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" Width="154px" style="margin-left: 250px" />
                  <asp:Button ID="btnClear" runat="server" Text="Clear" Height="36px" OnClick="btnClear_Click" Width="154px" style="margin-left: 89px" />

             </div>


             <br />
             <br />
            

              <b>Searching Result about Students .........</b>
                <br />
             <br />
             <asp:GridView ID="gvEUMOStd" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="Sl" AllowPaging="True"  EmptyDataText="No rows returned"
                 BackColor="#6699FF" BorderColor="#3366FF" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" CellSpacing="2" Width="100%" OnRowDataBound="gvEUMOStd_RowDataBound"
                 OnPageIndexChanging="gvEUMOStd_PageIndexChanging" PageSize="2000" OnRowEditing="gvEUMOStd_RowEditing" OnRowDeleting="gvEUMOStd_RowDeleting">
                 <Columns>

                    
                   
                     

                      <asp:TemplateField HeaderText="Serial No" SortExpression="Sl" >
                         
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     

                     <asp:TemplateField HeaderText="Sl" Visible="false" >
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Sl") %>' ID="lblSl"></asp:Label>
                                <asp:Label runat="server" Text='<%# Bind("TruckingExt") %>' ID="lblTracking"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Student Info" SortExpression="Admission_Type">
                        
                         <ItemTemplate>
                               <asp:Label ID="lblName" runat="server" Font-Bold="True" Text="Name: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblAdmission_Type"></asp:Label>
                               <br />
                             <asp:Label ID="lblStdID" runat="server" Font-Bold="True" Text="Student ID: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("StudentID") %>' ID="lblStudentID"></asp:Label>
                             <br />
                             <asp:Label ID="lblmailID" runat="server" Font-Bold="True" Text="Email ID: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Email") %>' ID="lblEmail"></asp:Label>
                              <br />
                             <asp:Label ID="lblCellnum" runat="server" Font-Bold="True" Text="Cell Number: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Cell") %>' ID="lblCell"></asp:Label>
                             
                             
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Education Board" >
                        
                         <ItemTemplate>
                             
                             <asp:Label runat="server" Text='<%# Bind("Board") %>' ID="lblBoard"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Others Info" >
                         
                         <ItemTemplate>
                             <asp:Label ID="lblIns" runat="server" Font-Bold="True" Text="College/ Institution: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Institution") %>' ID="lblInstitution"></asp:Label>
<br />
                             <asp:Label ID="lblRollNo" runat="server" Font-Bold="True" Text="SSC/ O-Level Roll Number: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Roll") %>' ID="lblRoll"></asp:Label>
<br />

                             <asp:Label ID="lblYr" runat="server" Font-Bold="True" Text="Year: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Year") %>' ID="lblYear"></asp:Label>

<br />

                             <asp:Label ID="lblGPAInfo" runat="server" Font-Bold="True" Text="GPA: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("GPA") %>' ID="lblGPA"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                      


                     <asp:TemplateField HeaderText="Registration Date" ItemStyle-Width="5%">
                         
                         <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Eval("DataInsert_Time", "{0:dd/MM/yyyy}") %>' ID="lblDataInsert_Time"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                   <asp:TemplateField ItemStyle-Width="10%">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl='<%# Bind("PicLocation") %>' Width="100px" />
                                                
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                                <HeaderStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>


                   <asp:TemplateField HeaderText="Admit Card" ItemStyle-Width="10%">
                         
                         <ItemTemplate>
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text="Admit Card"></asp:LinkButton>
                         </ItemTemplate>
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
             




             
             <asp:SqlDataSource runat="server" ID="MathOlympiad" 
                 ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                 DeleteCommand="DELETE FROM [MathOlympiad] WHERE [Sl] = @Sl" >
                 
                 <DeleteParameters>
                     <asp:Parameter Name="Sl" Type="Int32"></asp:Parameter>
                 </DeleteParameters>
                
             </asp:SqlDataSource>
             </form>

    </div>


</asp:Content>
