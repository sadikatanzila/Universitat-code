<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="Admin_Faculty.aspx.cs" Inherits="Eastern_Uni.Admin_Faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Faculty Type</title>
    <link href="Information.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="full_content">


         <form id="Form1" runat="server">
             <br />
             <span style="font-size: larger;font-weight:600;color:blue;">INSERT  / UPDATE / DELETE for Faculty Type</span>
             <hr />
             Insert Latest Data in the below<br /><br />
             <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">

                 <span style="font-weight: 500; font-size: larger; color: #f00;">Faculty Type Name</span>
                 <asp:TextBox ID="txtFName" runat="server" Width="250px" style="margin-left: 15px"></asp:TextBox>
                 <label style="color: #C5BCC1">(like Arts, Law etc)</label>

                 <br />
                 <br />
                 <span style="font-weight: 500; font-size: larger; color: #f00;">Priority</span>
                 
                 <asp:TextBox ID="txtPriority" runat="server" Width="250px" style="margin-left: 105px"></asp:TextBox>
                 
                 <br />
                 <br />
                 
                 &nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="txtSl_No" runat="server" Visible="False"></asp:TextBox>
                 
                 
                 <br /><br />
                 <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" />


             </div>


             <br />
             <br />
             Delete or update below ....
             <br />

             <asp:GridView ID="gvFaculty" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="FacultyID" DataSourceID="FacultyType" AllowPaging="True" 
                 BackColor="#6699FF" BorderColor="#3366FF" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" CellSpacing="2" Width="976px" OnRowEditing="gvFaculty_RowEditing" 
                 OnRowDeleting="gvFaculty_RowDeleting">
                 <Columns>

                      <asp:TemplateField HeaderText="Serial No" SortExpression="FacultyID" ItemStyle-Width="10%" >
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("FacultyID") %>' ID="Label6"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Faculty" SortExpression="Faculty">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Faculty") %>' ID="Label1"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                    




                     <asp:TemplateField HeaderText="Priority" SortExpression="Priority">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Priority") %>' ID="Label3"></asp:Label>
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

            

             <asp:SqlDataSource runat="server" ID="FacultyType" 
                 ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                 DeleteCommand="DELETE FROM [FacultyType] WHERE [FacultyID] = @FacultyID" 
                 InsertCommand="INSERT INTO [FacultyType] ([Faculty], [Priority]) VALUES (@Faculty, @Priority)" 
                
                 SelectCommand="SELECT [FacultyID],[Faculty], [Priority] FROM [FacultyType] ORDER BY [Priority] " 
                 UpdateCommand="UPDATE [FacultyType] SET [Faculty] = @Faculty, [Priority] = @Priority WHERE [FacultyID] = @FacultyID">
                 <DeleteParameters>
                     <asp:Parameter Name="serial_no" Type="Int32"></asp:Parameter>
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Faculty" Type="String"></asp:Parameter>
                     <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                     
                     
                 </InsertParameters>
                 <UpdateParameters>
                      <asp:Parameter Name="Faculty" Type="String"></asp:Parameter>
                     <asp:Parameter Name="Priority" Type="String"></asp:Parameter>
                     <asp:Parameter Name="FacultyID" Type="Int32"></asp:Parameter>
                   
                     
                 </UpdateParameters>
             </asp:SqlDataSource>

               
         </form>

    </div>


</asp:Content>
