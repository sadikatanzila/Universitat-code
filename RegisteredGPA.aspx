<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="RegisteredGPA.aspx.cs" Inherits="Eastern_Uni.RegisteredGPA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Selected Student List</title>
    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
   






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('image/Other/Content_Banner.png')">

                <form id="Form1" runat="server">
             <table style="width:98%">
                 <tr>
                     <td style="width:5%">

                     </td>
                     <td colspan="3">

                         
                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 10px; width: 95%;">

                    

                   
                           <asp:Label ID="Label1" runat="server" Text="Reception of Successful Students of HSC 2017"></asp:Label> <br />    
                           <strong style="font-size: medium">  (Wednesday, 27th September, 2017)</strong>  
                           </p>
<br/><br/><br/><br/>
                          </td>
                 </tr>
                 
                 
                 
                 
                 <tr>
                     <td style="width:5%">

                         &nbsp;</td>
                     <td colspan="3">

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
<br/><br/>
<b>
Congratulations! You are selected for the Reception of Successful Students of HSC 2017. 
See your participant ID No and attend by 11.00 AM on 27 September 2017 with your online transcript/mark sheet photocopy. Helpline: 01741300002
</b> 
<br/><br/>
</td>
</tr>
                 <tr>
                     <td style="width:5%">

                         &nbsp;</td>
                      <td colspan="3">
    <asp:Label ID="lblMessage" runat="server" Text="" Font-Size="Large" ForeColor="#CC0000" Font-Bold="True"></asp:Label>
 <asp:Panel ID="pnlGrid" runat="server">
                          <asp:GridView ID="gvGPA_Reg" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="Sl" AllowPaging="True"  EmptyDataText="No rows returned"
                 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" Width="100%" OnRowDataBound="gvGPA_Reg_RowDataBound"
                  PageSize="2000" OnRowEditing="gvGPA_Reg_RowEditing" >
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
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Student Trucking Ext." ItemStyle-Width="35%" >
                        
                         <ItemTemplate>
                               
                            
                              <asp:Label runat="server" Text='<%# Bind("MobileNo") %>' ID="lblCell" Visible="false"></asp:Label>
                              <asp:Label runat="server" Text='<%# Bind("TruckingExt") %>' ID="lblTracking" ></asp:Label><br />
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblStdName" ></asp:Label>

                     
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Father's Name" ItemStyle-Width="20%" Visible="false">
                        
                         <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("FatherName") %>' ID="lblFName"></asp:Label>
                            
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

               

                     <asp:TemplateField HeaderText="College/ Institution" ItemStyle-Width="45%">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Institution") %>' ID="lblInstitution" ></asp:Label>
                              <br />   <asp:Label ID="lblEduBrd" runat="server" Font-Bold="True" Text="Board: " Visible="false"></asp:Label>
                              <asp:Label runat="server" Text='<%# Bind("Board") %>' ID="lblBoard" ></asp:Label><br />
                               <asp:Label ID="lbl_Roll" runat="server" Font-Bold="True" Text="Roll: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Roll") %>' ID="lblRoll"></asp:Label>
                             <asp:Label ID="lblGPAInfo" runat="server" Font-Bold="True" Text="GPA: " Visible="false"></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("GPA") %>' ID="lblGPA" Visible="false"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

             


                     <asp:TemplateField HeaderText="Registration Date" ItemStyle-Width="10%" Visible="false">
                         
                         <ItemTemplate>
                            
                               <asp:Label runat="server" Text='<%#Eval("DataInsert_Time","{0:dd/MM/yyyy}")%>' ID="lblTime"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                   
                       <asp:TemplateField HeaderText="Print Admit Card"  ItemStyle-Width="10%"  >
                         
                         <ItemTemplate>
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit" 
                                 onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"
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
     </asp:Panel>


                                <asp:Panel ID="pnlAdmitcard" runat="server">

                    <table>
            <tr>
                <td>
                    <strong>Insert Your Mobile No. which was used for registration time</strong>
                    <br/><br />
                    <asp:Label ID="Label2" runat="server" Text="Mobile Number :"></asp:Label><asp:TextBox ID="txtMobileNo" runat="server" style="margin-left: 42px" Width="183px"></asp:TextBox>
                 
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


            
        </div>


    </div>


</asp:Content>
