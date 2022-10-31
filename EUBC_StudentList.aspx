<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="EUBC_StudentList.aspx.cs" Inherits="Eastern_Uni.EUBC_StudentList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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

                   
                 <table style="width:99%; margin-right: 0px;">
                 <tr>
                     <td style="width:2%">

                     </td>
                    
                     <td colspan="2" style="width:80%">

                         <p  style="text-align:center;font-size:25px;color:blue; font-weight: bold; font-style: normal; margin-left: 2px; width: 100%;">

                    

                   
                           <asp:Label ID="Label1" runat="server" Text="Eastern University Business Challenge 2016"></asp:Label>
                  <br /> <strong style="font-size: 16px">(Nationwide - For H.S.C. / A-Level / equivalent students)
                        <br />   12 March (Saturday), 2016</strong>  
                           </p></td>

                      <td style="width:20%">

                         
                           <asp:Image ID="Image1" runat="server" ImageUrl="~/Admins/Data/Logo_EUBC2016.png" Height="95px" Width="130px"/>
                          </td>
                 </tr>


                 </table>

                      <table style="width:99%; height: 76px;">
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                             &nbsp;</td>
                     </tr>
                   
                     <tr>
                         <td style="font-weight: bold; text-align: center;">
                               Organized by the Faculty of Business Administration Eastern University
                         </td>
                     </tr>
                   
                          </table>
                 <br />
                  <br />
                <br />
                    
               



                <form id="Form1" runat="server">

               
                    <asp:GridView ID="gvEUBCStudent" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="GroupSl" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%" style="margin-left: 15px" OnRowDataBound="gvEUBCStudent_RowDataBound"
                         OnRowEditing="gvEUBCStudent_RowEditing" OnPageIndexChanging="gvEUBCStudent_PageIndexChanging">
                                                <Columns>

                       <asp:TemplateField HeaderText="Sl"  HeaderStyle-Font-Size="Large"  ItemStyle-Width="5%">
                         
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                <asp:TemplateField  visible="false">
                         
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("GroupTruckingExt") %>' ID="lblGroupTruckingExt"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" />
                        <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

 <asp:TemplateField HeaderText="Board"  HeaderStyle-Font-Size="Large"  ItemStyle-Width="10%">
                        
                         <ItemTemplate>
                             
                             <asp:Label runat="server" Text='<%# Bind("Board") %>' ID="lblBoard"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
       <asp:TemplateField  HeaderText="Institution"  HeaderStyle-Font-Size="Large"  ItemStyle-Width="20%">
        <ItemTemplate>
                <asp:Label ID="lblInstitution" runat="server" Text='<%#Bind("Institution") %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>


                   

                     

   <asp:TemplateField  HeaderText="Student List" HeaderStyle-Font-Size="Large" ItemStyle-Width="65%">
                                                        <ItemTemplate>
      
   <asp:GridView ID="gvEUBCStdList" runat="server" AutoGenerateColumns="False" ShowHeader="false"
                 DataKeyNames="Std_Sl" AllowPaging="True"  EmptyDataText="No rows returned"
                 BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" Width="100%"  PageSize="3" >
                 <Columns>

                     <asp:TemplateField HeaderText="Sl" Visible="false">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("TruckingExt") %>' ID="lblTracking"></asp:Label>
                                <asp:Label runat="server" Text='<%# Bind("Cell") %>' ID="lblCell"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Student" ItemStyle-Width="35%">
                        
                         <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblStdName"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                      <asp:TemplateField  Visible="false" ItemStyle-Width="10%">
                        
                         <ItemTemplate>
                                <asp:Label runat="server" Text='<%# Bind("Cell") %>' ID="lblMobile"></asp:Label>
                             <br /> <asp:Label runat="server" Text='<%# Bind("Email") %>' ID="lblstdEmail"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                      <asp:TemplateField HeaderText="Grp. Position"  ItemStyle-Width="20%">
                        
                         <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("DesignationGrp") %>' ID="lblAdmission_Type"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                   
                     <asp:TemplateField HeaderText="Department" ItemStyle-Width="25%">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Department") %>' ID="lblYear"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
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

                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left" />
                                                        </asp:TemplateField>

   <asp:TemplateField HeaderText="Admit Card"  ItemStyle-Width="10%" Visible="false">
                         
                         <ItemTemplate>
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit" onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'"
                                                                Text="Print" ForeColor="#000099"></asp:LinkButton>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                                                </Columns>
                                                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#CDDEF3" />
                                                <HeaderStyle BackColor="#A3A5BA" Font-Bold="True" ForeColor="#000000" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>



                 

                   


</form>


















            </div>



        </div>


        
        </div>
</asp:Content>
