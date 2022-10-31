<%@ Page Title="Board of Trustees" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="AboutEU_BT.aspx.cs" Inherits="Eastern_Uni.About_EU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style1 {
            width: 421px;
        }
    </style>


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="ContentBody"> 
       
        






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-image: url('image/About EU/Board_of_Trustees_photo.png'); background-repeat: no-repeat">
             
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
                    <br />

                    <br />

                <asp:GridView ID="gvTrustees" runat="server" AutoGenerateColumns="False" BackColor="White"
                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                CellPadding="3" DataKeyNames="Serial_Id" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                Width="95%"  >
                <Columns>

                   <asp:TemplateField HeaderText="Serial No" SortExpression="Serial_Id" ItemStyle-Width="10%" >
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Serial_Id") %>' ID="Label6"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Name" SortExpression="Name">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="Label1"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                     <asp:TemplateField HeaderText="Designation" SortExpression="Designation">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Designation") %>' ID="Label2"></asp:Label>
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



                
            </div>


            
        </div>


    </div>


</asp:Content>

