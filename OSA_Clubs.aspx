<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="OSA_Clubs.aspx.cs" Inherits="Eastern_Uni.OSA_Clubs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Common.css" rel="stylesheet" />
    <link href="CSS/demo.css" rel="stylesheet" />
    <link href="CSS/bjqs.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
     <link href="CSS/mouse_hover.css" rel="stylesheet" />

   


    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 2%;
        }
        .auto-style4 {
            width: 452px;
        }
        .auto-style5 {
            width: 755px;
        }
        </style>


   


    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <div id="ContentBody">

      



        <!-- start of second phase -->
        <div id="second">
            

            <div id="s_container" style="background-image: url('image/Other/Content_Banner.png'); background-repeat: no-repeat">
                
                <!--
<div id="StdAff">

    <div id="left" >
        
    </div>
     <div id="right">
         <ul>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								<li ><a href="Newsletter.aspx"><span>News Letter</span></a></li>
								
							</ul>
    </div>

</div>
                --><br /><br /> <br />
                <table style="width:95%">
                    <tr style="text-align: right; font-weight: bold; font-size:25px; text-indent: 15px;">
                        <td >
                           
                        Clubs and Forums
                        </td>
                    </tr>
                </table>
             <table style="width:100%">
                 <tr style="text-align: right; font-weight: bold; font-size: large; text-indent: 15px;">
                     <td colspan="3">

                      <br /><br />

                     </td>
                 </tr>

                 <tr>
                     <td colspan="3">

                         <br />
                         <br />
                         
                     </td>
                 </tr>

                 <tr>
                     <td class="auto-style4">

                     </td>
                     <td class="auto-style2">

                     </td>
                     <td style="width:3%">

                     </td>
                 </tr>

                 <tr style="margin-top:2px; vertical-align: top;">
                     <td class="auto-style4">
                    

                           <table style="width:99%; font-size: 15px; ">
                             <tr>
                                
                                 <td style="text-align:left">
                                    <asp:GridView ID="gvCourses" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="White" BorderStyle="None" BorderWidth="0px"
                                                CellPadding="0" DataKeyNames="ClubsID" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="65%" style="margin-left:25%"  OnRowEditing="gvCourses_RowEditing" 
                                                 OnPageIndexChanging="gvCourses_PageIndexChanging" ShowHeader="False" OnRowDataBound="gvCourses_RowDataBound">
                                                <Columns>
                                                    
                                                    
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblCourseID" runat="server" Text='<%#Bind("ClubsID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="center" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>

                                                         <asp:TemplateField ItemStyle-Width="25%">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDetail_img" runat="server" CausesValidation="false" CommandName="Edit">
                          <asp:Image ID="PicLoc1" runat="server" Height="100px" ImageUrl='<%# Bind("LogoImage") %>' Width="110px"  AlternateText=" "/>   
                        </asp:LinkButton>
                                             
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="center" />
                    <HeaderStyle HorizontalAlign="left"  />
                    </asp:TemplateField>
                                                       <asp:TemplateField   HeaderText="Course Title"  ItemStyle-Width="75%">
                                                        <ItemTemplate>
                                                           <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit" Font-Size="14"
                                                                Text='<%#Bind("Name") %>'  ForeColor="#000066" 
                                                                onmousemove="this.style.textDecoration='underline'" onmouseout="this.style.textDecoration='none'" Font-Bold="True"></asp:LinkButton>
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="center" Font-Size="Large"/>
                                                        </asp:TemplateField>

                                                                 

                                                    

                                                </Columns>
                                                <RowStyle ForeColor="White" />
                                            </asp:GridView>

</td>
                             </tr>
                         </table>

                   
                         


                          
                         </td>
                     <td class="auto-style2">

                         &nbsp;</td>
                     <td style="width:3%">

                         

                     </td>
                 </tr>

                 <tr>
                     <td class="auto-style4">

                         &nbsp;</td>
                     <td class="auto-style2">

                         &nbsp;</td>
                     <td style="width:3%">

                         &nbsp;</td>
                 </tr>

                 <tr>
                     <td class="auto-style1" colspan="3">

                         
                     <br /><br />
                     
                      <asp:GridView ID="gvClubs" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                AllowPaging="true" PageSize="20" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                                                CellPadding="3" DataKeyNames="ClubsID" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True"
                                                Width="95%" style="margin-left: 15px"  OnRowEditing="gvClubs_RowEditing" 
                                                 OnPageIndexChanging="gvClubs_PageIndexChanging" OnRowDataBound="gvClubs_RowDataBound" >
                                                <Columns>
                                                    
                                                    
                                                    <asp:TemplateField  Visible="false">
                                                        <ItemTemplate>
                                                           <asp:Label ID="lblClubsID" runat="server" Text='<%#Bind("ClubsID") %>'  ></asp:Label>
                                                            
                                                            
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="left"  />
                                                        </asp:TemplateField>

                                                        <asp:TemplateField  HeaderText="Clubs and Forums " ItemStyle-Width="99%">
                                                        <ItemTemplate>
                                                           <asp:LinkButton ID="lnkDetail" runat="server" CausesValidation="false" CommandName="Edit"
                                                                Text='<%#Bind("Name") %>' Font-Names="Times New Roman" ForeColor="#000066" style="font-size:medium;font-weight: bold;" ></asp:LinkButton>
                                                            
                                                            <br />
                                                            <asp:Label ID="lblDetails" runat="server" Text='<%#Bind("Details") %>' Font-Names="Times New Roman" Font-Size="12" ForeColor="Black"  ></asp:Label>
                                                           
                                                            
                                                             <asp:LinkButton id="Details" runat="server" CausesValidation="false" CommandName="Edit"  style="color:blue"
                                                                Text="&nbsp;&nbsp; details...."></asp:LinkButton>
                                                        </ItemTemplate>
                                                        <ItemStyle HorizontalAlign="left" />
                                                        <HeaderStyle HorizontalAlign="center"  Font-Size="Large"/>
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

                 <tr>
                     <td class="auto-style4">

                         &nbsp;</td>
                     <td class="auto-style2">

                         &nbsp;</td>
                     <td style="width:3%">
                         
                         
                         &nbsp;</td>
                 </tr>

             </table> 
              
                
                    

            </div>

             

            
        </div>


    </div>


    </form>


</asp:Content>
