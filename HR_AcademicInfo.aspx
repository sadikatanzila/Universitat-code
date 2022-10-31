<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR_AcademicInfo.aspx.cs" Inherits="Eastern_Uni.HR_AcademicInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Information</title>

       
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
        <tr>
            <td>

                <asp:Label ID="Label1" runat="server" Text="Exam/ Degree"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                
<asp:DropDownList ID="ddlExam" runat="server"  Width="150px" ReadOnly="true">

                           </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label2" runat="server" Text="Institution Type"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

               <asp:DropDownList ID="ddlInsType" runat="server"  Width="150px" ReadOnly="true">

                           </asp:DropDownList></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label3" runat="server" Text="Institution"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

              <asp:TextBox ID="txt_Ins" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label4" runat="server" Text="Passing Year"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

              <asp:TextBox ID="txt_PassYear" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label5" runat="server" Text="Concentration/ Major/ Group/ Subject"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                <asp:TextBox ID="txt_Subj" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label6" runat="server" Text="Result"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                 <asp:DropDownList ID="ddlResType" runat="server" Width="150px"  AutoPostBack="true" OnSelectedIndexChanged="ddlResType_SelectedIndexChanged">
                            <asp:ListItem Enabled="true" Text="Result Type" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Grade" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Division" Value="2"></asp:ListItem>
                   </asp:DropDownList>
                  </td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="lblGrade_div" runat="server" Text=""></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                  <asp:TextBox ID="txt_Grade" runat="server"></asp:TextBox>




                     <asp:TextBox ID="txt_Devision" runat="server"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="lblGrade_div1" runat="server" Text=""></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                    <asp:TextBox ID="txt_CGPA_outOf" runat="server"></asp:TextBox>




                    <asp:TextBox ID="txt_Marks" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

               <asp:Label ID="lblMsg" runat="server"   Text="" ForeColor="red"></asp:Label>   </td>
            <td>

                &nbsp;</td>
            <td>

                <asp:TextBox ID="txt_trucking" runat="server" ReadOnly="true"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                &nbsp;</td>
            <td>

                &nbsp;</td>
            <td>

                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            &nbsp;<asp:Button ID="btnBack" runat="server" Text="Back to CV" OnClick="btnBack_Click"  />
            </td>
        </tr>
        </table>

        <asp:GridView ID="grdAcademic" runat="server" AutoGenerateColumns="false" CellPadding="5" Width="95%" 
         ForeColor="#333333" ShowFooter="True" DataKeyNames="CanEdu_Sl" EmptyDataText="no data found">
          <Columns>
           
           
              <asp:TemplateField HeaderText="Sl" Visible="true">
               <ItemTemplate>
                  <asp:Label ID="lblTruck" runat="server" Text='<%# Eval("TrackingNo")%>'></asp:Label>
               </ItemTemplate>
              
            </asp:TemplateField>

              <asp:TemplateField HeaderText="Exam/ Degree">
               <ItemTemplate>
                  <asp:Label ID="lblExam" runat="server" Text='<%# Eval("Examination")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Institution Type">
               <ItemTemplate>
                  <asp:Label ID="lblInsTy" runat="server" Text='<%# Eval("InstitutionType") %>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Institution">
               <ItemTemplate>
                  <asp:Label ID="lblIns" runat="server" Text='<%# Eval("Institution")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Passing Year">
               <ItemTemplate>
                  <asp:Label ID="lblYear" runat="server" Text='<%# Eval("Passing_Year")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


         

              <asp:TemplateField HeaderText="Concentration/ Major/ Group/ Subject">
               <ItemTemplate>
                  <asp:Label ID="lblSub" runat="server" Text='<%# Eval("MajorSubject")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Result">
               <ItemTemplate>
                  <asp:Label ID="lblRes" runat="server" Text='<%# Eval("Result")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


            



                   <asp:TemplateField HeaderText="Edit" ItemStyle-Width="5%" >
                        <ItemTemplate>
                            <asp:ImageButton ID="imgButtonEdit" runat="server" ImageUrl="../image/edit.png" CommandName="Edit"
                                Text="Edit" ToolTip="Edit" OnClientClick="return confirm('Are you sure to Edit ?')"
                                CausesValidation="false" /></ItemTemplate>
                        <ItemStyle CssClass="grid_header" />
                        <ItemStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                     </asp:TemplateField>


                      <asp:TemplateField HeaderText="Delete" ItemStyle-Width="5%">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgButton" runat="server" ImageUrl="../image/Delete.gif" CommandName="Delete"
                                    Text="Delete" ToolTip="Delete" OnClientClick="return confirm('Are you sure to delete?')" /></ItemTemplate>
                            <ItemStyle CssClass="grid_header" />
                        </asp:TemplateField>
          </Columns> 
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />       
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:GridView>
    </div>
    </form>
    <p>
        </p>
</body>
</html>
