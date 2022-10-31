<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Faculty_BA.aspx.cs" Inherits="Eastern_Uni.Faculty_BA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    


    <style type="text/css">
        .auto-style2 {
            width: 732px;
        }
        .auto-style3 {
            width: 16px;
        }
    </style>


    


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
       






        <!-- start of second phase -->

        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/Faculty.jpg')">

                   
                  <br />
                <br />
                   <br />
                  <br />
                <br />
                    
                <br />
                <br />
                <br />
                 <br />
                  <br />



                <form id="Form1" runat="server">

               
                    <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="Serial_no" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%" style="margin-left: 15px" OnRowEditing="gvDepartment_RowEditing" OnPageIndexChanging="gvDepartment_PageIndexChanging" >
                                                <Columns>


                                                        <asp:TemplateField  HeaderText="Faculty of Business Administration"  ItemStyle-Width="75%">
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text="Name :" style="font-size:medium;font-weight: bold;"></asp:Label>  <asp:Label ID="lbName" runat="server" Text='<%#Bind("Name") %>' style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label3" runat="server" Text="Designation :" style="font-weight: bold;"></asp:Label>
                                                            <asp:Label ID="lblSpDeg" runat="server" Text='<%#Bind("SpecialDesignationPost") %>'></asp:Label>
                                                             <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("Designation") %>'></asp:Label>
                                                            <br /><asp:Label ID="lblAdditionalResponsibility" runat="server" Text='<%#Bind("AdditionalResponsibility") %>'></asp:Label>
                                                            <br />
                                                             <asp:Label ID="Label4" runat="server" Text="Qualification :" style="font-weight: bold;"></asp:Label> <asp:Label ID="lblBackground" runat="server" Text='<%#Bind("AcademicBackground") %>'></asp:Label>
                                                          <br />
                                                             <asp:Label ID="Label5" runat="server" Text="Research Interest:" style="font-weight: bold;"></asp:Label>
                                                            <br /><asp:Label ID="lblResearch" runat="server" Text='<%#Bind("ResearchInterest") %>'></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label6" runat="server" Text="Phone :" style="font-weight: bold;"></asp:Label><asp:Label ID="lblPhone" runat="server" Text='<%#Bind("Phone") %>'></asp:Label>
                                                            <br />
                                                           <asp:Label ID="Label7" runat="server" Text="Email :" style="font-weight: bold;"></asp:Label> <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("Email") %>'></asp:Label>

                                                            <br />
                                                            <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text="Click for Detail"></asp:LinkButton>
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left" />
                                                        </asp:TemplateField>

                                                       

                                                <asp:TemplateField ItemStyle-VerticalAlign="Top">
                                                <ItemTemplate >
                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("PictureLocation") %>' Width="225px" Height="150px" />
                                                
                                                </ItemTemplate>

                                                <ItemStyle HorizontalAlign="Center"  VerticalAlign="Top"/>
                                                <HeaderStyle HorizontalAlign="Center" />
                                                </asp:TemplateField>

                                                    

                                                    

                                                </Columns>
                                                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#A3A5BA" Font-Bold="True" ForeColor="#000000" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="#000066" />
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>


                    <asp:GridView ID="gvFacultyDtl" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="FacultyID" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="100%">
                                                <Columns>


                                        <asp:TemplateField  HeaderText="Detailed Information" >
                                                        <ItemTemplate>
                                                            <asp:Image ID="Image2" runat="server" Width="225px" Height="150px" ImageUrl='<%# Bind("PictureLocation") %>' /> <br />
                                                            <br />
                                                            
                                                            <asp:Label ID="Label2" runat="server" Text="Name :" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                           
                                                             <asp:Label ID="lbName" runat="server" Text='<%#Bind("Name") %>' style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                            <br />

                                                             <asp:Label ID="Label14" runat="server" Text="Telephone(office) :" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                           
                                                            <asp:Label ID="lblPhone" runat="server" Text='<%#Bind("Phone") %>'></asp:Label>
                                                            <br />


                                                            <asp:Label ID="Label12" runat="server" Text="Email :" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                           
                                                            <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("Email") %>'></asp:Label>
                                                            <br />
                                                           
                                                            <asp:Label ID="Label13" runat="server" Text="Academic Background :" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                            <br />
                                                            <asp:Label ID="lblLastDegree" runat="server" Text='<%#Bind("AcademicBackground") %>'></asp:Label>
                                                            <br /><br />
                                                            <asp:Label ID="Label11" runat="server" Text="Research Interest :" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                            <br />
                                                            
                                                            <asp:Label ID="lblYear" runat="server" Text='<%#Bind("ResearchInterest") %>'></asp:Label>
                                                            <br />
                                                            
                                                            
                                                            
                                                            <br />

                                                            

                                                            <br />


                                                            <asp:Label ID="Label9" runat="server" Text="Teaching Experience :" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                            <br />
                                                            <asp:Label ID="lblTeachingExp" runat="server" Text='<%#Bind("TeachingExp") %>'></asp:Label>
                                                            <br /><br />


                                                            <asp:Label ID="Label10" runat="server" Text="Administrative Position Held (if any):" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                            <br />
                                                           <asp:Label ID="lblAdminsPos" runat="server" Text='<%#Bind("AdminsPos") %>'></asp:Label>
                                                            <br />
                                                            <br />
                                                            <asp:Label ID="Label8" runat="server" Text="Selected Publications :" style="font-size:medium;font-weight: bold;" ></asp:Label>
                                                            <br />


                                                            <asp:Label ID="lblUniversity" runat="server" Text='<%#Bind("Publications") %>'></asp:Label>
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left" />
                                                        </asp:TemplateField>

                                               
                                                    
                                                         

                                                

                                                    

                                                    

                                                </Columns>
                                                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <HeaderStyle BackColor="#A3A5BA" Font-Bold="True" ForeColor="#000000" Font-Size="Larger"  />
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
