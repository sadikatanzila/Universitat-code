<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="Admin_CourseDtl.aspx.cs" Inherits="Eastern_Uni.Admin_CourseDtl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Course Details</title>
    <link href="Information.css" rel="stylesheet" />
      <style type="text/css">
          .auto-style1 {
          }
          .auto-style2 {
          }
          
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="full_content">

          <form id="Form1" runat="server">
             <br />

             <span style="font-size:larger;font-weight:600;color:blue;">INSERT  / UPDATE / DELETE Course Information</span>
             <hr />
             Insert New Courses' inforamtion.....below   
              <br />
              <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">

                 

                     
                                 
                            
                 <br />
                    
                         <asp:Panel ID="pnlCourse" runat="server" GroupingText="Course Details">
                             <table>
                     

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Faculty :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlFaculty" OnSelectedIndexChanged="ddlFaculty_SelectedIndexChanged">
                        </asp:DropDownList>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Subject :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlSubject" >
                        </asp:DropDownList>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Course Types :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:TextBox ID="txtTypes" runat="server" Width="250px"></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Course Group :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:TextBox ID="txtGroup" runat="server" Width="250px"></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">
<span style="font-weight: 500; font-size: larger; color: #f00;">Course Code:</span>
                             
                             </td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 
                             <asp:TextBox ID="txtCourseCode" runat="server" Width="250px"></asp:TextBox>
                             <asp:TextBox ID="txtCourseID" runat="server" Width="250px" Visible="false"></asp:TextBox>
                         </td>

                     </tr>

                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Course Title:</span> </td>
                                     <td class="auto-style2" colspan="3">
                                         <asp:TextBox ID="txtCourseTitle" runat="server" Width="500px"></asp:TextBox>
                                     </td>
                                 </tr>

                     <tr>
                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00;">Course Deatils :</span>
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">

                 
                 
                             <asp:TextBox ID="txtCourseDtl" runat="server" Height="700px" TextMode="MultiLine" Width="665px"></asp:TextBox>
                         </td>

                     </tr>


                    
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Course Credit :</span>&nbsp;</td>
                                     <td class="auto-style2">
                                         <asp:TextBox ID="txtCourseCredit" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Prerequisite :</span>&nbsp;&nbsp;</td>
                                     <td class="auto-style2">
                                         <asp:TextBox ID="txtPrerequisite" runat="server" Width="250px"></asp:TextBox>
                                     </td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Year :</span></td>
                                     <td class="auto-style2">
                                         <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" Width="250px">
                                         </asp:DropDownList>
                                     </td>
                                     <td class="auto-style1"><span style="font-weight: 500; font-size: larger; color: #f00;">Semister :</span></td>
                                     <td class="auto-style2">
                                         <asp:DropDownList ID="ddlSemister" runat="server" AutoPostBack="True" Width="250px">
                                         </asp:DropDownList>
                                     </td>
                                 </tr>


                    
                                 <tr>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                     <td class="auto-style1">&nbsp;</td>
                                     <td class="auto-style2">&nbsp;</td>
                                 </tr>


                    
                                 </table>
</asp:Panel>


                        <table>
                    

                     <tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">


                              
                             &nbsp;</td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                              <asp:Button ID="Submit" runat="server" Text="Save" Height="36px" OnClick="Submit_Click" Width="150px" /></td>

                         <td class="auto-style1">

                             <asp:Button ID="btnClear" runat="server" Text="Clear" Height="36px" OnClick="btnClear_Click" Width="150px" /></td>

                         

                         <td class="auto-style2">

                             &nbsp;</td>

                     </tr>

                 </table>
                 <br />
               


                



             </div>

             <br />
             <br />

              Update or Deletion Below....
              <br />
              <asp:GridView ID="grdCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID"
                   AllowPaging="True" BackColor="#6699FF" BorderColor="#3366FF"  
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="98%"
                  OnRowEditing="grdCourse_RowEditing"  OnRowDeleting="grdCourse_RowDeleting" 
                  OnRowDataBound="grdCourse_RowDataBound" OnPageIndexChanging="grdCourse_PageIndexChanging">
                  <Columns>
                     
                      <asp:TemplateField HeaderText="Serial" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="CourseID"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblCourseID" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                     


                      

                      <asp:TemplateField HeaderText="Faculty" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Faculty") %>' ID="lblFaculty"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                       <asp:TemplateField HeaderText="Subject" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Subject") %>' ID="lblSubject"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                     

                        <asp:TemplateField HeaderText="Year" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Year") %>' ID="lblYear"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Semister" >
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Semister") %>' ID="lblSemister"></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>


                      <asp:TemplateField HeaderText="Course Code" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Course_Code") %>' ID="lblCourse_Code"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Course Title" >
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Course_Title") %>' ID="lblCourse_Title"></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>

                       <asp:TemplateField HeaderText="Credit" >
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Credit") %>' ID="lblCredit"></asp:Label>
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


              <asp:SqlDataSource runat="server" ID="Course" 
                  ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                  DeleteCommand="DELETE FROM [Course] WHERE [Sl] = @Sl" >
                  
                  <DeleteParameters>
                      <asp:Parameter Name="Sl" Type="Int32"></asp:Parameter>
                  </DeleteParameters>
                 
              </asp:SqlDataSource>
          </form>

    </div>
</asp:Content>
