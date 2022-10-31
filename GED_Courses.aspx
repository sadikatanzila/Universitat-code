<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="GED_Courses.aspx.cs" Inherits="Eastern_Uni.GED_Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />

     <style type="text/css">
        
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
      






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('image/Other/Content_Banner.png')">

                        <br /><br /><br />
                  <table style="width: 91%; height: 56px;">
                    <tr>
                        <td >

                        </td>
                        <td  style="text-align: right;font-weight: bold; font-size: 25px">
                            <asp:Label ID="lblHeading" runat="server" Text="Offered Courses"></asp:Label>
                               

                
                        </td>
                    </tr>
                </table>

               
                <br /><br />
                        
                    <form id="Form1" runat="server">     

                  <table style="width: 99%;">
                    <tr>
                        <td  style="width:5%" >

                        </td>
                        <td   >
                         <asp:GridView ID="gvCourses" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="CourseID" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%"   OnRowEditing="gvCourses_RowEditing" 
                                                 OnPageIndexChanging="gvCourses_PageIndexChanging">
                                                <Columns>
                                                    
                                                    
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblCourseID" runat="server" Text='<%#Bind("CourseID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>

                                                        <asp:TemplateField  HeaderText="Course Code" ItemStyle-Width="33%">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblCode" runat="server" Text='<%#Bind("Course_Code") %>' style="font-size:medium;" ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="center"  Font-Size="Large"/>
                                                        </asp:TemplateField>

                                                       <asp:TemplateField   HeaderText="Course Title"  ItemStyle-Width="45%">
                                                        <ItemTemplate>
                                                           
                                                            <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text='<%#Bind("Course_Title") %>' Font-Bold="true" ForeColor="#000066" ></asp:LinkButton>
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="center" Font-Size="Large"/>
                                                        </asp:TemplateField>

                                                    <asp:TemplateField HeaderText="Credit Hours"   ItemStyle-Width="20%">
                                                        <ItemTemplate>
                                                              <asp:Label ID="lblCredit" runat="server" Text='<%#Bind("Credit") %>' style="font-size:medium;" ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="center" Font-Size="Large"/>
                                                        </asp:TemplateField>

                                                

                                                    

                                                    

                                                </Columns>
                                                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                 <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>


                    <br />


                    <asp:Panel ID="pnlCourse" runat="server">
                    <table style="width: 95%">
                        <tr>
                           
                            <td >

                                <asp:Label ID="lblCourseTitle" runat="server" Text="" Font-Size="Medium" Font-Bold="true" ForeColor="blue"></asp:Label>
                                <br /><br />
                                <asp:Label ID="lblCredit" runat="server" Text="" Font-Size="16px" Font-Bold="true"></asp:Label>
                                <asp:Label ID="Label1" runat="server" Text=" Credit Hour Course" Font-Size="16px"></asp:Label>
                                <br /><asp:Label ID="lblOfferedby" runat="server" Text="" Font-Size="16px"></asp:Label>
                                <br />
                                <asp:Label ID="lbl" runat="server" Text="Prerequisite :" Font-Size="18px" ForeColor="blue"></asp:Label>
                                <asp:Label ID="lblPrerequisite" runat="server" Text="" Font-Size="16px"></asp:Label><br /><br />
                                <asp:Label ID="lblDetails" runat="server" Text="" Font-Size="16px"></asp:Label><br /><br />
                               
                            </td>

                        </tr>

                    </table>

</asp:Panel>
                
                        </td>
                    </tr>
                </table>
                 
</form>
                       

            </div>


            
        </div>


    </div>


</asp:Content>
