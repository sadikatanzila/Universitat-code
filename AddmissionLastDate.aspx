<%@ Page Title="" Language="C#" MasterPageFile="~/Admission.Master" AutoEventWireup="true" CodeBehind="AddmissionLastDate.aspx.cs" Inherits="Eastern_Uni.AddmissionLastDate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admission Last Date</title>
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


     <div class="full_content">


         <form id="Form1" runat="server">
             <br />
             <span style="font-size: larger;font-weight:600;color:blue;">INSERT  / UPDATE / DELETE Last Date of Admission related Inforametion</span>
             <hr />
             Insert Latest info.....below<br /><br />
             <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">
                  <br />


                 <table>
                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Admission Type</span></td>

                         <td class="auto-style2">

                 <asp:DropDownList runat="server" AutoPostBack="True" 
                             Height="20px" 
                             style="position:relative; z-index:auto; top: 0px; left: 6px; width: 200px;"  
                             ID="ddlAdmsnType" OnSelectedIndexChanged="ddlAdmsnType_SelectedIndexChanged"     >
                </asp:DropDownList>
                             &nbsp;&nbsp;&nbsp;<span style="font-weight: 500; font-size: larger; color: #f00;">*</span><label style="color: #808080">  (like Graduate or Ungergraduate)</label>
                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Semister</span></td>

                         <td class="auto-style2">

                 <asp:DropDownList runat="server" AutoPostBack="True" 
                             Height="20px" 
                             style="position:relative; z-index:auto; top: 0px; left: 6px; width: 200px;"  
                             ID="ddlSemister" OnSelectedIndexChanged="ddlSemister_SelectedIndexChanged"   >
                </asp:DropDownList>
                             &nbsp;&nbsp;&nbsp;<span style="font-weight: 500; font-size: larger; color: #f00;">*</span><label style="color: #808080">  (like Fall, Spring etc)</label>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Year</span></td>

                         <td class="auto-style2">

                 <asp:TextBox ID="txtYear" runat="server" CssClass="TextBox" Width="194px"></asp:TextBox>

                 <span style="font-weight: 500; font-size: larger; color: #f00;">*</span>
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

                         <td class="auto-style1" >

                               <span style="font-weight: 500; font-size: larger; color: #f00;">Last Date of Application</span></td>

                         <td class="auto-style2">

                             
                         <asp:TextBox ID="txtAppLastDate" runat="server" TextMode="MultiLine" Height="50px" Width="350px"></asp:TextBox>
                             <span style="font-weight: 500; font-size: larger; color: #f00;">*</span>
                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Admission Date</span></td>

                         <td class="auto-style2">

                            <asp:TextBox ID="txtAdd_Date" runat="server" CssClass="TextBox" TextMode="MultiLine" Height="50px" Width="350px"></asp:TextBox>

                             <span style="font-weight: 500; font-size: larger; color: #f00;">*</span>
                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style4">

                             </td>

                         <td class="auto-style5">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Admission Office (for Contact)</span></td>

                         <td class="auto-style6">

                            <asp:TextBox ID="txtAdd_Office" runat="server" CssClass="TextBox" TextMode="MultiLine" Height="100px" Width="350px"></asp:TextBox>
                             <span style="font-weight: 500; font-size: larger; color: #f00;">*</span>
                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">

                             &nbsp;</td>

                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Admission Office for Foreign Candidates</span></td>

                         <td class="auto-style2">

                            <asp:TextBox ID="txtForeignStd" runat="server" CssClass="TextBox" TextMode="MultiLine" Height="100px" Width="350px"></asp:TextBox>

                             <span style="font-weight: 500; font-size: larger; color: #f00;">*</span>
                         </td>

                     </tr>

                     </table>
                 
                 
                 <br />
                 <br />
                
                
                 


                 <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" Width="154px" style="margin-left: 250px" />
                  <asp:Button ID="btnClear" runat="server" Text="Clear" Height="36px" OnClick="btnClear_Click" Width="154px" style="margin-left: 89px" />

             </div>


             <br />
             <br />
             Delete or update below ....
             <br />

             

             <asp:GridView ID="gvAdStd" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="ID" AllowPaging="True"  EmptyDataText="No rows returned"
                 BackColor="#6699FF" BorderColor="#3366FF" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" CellSpacing="2" Width="100%" 
                 OnRowDeleting="gvAdStd_RowDeleting" OnRowEditing="gvAdStd_RowEditing" >
                 <Columns>

                    
                   
                     

                      <asp:TemplateField HeaderText="Serial No" SortExpression="ID" ItemStyle-Width="5%">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("ID") %>' ID="lblID"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     

                     <asp:TemplateField HeaderText="Admission Type ID" Visible="false">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Admission_TypeID") %>' ID="lblAdmission_TypeID"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Admission Type" SortExpression="Admission_Type">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Admission_Type") %>' ID="lblAdmission_Type"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Semister ID" Visible="false">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Admission_SemisterID") %>' ID="lblAdmission_SemisterID"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Semister" SortExpression="Admission_Semister">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Admission_Semister") %>' ID="lblAdmission_Semister"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                      <asp:TemplateField HeaderText="Admission Year" SortExpression="Admission_Date">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Admission_Year") %>' ID="lblAd_Year"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                     


                    

                      <asp:TemplateField HeaderText="Last Date of Application" SortExpression="App_LastDate" >
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("App_LastDate") %>' ID="lblApp_LastDate"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Addmission Date" SortExpression="Admission_Date">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Admission_Date") %>' ID="lblAdmission_Date"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                       <asp:TemplateField HeaderText="Contact Office" SortExpression="Admission_Office">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Admission_Office") %>' ID="lblAdmission_Office"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                     <asp:TemplateField HeaderText="For Foreign Candidates" SortExpression="Foreigners_Office">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Foreigners_Office") %>' ID="lblForeigners_Office"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
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


                      <asp:TemplateField HeaderText="Delete">
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
             

             <asp:SqlDataSource runat="server" ID="Add_LastDate" 
                 ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                 DeleteCommand="DELETE FROM [Addmission_LastDate] WHERE [ID] = @ID" >
                 
                 <DeleteParameters>
                     <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                 </DeleteParameters>
                
             </asp:SqlDataSource>
             </form>

    </div>


</asp:Content>