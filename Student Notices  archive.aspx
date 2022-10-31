<%@ Page Title="Student Notice Archive" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Student Notices  archive.aspx.cs" Inherits="Eastern_Uni.Student_Notices__archive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title></title>
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css"rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style1 {
            width: 31px;
        }
        .auto-style2 {
            width: 711px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 688px;
        }
    </style>


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <div id="ContentBody"> 
       
        






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-image: url('NewBackup/Notices.jpg'); background-repeat: no-repeat">

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
                <table style="width:95%; margin-left:25px">
                    
                    <tr style="text-align: center">
                        <td class="auto-style3">


                            &nbsp;</td>
                        <td class="auto-style4">

                            <asp:Label ID="errorMsg" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>
                                <asp:Button ID="btnView" runat="server" Text="Search Notice" OnClick="btnView_Click" BackColor="#9BFFBC" Font-Bold="True" Width="241px"  />

                            <asp:Panel ID="pnlSearch" runat="server" style=" margin-left: 25px; border:1px solid Black; width:85%" Visible="false">
                                <table style="width:99%">
                                    <tr>
                                        <td style="text-align: right;width:40%" >
                                            <asp:Label ID="lblAcademic" runat="server" Font-Size="20px"  Text="Heading : "></asp:Label>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="txtHeading" runat="server" Width="300px" Height="22px" ></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="text-align: right;width:40%">
                                            <asp:Label ID="lblDtl" runat="server" Font-Size="20px"  Text="Details : "></asp:Label>
                                        </td>
                                        <td>
                                             <asp:TextBox ID="txtDtl" runat="server" Width="300px" Height="22px" ></asp:TextBox>

                                        </td>
                                    </tr>

                                    <tr  >
                                        <td colspan="2" style="text-align: center">
                                             <asp:Button ID="btnSearch" runat="server" Text="Search"  OnClick="btnSearch_Click"  />
                                             <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" style="margin-left: 100px" Height="26px" />
                                            </td>
                                    </tr>

                                </table>
                                

                                </asp:Panel>    


                        </td>

                    </tr>

                    <tr>
                        <td class="auto-style3">


                            &nbsp;</td>
                        <td class="auto-style4">

                            &nbsp;</td>

                    </tr>

                    <tr>
                        <td class="auto-style3" colspan="2">


                                <asp:GridView ID="gvNoticeBoard" runat="server" AutoGenerateColumns="False" BackColor="White"
                                    AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                    CellPadding="3" DataKeyNames="id" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                    Width="99%" OnPageIndexChanging="gvNoticeBoard_PageIndexChanging" style="margin-left: 1px">
                                    <Columns>


                                        <asp:TemplateField  ItemStyle-Width="99%" HeaderText="Notice">
                                                        <ItemTemplate>
                                                           <br />
                                                            <asp:Label ID="lbName" runat="server" Text='<%#Bind("headlines") %>' style="font-size:30px;font-weight: bold; text-align:center " ForeColor="#ed2424"></asp:Label>
                                                            
                                                                <br /><br />
                                                            <asp:Label ID="Label7" runat="server" Text="Ref. No. -" style="font-size:16px;font-weight: bold;text-align:center"></asp:Label> <asp:Label ID="Label4" runat="server" Text='<%#Bind("Ref") %>' style="font-size:14px;text-align:center"></asp:Label>
                                                            <br />
                                                            <asp:Label ID="Label3" runat="server" Text='<%#Bind("date") %>' style="font-size:18px;text-align:center"></asp:Label>
                                                            <hr />
                                                            <br />
                                                            
                                                           
                                                            <asp:Label ID="lblDesignation" runat="server" Text='<%#Bind("details") %>' style="font-size:26px; text-align:center "></asp:Label>
                                                            <br />
                                                            <asp:Image ID="Image2" runat="server"  ImageUrl='<%# Bind("PicureLocation") %>'  Width="750px"  alt=""/>
                                                            <br />
                                                            <br />
                                                           
                                                            <asp:Label ID="lblpub" runat="server" Text='<%#Bind("Publisher") %>' style="font-size:12px" ></asp:Label>
                                                           <!-- <asp:Label ID="Label6" runat="server" Text="Posted on :" style="font-weight: bold;"></asp:Label> <asp:Label ID="Label5" runat="server" Text='<%#Bind("Posting_date") %>'></asp:Label>
                                                       
                                                               -->

                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="Center" Font-Size="Large" />
                                                        <HeaderStyle HorizontalAlign="Center" Font-Size="X-Large" />
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


                        </td>

                    </tr>

                </table>
                
                
                   

            </div>


            
        </div>


    </div>


    </form>


</asp:Content>



