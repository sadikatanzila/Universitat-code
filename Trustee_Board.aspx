<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Trustee_Board.aspx.cs" Inherits="Eastern_Uni.Trustee_Board" %>
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
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/Trustee_BoardNew.jpg')">

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
                    <!--  <p style="text-align: center;font-weight: bold; color: #FF0000; font-size: medium;">

                      
                      <marquee behavior ="alternate" onmouseover="this.stop(); " onmouseout="this.start();">
                                 
                                This section is Under Construction............
                            </marquee>
                        </p>
             -->
                    <asp:GridView ID="gvDepartment" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="30" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="Serial_Id" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="100%"  OnPageIndexChanging="gvDepartment_PageIndexChanging" >
                                                <Columns>


                       <asp:TemplateField HeaderText="Sl. No" SortExpression="Serial_Id" ItemStyle-Width="10%" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large" >
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Sl") %>' ID="Label6"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="Center" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>

                     <asp:TemplateField HeaderText="Name" SortExpression="Name" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="Label1"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                     <asp:TemplateField HeaderText="Designation" SortExpression="Designation" HeaderStyle-Font-Bold="true" HeaderStyle-Font-Size="Large">
                         
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("Designation") %>' ID="Label2"></asp:Label>
                         </ItemTemplate>
                          <ItemStyle HorizontalAlign="left" />
                          <HeaderStyle HorizontalAlign="Center" />
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

                    

                 

                    


</form>


            </div>



        </div>


        
        </div>


</asp:Content>
