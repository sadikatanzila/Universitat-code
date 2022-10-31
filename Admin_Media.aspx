<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="Admin_Media.aspx.cs" Inherits="Eastern_Uni.Admin_Media" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Media</title>
    <link href="CSS/AdminHome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="full_content">


         <form id="Form1" runat="server">
             <br />
             <span style="font-size: larger;font-weight:600;color:blue;">INSERT  / UPDATE / DELETE for News & Events Section</span>
             <hr />
             Insert Latest news.....below<br /><br />
             <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">

                 <span style="font-weight: 500; font-size: larger; color: #f00;">Date</span>
                 <asp:TextBox ID="Date" runat="server"></asp:TextBox>


                 <span style="font-weight: 500; font-size: larger; color: #f00;">Month</span>
                 <asp:TextBox ID="Month" runat="server"></asp:TextBox>


                 <span style="font-weight: 500; font-size: larger; color: #f00;">Year</span>
                 <asp:TextBox ID="Year" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 <span style="font-weight: 500; font-size: larger; color: #f00;">Headline</span><br />
                 <asp:TextBox ID="Headline" runat="server" TextMode="MultiLine" Height="40px" Width="900px"></asp:TextBox>

                 <br />
                 <br />

                 <span style="font-weight: 500; font-size: larger; color: #f00;">Brief News & Events</span><br />
                 <asp:TextBox ID="Brief" runat="server" TextMode="MultiLine" Height="140px" Width="380px"></asp:TextBox>
                 <br />
                 <br />
                  <span style="font-weight: 500; font-size: larger; color: red;">Detail Information Goes Here </span>
                 <br />
                 <asp:TextBox ID="Detail" runat="server" TextMode="MultiLine" Height="500px" Width="900px"></asp:TextBox>

                 <br />
                 <br />
                 <span style="font-weight: 500; font-size: larger; color: #f00;">Header Picture</span>

                  <input type="file" id="File1" name="File1" runat="server"/>
                  <br/>
                  <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1"/>

                 <asp:TextBox ID="txtPictureLocation" runat="server" Width="347px" Visible="false"></asp:TextBox>
                 
                 <br /><br />

                 <span style="font-weight: 500; font-size: larger; color: #f00;">Have Media Details ?</span>
                 <asp:DropDownList ID="ddlMediadtl" runat="server" Width="150px" AutoPostBack="True"
                                            style="margin-left: 26px" OnSelectedIndexChanged="ddlMediadtl_SelectedIndexChanged">
                                             <asp:ListItem Selected="True" Value="0">---Select---</asp:ListItem>
                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                            <asp:ListItem Value="2">No</asp:ListItem>
                                            </asp:DropDownList>

                                  <asp:TextBox ID="txtMedia_NewsID" runat="server" style="margin-left: 50px" Visible="False"></asp:TextBox>


                 

                 
                 <br /><br />

                  <asp:Panel ID="Panel2" runat="server" GroupingText="Deatils Picture">
                        <span style="font-weight: 500; font-size: larger; color: #f00;">NewsPaepr Name</span>
                 <asp:TextBox ID="txtNewspaper" runat="server"></asp:TextBox>

                      <br /><br />
                      <span style="font-weight: 500; font-size: larger; color: #f00;">Others Picture</span>

                  <input type="file" id="Pic_File" name="Pic_File" runat="server"/>
                  <br/>
                  <input type="submit" id="SubmitPic" value="Upload" runat="server" name="SubmitPic"/>

                 <asp:TextBox ID="txtSubmitPic" runat="server" Width="347px" Visible="false"></asp:TextBox>
                 

                 <br /><br />
                       <div>
                                <asp:Button ID="AddItem" runat="server" Text="Add Picture" Width="150px" Height="45px"
                                    CssClass="ctrl_btn" onclick="AddItem_Click" /></div>


                      <br /><br />
                      <asp:GridView ID="gvMedia" runat="server" AutoGenerateColumns="False" BackColor="White"
                        AllowPaging="true" PageSize="5" BorderColor="#ADD8E6" BorderStyle="None" BorderWidth="1px"
                        CellPadding="3" EmptyDataText="No rows return" DataKeyNames="MediaSl" ShowHeaderWhenEmpty="True"
                        Width="100%" Height="100%" onrowdatabound="gvMedia_RowDataBound" >
                 <Columns>

                    
                   
                     
                      <asp:TemplateField HeaderText="Serial" ItemStyle-Width="4%">
                                <ItemTemplate>
                                    <asp:Label ID="lblSerial" runat="server"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Right" />
                                <HeaderStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                     

                    
                      <asp:TemplateField HeaderText="MediaSl" SortExpression="MediaSl" >
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Eval("MediaSl") %>' ID="lblMediaSl"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     



                     <asp:TemplateField HeaderText="Newspaper Name" SortExpression="Newspaper_Name">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Newspaper_Name") %>' ID="lblNewspaper_Name"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                      <asp:TemplateField HeaderText="Picture Location" SortExpression="Picture_Location">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Picture_Location") %>' ID="lblPicture_Location"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>



                    
                     





                      <asp:TemplateField HeaderText="Edit" ItemStyle-Width="5%" Visible="false" >
                        <ItemTemplate>
                            <asp:ImageButton ID="imgButtonEdit" runat="server" ImageUrl="../image/edit.png" CommandName="Edit"
                                Text="Edit" ToolTip="Edit" OnClientClick="return confirm('Are you sure to Edit ?')"
                                CausesValidation="false" /></ItemTemplate>
                        <ItemStyle CssClass="grid_header" />
                        <ItemStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                      <asp:TemplateField HeaderText="Delete" ItemStyle-Width="5%" Visible="false">
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

                      </asp:Panel>

                  <br /><br />
                 <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" />


             </div>


             <br />
             <br />
             Delete or update below ....
             <br />

             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="serial_no" DataSourceID="News_Events" AllowPaging="True" 
                 BackColor="#6699FF" BorderColor="#3366FF" BorderStyle="None" BorderWidth="1px" 
                 CellPadding="3" CellSpacing="2" Width="976px" OnRowEditing="GridView1_RowEditing" 
                 OnRowDeleting="GridView1_RowDeleting">
                 <Columns>

                    
                   
                     

                      <asp:TemplateField HeaderText="Serial No" SortExpression="MediaSl">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("serial_no") %>' ID="lblMediaSl"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                    


                     



                     <asp:TemplateField HeaderText="Headline" SortExpression="headline">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("headline") %>' ID="lblheadline"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                      <asp:TemplateField HeaderText="brief" SortExpression="brief">
                        
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("brief") %>' ID="lblbrief"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>



                    
                     <asp:TemplateField HeaderText="Cover Pic location" SortExpression="CoveragePic_loc">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("PictureLocation") %>' ID="lblPictureLocation"></asp:Label>
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

            

             <asp:SqlDataSource runat="server" ID="News_Events" 
                 ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                 DeleteCommand="DELETE FROM [news_events] WHERE [serial_no] = @serial_no" 
                 InsertCommand="INSERT INTO [news_events] ([date], [month], [year], [headline], [brief], [serial_no], [details],[PictureLocation],[Ref],[Posting_date]) VALUES (@date, @month, @year, @headline, @brief, @serial_no, @details,@PictureLocation,@Ref,@Posting_date)" 
                 SelectCommand="SELECT [date], [month], [year], [headline], [brief], [serial_no], [details],[PictureLocation],[Ref],[Posting_date] FROM [news_events] ORDER BY [serial_no] desc" 
                 UpdateCommand="UPDATE [news_events] SET [date] = @date, [month] = @month, [year] = @year, [headline] = @headline, [brief] = @brief, [details] = @details, [PictureLocation]=@PictureLocation,[Ref]=@Ref,[Posting_date]=@Posting_date WHERE [serial_no] = @serial_no">
                 <DeleteParameters>
                     <asp:Parameter Name="serial_no" Type="Int32"></asp:Parameter>
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="date" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="month" Type="String"></asp:Parameter>
                     <asp:Parameter Name="year" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="headline" Type="String"></asp:Parameter>
                     <asp:Parameter Name="brief" Type="String"></asp:Parameter>
                     <asp:Parameter Name="serial_no" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="details" Type="String"></asp:Parameter>
                     
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="date" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="month" Type="String"></asp:Parameter>
                     <asp:Parameter Name="year" Type="Int32"></asp:Parameter>
                     <asp:Parameter Name="headline" Type="String"></asp:Parameter>
                     <asp:Parameter Name="brief" Type="String"></asp:Parameter>
                     <asp:Parameter Name="details" Type="String"></asp:Parameter>
                     <asp:Parameter Name="serial_no" Type="Int32"></asp:Parameter>
                   
                     
                 </UpdateParameters>
             </asp:SqlDataSource>

               
         </form>

    </div>
</asp:Content>
