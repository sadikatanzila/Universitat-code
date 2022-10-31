<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="IQAC_Office.aspx.cs" Inherits="Eastern_Uni.IQAC_Office" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    


    <style type="text/css">
        .auto-style4 {
            width: 34px;
        }
        .auto-style5 {
          
        }
    </style>


    


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
        



       
    


        <!-- start of second phase -->

        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/officeIQAC.jpg')">

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
                <br />
               



                <form id="Form1" runat="server">

          


                      <asp:GridView ID="gvAQAC" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="Serial_no" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%" style="margin-left: 15px" OnPageIndexChanging="gvAQAC_PageIndexChanging">
                                                <Columns>

                                                    <asp:TemplateField ItemStyle-Width="5%">
                                                                <ItemTemplate>
                                                   
                                                                </ItemTemplate>
                                                                <ItemStyle HorizontalAlign="Center" />
                                                                <HeaderStyle HorizontalAlign="Center" />
                                                    </asp:TemplateField>
                                                        <asp:TemplateField  HeaderText="Office" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large"  ItemStyle-Width="60%" >
                                                        <ItemTemplate>
                                                            <!--<asp:Label ID="Label3" runat="server" Text="Office of the " style="font-size:medium;font-weight: bold;" Font-Underline="True"></asp:Label> <asp:Label ID="lblFaculty" runat="server" Text='<%#Bind("Faculty") %>' Font-Bold="True" Font-Underline="True"></asp:Label>
                                                            <br />
                                                            <br />
                                                            <br />-->
                                                             <asp:Label ID="Label2" runat="server" Text="Name :" style="font-weight: bold;" Visible="False"></asp:Label>  <asp:Label ID="lbName" runat="server" Text='<%#Bind("Name") %>' style="font-weight: bold;" ></asp:Label>
                                                            <br />
                                                            
                                                             <asp:Label ID="Label8" runat="server" Text="Details :" style="font-weight: bold;" Visible="False"></asp:Label> <asp:Label ID="lblDeatils" runat="server" Text='<%#Bind("Deatils") %>' style="font-weight: bold;"></asp:Label>
                                                             <br />
                                                            
                                                            <!--<asp:Label ID="Label1" runat="server" Text="Designation :" style="font-weight: bold;"></asp:Label> <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("Designation") %>'></asp:Label>
                                                            <br />-->
                                                             <asp:Label ID="Label4" runat="server" Text="Qualification :" style="font-weight: bold;" Visible="False"></asp:Label> <asp:Label ID="lblBackground" runat="server" Text='<%#Bind("AcademicBackground") %>' ></asp:Label>
                                                           
                                                                <!-- <br />
                                                            <asp:Label ID="Label5" runat="server" Text="Research :" style="font-weight: bold;"></asp:Label><asp:Label ID="lblResearch" runat="server" Text='<%#Bind("ResearchInterest") %>'></asp:Label>
                                                            -->
                                                            <br />
                                                              <asp:Label ID="Label6" runat="server" Text="Phone :" style="font-weight: bold;" Visible="False"></asp:Label><asp:Label ID="lblPhone" runat="server" Text='<%#Bind("Phone") %>'></asp:Label>
                                                            <br />
                                                             <asp:Label ID="Label7" runat="server" Text="Email :" style="font-weight: bold;" Visible="False"></asp:Label> <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("Email") %>'></asp:Label>

                                                          <!--  <br />
                                                            <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text="Click for Detail"></asp:LinkButton>
                                                            -->
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left" />
                                                        </asp:TemplateField>

                                                       

                                                <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Bind("PictureLocation") %>' Width="225px" />
                                                
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
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

                  
                    
                    
                    
                    
                    <br /> 
                    </form>
                
                </div>
            </div>  
         </div>
          </asp:Content>
