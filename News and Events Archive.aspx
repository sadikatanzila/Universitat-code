<%@ Page Title="News&Events Archive" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="News and Events Archive.aspx.cs" Inherits="Eastern_Uni.News_and_Events_Archive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <title></title>
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style1 {
            width: 32px;
        }
        .auto-style2 {
            width: 712px;
        }
    </style>


</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <div id="ContentBody"> 
       
        






        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/News.jpg')">

                    <br />
                <br />
                <br />
                 <br />
                <br />
                <br /> <br />
                <br />
                <br />
                <br />
                <br />

                <table style="width:95%; margin-left:25px">
                    <tr>
                        <td>
                             <asp:Label ID="errorMsg" runat="server" Text="" ForeColor="Red" Font-Bold="True"></asp:Label>
                                <asp:Button ID="btnView" runat="server" Text="Search News & Events" OnClick="btnView_Click" BackColor="#9BFFBC" Font-Bold="True" Width="241px"  />

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
                        <td>
                            &nbsp;&nbsp;
                        </td>

                    </tr>
                    <tr>
                       
                        <td >
                            <asp:GridView ID="grd_NewsEvents" Font-Names="Calibri"  runat="server" AutoGenerateColumns="False" 
                     BackColor="White" ShowHeader="false" ShowFooter="false"
                      AllowPaging="true" PageSize="20" BorderColor="White" BorderStyle="None" BorderWidth="0px"   
                     CellPadding="3"  DataKeyNames="serial_no" EmptyDataText="News events are not available" ShowHeaderWhenEmpty="True"
                                               Width="98%" style="margin-left: 5px"  OnRowEditing="grd_NewsEvents_RowEditing"
                                 OnPageIndexChanging="grd_NewsEvents_PageIndexChanging"  >
                                                <Columns>
                                    <asp:TemplateField  Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblNewsID" runat="server" Text='<%#Bind("serial_no") %>'  ForeColor="#000099"></asp:Label>
                                                            
                                                            
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="center" />
                                        <HeaderStyle HorizontalAlign="left"  />
                                        </asp:TemplateField>


                    <asp:TemplateField ItemStyle-Width="20%">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDetail_img" runat="server" CausesValidation="false" CommandName="Edit">
                          <asp:Image ID="PicLoc1" runat="server" Height="122px" ImageUrl='<%# Bind("HeaderImage") %>' Width="150px"  AlternateText=" "/>   
                        </asp:LinkButton>
                                             
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="left"  />
                    </asp:TemplateField>

                      <asp:TemplateField ItemStyle-Width="80%" >
                         
                        <ItemTemplate >
                             <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                Text='<%#Bind("headline") %>'   Font-Size="20px"  cssclass="change" ForeColor="#000099"></asp:LinkButton>
                            <br /><asp:Label ID="lblDay" runat="server" Text='<%#Bind("date") %>' ForeColor="#202020"></asp:Label>
                            &nbsp&nbsp&nbsp<asp:Label ID="lblMonth" runat="server" Text='<%#Bind("month") %>' ForeColor="#202020"></asp:Label>
                            &nbsp&nbsp&nbsp<asp:Label ID="lblYear" runat="server" Text='<%#Bind("year") %>' ForeColor="#202020"></asp:Label>
                           <br />    <asp:Label ID="lblbrief" runat="server"  Text='<%#Bind("brief") %>' Font-Size="14px"  ForeColor="#202020"></asp:Label>
                            
                            
                             <asp:LinkButton ID="lnkDetails" runat="server" CausesValidation="false" CommandName="Edit"
                                Text=' More Info...'   Font-Size="12px" cssclass="change" ForeColor="#000099"></asp:LinkButton>

                         
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="left" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="left"  />
                        </asp:TemplateField>
                        

                                                     
                                                   
                                                    
 </Columns>
                  

                <EmptyDataRowStyle Font-Bold="True" HorizontalAlign="Center" />
                                              <FooterStyle BackColor="White" ForeColor="#000066" BorderStyle="None" /> 
                                               <HeaderStyle BackColor="#696B8B" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <RowStyle ForeColor="White" />
                        
                                                <AlternatingRowStyle BackColor="AliceBlue" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
              </asp:GridView>
                 

                        </td>

                    </tr>

                </table>


                   

                    <br />

            </div>


            
        </div>


    </div>


    </form>


</asp:Content>


