<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="FormerChairmen.aspx.cs" Inherits="Eastern_Uni.FormerChairmen" %>
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
            

            <div id="s_container" style="background-repeat: no-repeat; background-image: url('NewBackup/FormerChairmen.jpg')">

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
                <p style="font-size: 20px; font-weight: bold; text-align: center; color: #464955;">Former Chairmen of Eastern University Foundation</p>
                <form id="Form1" runat="server">

                <div style="margin-left:70px">   
<asp:DataList ID="PhotoAlbumList" runat="server" BackColor="White" BorderColor="White" 
            BorderStyle="None" BorderWidth="0px" CellPadding="5" CellSpacing="-1"  datakeyfield="Serial_Id"
            Font-Names="Verdana" Font-Size="Small"  RepeatColumns="4" RepeatDirection="Horizontal"
            Width="88%">
            <FooterStyle BackColor="White" ForeColor="White" />
            <HeaderStyle BackColor="White" Font-Bold="True" Font-Size="Large" ForeColor="White"
                HorizontalAlign="Center" VerticalAlign="Middle" />
           
            <ItemStyle BackColor="White" ForeColor="black"  BorderColor="White"
            BorderStyle="None" BorderWidth="0px" Width="190px" Height="230px" CssClass="Inactive"/>
            <ItemTemplate >
                <asp:Label ID="lblAlbumID" runat="server" Text='<%#Bind("Serial_Id") %>' Visible="false"  ></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("PictureLocation") %>' Width="185px" Height="225px"  />
             <br />
                <asp:Label ID="lblName" runat="server" Text='<%#Bind("Name") %>'  ></asp:Label>
             
              
            </ItemTemplate>

    
     <ItemStyle HorizontalAlign="center" />
     <ItemStyle VerticalAlign ="Top" />
    <ItemStyle  CssClass="Inactive" />

    
        </asp:DataList>

</div> 

</form>


            </div>



        </div>


        
        </div>
</asp:Content>
