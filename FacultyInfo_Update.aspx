<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="FacultyInfo_Update.aspx.cs" Inherits="Eastern_Uni.Admins.FacultyInfo_Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Faculty Info Update</title>
    <link href="Information.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="full_content">


         <form id="Form1" runat="server">
             <br />
             <span style="font-size: larger;font-weight:600;color:blue;">Update section for Faculty Members</span>
             <hr />
             &nbsp;<div class="insert_box">

                

                 <span style="font-weight: 500; font-size: larger; color: #f00;">Serial No</span>
                 <asp:TextBox ID="SerialNo" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 

                 <br />
                 <br />

                 <br />
                 <br />
                 <span style="font-weight: 500; font-size: larger; color: #f00;">Research Interest</span><br />
                 <asp:TextBox ID="txtResearchInterest" runat="server" TextMode="MultiLine"  Height="200px" Width="700px"></asp:TextBox>

                 <br />
                 <br />
                 <span style="font-weight: 500; font-size: larger; color: red;">Selected Publications </span>
                 <br />
                 <asp:TextBox ID="txtPublications" runat="server" TextMode="MultiLine" Height="800px" Width="880px"></asp:TextBox>
                 <br />
                 <br />
                 <span style="font-weight: 500; font-size: larger; color: #f00;">Teaching Experience</span><br />
                 <asp:TextBox ID="txteachingExpr" runat="server" TextMode="MultiLine" Height="800px" Width="880px"></asp:TextBox>
                 
                 
                 <br />
                 <br />

                 <span style="font-weight: 500; font-size: larger; color: #f00;">Administrative Position Hold(if any)</span><br />
                 <asp:TextBox ID="txtAdminsPos" runat="server" TextMode="MultiLine" Height="800px" Width="880px"></asp:TextBox>
                 

                 <br />
                 <br />
                 <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" />

                 <asp:Label ID="notification" runat="server" Text=""></asp:Label>


             </div>


             

             




             
         </form>

    </div>
</asp:Content>
