<%@ Page Title="" Language="C#" MasterPageFile="~/EUMO.Master" AutoEventWireup="true" CodeBehind="RegisteredStudents.aspx.cs" Inherits="Eastern_Uni.RegisteredStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/AdminHome.css" rel="stylesheet" />
    <link href="Information.css" rel="stylesheet" />


    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="full_content" style="background-repeat: no-repeat; background-image: url('image/Other/ContentBanner_master.png')">

        





        <!-- start of second phase -->
     
                <form id="Form1" runat="server">
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

                    

                   
                           <asp:Label ID="Label1" runat="server" Text="4th Eastern University Math Olympiad, EUMO 2015"></asp:Label>
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
                 
                 
                 
                 
                 <tr>
                     <td style="width:5%">

                         &nbsp;</td>
                     <td colspan="3">
<br />
                         <table style="width:99%;border: thin solid #000000; color:blue;  font-weight: bold; font-style: normal; background-color: #C4C4C4;">
                             <tr>
                                 <td style="text-align: left;font-size: large; margin-left:15px">
 &nbsp;&nbsp;List of Registered Students
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
                        



                     </td>
                 </tr>
                 <tr>
                     <td style="width:5%">

                         &nbsp;</td>
                      <td colspan="3">


                          <asp:GridView ID="gvEUMOStd" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="Sl" AllowPaging="True"  EmptyDataText="No rows returned"
                 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" Width="100%" OnRowDataBound="gvEUMOStd_RowDataBound"
                 OnPageIndexChanging="gvEUMOStd_PageIndexChanging" PageSize="2000" OnRowEditing="gvEUMOStd_RowEditing">
                 <Columns>

                    
                   
                     

                      <asp:TemplateField HeaderText="Serial No" SortExpression="Sl" >
                         
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
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                      <asp:TemplateField HeaderText="GPA" >
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("GPA") %>' ID="lblGPA"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                     <asp:TemplateField HeaderText="Registration Date" >
                         
                         <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Eval("DataInsert_Time", "{0:dd/MM/yyyy}") %>' ID="lblDataInsert_Time"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                   <asp:TemplateField HeaderText="Photo" >
                                                <ItemTemplate>
                                                    <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl='<%# Bind("PicLocation") %>' Width="100px" />
                                                
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                                <HeaderStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>


                   <asp:TemplateField HeaderText="Print Admit Card"  >
                         
                         <ItemTemplate>
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text="Admit Card"></asp:LinkButton>
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
                          </td>
                 </tr>
                 <tr>
                     <td style="width:5%">

                         &nbsp;</td>
                     <td style="width:15%">

                         &nbsp;</td>
                     <td style="width:20%">

                         &nbsp;</td>
                     <td style="width:60%">

                         &nbsp;</td>
                 </tr>
             </table>  
               
              

                
                </form>

           
    </div>


</asp:Content>
