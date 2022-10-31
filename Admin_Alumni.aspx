<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="Admin_Alumni.aspx.cs" Inherits="Eastern_Uni.Admin_Alumni" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Alumni Page</title>
    <link href="Information.css" rel="stylesheet" />
      <style type="text/css">
          .auto-style1 {
          }
          .auto-style2 {
          }
          
          .auto-style3 {
              width: 146px;
              height: 37px;
          }
          .auto-style4 {
              height: 37px;
          }
          
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="full_content">

          <form id="Form1" runat="server">
             <br />

             <span style="font-size:larger;font-weight:600;color:blue;">INSERT  / UPDATE / DELETE section for Alumni Section</span>
             <hr />
             Insert New Alumnis' inforamtion.....below   
              <br />
              <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#0033CC"></asp:Label>
             <div class="insert_box">

                 <table>
                     <tr>
                         <td class="auto-style1">
                              &nbsp;</td>

                         

                         <td class="auto-style2">

                
                 
                            <asp:TextBox ID="txtSl" runat="server" CssClass="TextBox" Visible="false"></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style3">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Name in Full&nbsp; :</span>
                         </td>

                         

                         <td class="auto-style4">

                 <asp:TextBox ID="txtName" runat="server" Width="500px" ></asp:TextBox>

                         </td>

                     </tr>

                     </table>

                     
                                 <asp:Panel ID="Panel1" runat="server" GroupingText="Personal Information">
                                     <table>

                                        
<tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Fathers&#39; name :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtFName" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Occupation :</span></td>

                          <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtFOcc" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Mohers&#39; name :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtMName" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Occupation :</span></td>

                          <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtMOcc" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Marital Status :</span></td>

                         

                         <td class="auto-style2" colspan="3">

                
                 
                 <asp:TextBox ID="txtMarSt" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Spouse Name (if any) :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtSpouse" runat="server" Width="280px" TextMode="MultiLine" Height="90px"></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00;">Details of Children (if any) :</span></td>

                          <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtChild" runat="server" Width="280px" TextMode="MultiLine" Height="90px"></asp:TextBox>

                         </td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Religion :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtRelign" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Blood Group :</span></td>

                          <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtBlGr" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Date of Birth :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtDate_Birth" runat="server" Width="250px" ></asp:TextBox>
                 <asp:CalendarExtender ID="cexDateFrm" TargetControlID="txtDate_Birth" Format="dd-MM-yyyy" runat="server"></asp:CalendarExtender>
             
                 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />

                         </td>

                         <td class="auto-style1">
                             &nbsp;</td>

                          <td class="auto-style2">

                
                 
                              &nbsp;</td>

                     </tr>
                     
                                          <tr>
                         <td class="auto-style1" colspan="2">

                             <span style="font-weight: 500; font-size: larger; color: #f00; text-decoration: underline;">Present Contact Address</span></td>

                         

                         <td class="auto-style1" colspan="2">
                            <span style="font-weight: 500; font-size: larger; color: #f00; text-decoration: underline;">Permanent Address</span>

                         </td>

                         

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Location :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtPreLoc" runat="server" Width="280px" TextMode="MultiLine" Height="150px"></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00;">Location :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtParLoc" runat="server" Width="280px" TextMode="MultiLine" Height="150px"></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Phone :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtPrePhn" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00;">Phone :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtParPhn" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Mobile :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtPreMob" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00;">Mobile :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtParMob" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                         <span style="font-weight: 500; font-size: larger; color: #f00;">EMail Address :</span> </td>

                         

                         <td class="auto-style2" colspan="3">

                
                 
                 <asp:TextBox ID="txtMail" runat="server" Width="689px" ></asp:TextBox>

                         </td>

                     </tr>


                     <tr>
                         <td class="auto-style1">
                              &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">

                
                 
                             &nbsp;</td>

                     </tr>

                     

                     <tr>
                         <td class="auto-style1">

                              &nbsp;</td>

                         

                         <td class="auto-style2">

                
                 
                             &nbsp;</td>

                         <td class="auto-style1">
                            
                             &nbsp;</td>

                         

                         <td class="auto-style2">

                
                             &nbsp;</td>

                     </tr>

                     <tr>
                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00;">Photo :</span>
                             </td>

                         

                         <td class="auto-style2" colspan="3">


                              
                 
                 

                             
                               <asp:Panel ID="pnlImage" runat="server" GroupingText="Upload Photo" Width="250px">

                  <input type="file" id="File1" name="File1" runat="server" />
                  <br/>
                  <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1"/>

                 <asp:TextBox ID="txtPictureLocation" runat="server" Width="200px" Visible="false"></asp:TextBox>
                  
                
                <asp:Label ID="lblmsg" runat="server" ForeColor="Blue" ></asp:Label>
                                         &nbsp;
                      </asp:Panel>


                         </td>

                     </tr>

                                 </table>


                                 </asp:Panel>
                            
                 <br />
                    
                         <asp:Panel ID="Panel2" runat="server" GroupingText="Academic Information">
                             <table>
                     <tr>
                         <td class="auto-style1" colspan="4">
                              <span style="font-weight: 500; font-size: larger; color: #f00; text-decoration: underline;">Degree Earned</span></td>

                         

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                 
                             &nbsp;</td>

                         <td class="auto-style1">
                              &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                             &nbsp;</td>

                     </tr>

                     <tr>
                         <td class="auto-style1" colspan="2">

                             <span style="font-weight: 500; font-size: larger; color: #f00; ">UnderGraduate Program</span></td>

                         

                         <td class="auto-style1">
                              &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                             &nbsp;</td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                            <span style="font-weight: 500; font-size: larger; color: #f00;">ID No / Roll :</span> </td>

                         

                         <td class="auto-style2">

                 
                 
                 <asp:TextBox ID="txtUnGrID" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Year :</span> </td>

                         

                         <td class="auto-style2">

                 
                 <asp:TextBox ID="txtUnGrYear" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Faculty :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlUnGFaculty" OnSelectedIndexChanged="ddlUngFaculty_SelectedIndexChanged">
                        </asp:DropDownList>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Subject :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlUnGSubject" >
                        </asp:DropDownList>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Shift :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlUnGShift" >
                        </asp:DropDownList>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Types :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlUngType" >
                        </asp:DropDownList>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Semester :</span>

                             </td>

                         

                         <td class="auto-style2">

                 
                 
                       <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlUnGSemister" >
                        </asp:DropDownList>

                         </td>

                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                 
                             &nbsp;</td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                 
                             &nbsp;</td>

                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                 
                             &nbsp;</td>

                     </tr>


                     <tr>
                         <td class="auto-style1" colspan="2">

                             <span style="font-weight: 500; font-size: larger; color: #f00; ">Graduate Program</span></td>

                         

                         <td class="auto-style1">
                              &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                             &nbsp;</td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                            <span style="font-weight: 500; font-size: larger; color: #f00;">ID No / Roll :</span> </td>

                         

                         <td class="auto-style2">

                 
                 
                 <asp:TextBox ID="txtGrID" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Year :</span> </td>

                         

                         <td class="auto-style2">

                 
                 <asp:TextBox ID="txtGrYear" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Faculty :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlGrFaculty" OnSelectedIndexChanged="ddlGFaculty_SelectedIndexChanged">
                        </asp:DropDownList>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Subject :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlGrSubject" OnSelectedIndexChanged="ddlGrSubject_SelectedIndexChanged"  >
                        </asp:DropDownList>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Shift :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlGrShift" >
                        </asp:DropDownList>

                         </td>

                         <td class="auto-style1">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Types :</span></td>

                         

                         <td class="auto-style2">

                 
                 
                             <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlGrType" >
                        </asp:DropDownList>

                         </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Semester :</span>

                             </td>

                         

                         <td class="auto-style2">

                 
                 
                       <asp:DropDownList runat="server" AutoPostBack="True" Width="250px"  ID="ddlGrSemister" >
                        </asp:DropDownList>

                         </td>

                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                 
                 
                             &nbsp;</td>

                     </tr>

                     

                     <tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2">

                             &nbsp;</td>

                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                             &nbsp;</td>

                     </tr>
                                 </table>
</asp:Panel>


                 <asp:Panel ID="Panel3" runat="server" GroupingText="Occupation">
                     <table>
                          <tr>
                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00; text-decoration: underline;">Current Job :</span>
                             </td>

                         

                         <td class="auto-style2" colspan="3">

                             &nbsp;</td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Occupation :</span>

                         </td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtOccupation" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                             <span style="font-weight: 500; font-size: larger; color: #f00;">Designation :</span>
                             </td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtDeg" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                     </tr>

                     

                     <tr>
                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                
                 
                             &nbsp;</td>

                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2">

                
                 
                             &nbsp;</td>

                     </tr>

                     <tr>
                         <td class="auto-style1" colspan="2">

                             <span style="font-weight: 500; font-size: larger; color: #f00; text-decoration: underline;">Official Address</span></td>

                         

                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2">

                
                 
                             &nbsp;</td>

                     </tr>
                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Location :</span>

                         </td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtOfcLoc" runat="server" Width="280px" TextMode="MultiLine" Height="150px"></asp:TextBox>

                         </td>

                         <td class="auto-style1" rowspan="2">
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Job Experience :</span>
                             </td>

                         

                         <td class="auto-style2" rowspan="2">

                
                 
                 <asp:TextBox ID="txtExp" runat="server" Width="280px" TextMode="MultiLine" Height="170px"></asp:TextBox>

                            </td>

                     </tr>

                     <tr>
                         <td class="auto-style1">

                             <span style="font-weight: 500; font-size: larger; color: #f00;">Phone :</span></td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtOffPhn" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         

                         

                     </tr>
                     </table>
                     </asp:Panel>

                        <table>
                    

                     <tr>
                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                
                 
                             &nbsp;</td>

                         <td class="auto-style1">
                             &nbsp;</td>

                          <td class="auto-style2">

                
                 
                             &nbsp;</td>

                     </tr>
                     

                     <tr>
                         <td class="auto-style1">
                             &nbsp;</td>

                         

                         <td class="auto-style2" colspan="3">


                              
                             &nbsp;</td>

                     </tr>
<tr>
                         <td class="auto-style1">

                              <span style="font-weight: 500; font-size: larger; color: #f00;">Priority :</span>

                             </td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtPriority" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                         <td class="auto-style1">
                            
                              <span style="font-weight: 500; font-size: larger; color: #f00;">Confirmation :</span>
                            
                             </td>

                         

                         <td class="auto-style2">

                
                 
                 <asp:TextBox ID="txtConfirmation" runat="server" Width="250px" ></asp:TextBox>

                         </td>

                    </tr>
                     <tr>
                         <td class="auto-style1">

                             &nbsp;</td>

                         

                         <td class="auto-style2">

                              <asp:Button ID="Submit" runat="server" Text="Submit" Height="36px" OnClick="Submit_Click" Width="150px" /></td>

                         <td class="auto-style1">

                             <asp:Button ID="btnClear" runat="server" Text="Clear" Height="36px" OnClick="btnClear_Click" Width="150px" /></td>

                         

                         <td class="auto-style2">

                             &nbsp;</td>

                     </tr>

                 </table>
                 <br />
               


                



             </div>

             <br />
             <br />

              Update or Deletion Below....
              <br />
              <asp:GridView ID="grdAlumni" runat="server" AutoGenerateColumns="False" DataKeyNames="Sl"
                   AllowPaging="True" BackColor="#6699FF" BorderColor="#3366FF"  
                  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="98%"
                  OnRowEditing="grdAlumni_RowEditing"  OnRowDeleting="grdAlumni_RowDeleting" 
                  OnRowDataBound="grdAlumni_RowDataBound" OnPageIndexChanging="grdAlumni_PageIndexChanging">
                  <Columns>
                     
                      <asp:TemplateField HeaderText="Sl" Visible="false">
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Sl") %>' ID="lblSl"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Serial" ItemStyle-Width="5%">
                        <ItemTemplate>
                            <asp:Label ID="lblSerial" runat="server"></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Graduate Student Identification">
                        <ItemTemplate>
                            <asp:Label ID="lblGID" runat="server" Font-Bold="True" Text="Graduation ID: "></asp:Label>
                            <asp:Label runat="server" Text='<%# Bind("Graduation_ID") %>' ID="lblGID_No"></asp:Label>
                            <br />
                            <asp:Label ID="lblGrF" runat="server" Font-Bold="True" Text="Faculty: "></asp:Label>
                            <asp:Label runat="server" Text='<%# Bind("GraduationFaculty") %>' ID="lblGrFaculty"></asp:Label>
                            <br />
                            <asp:Label ID="lblGrSubj" runat="server" Font-Bold="True" Text="Subject: "></asp:Label>
                           <asp:Label runat="server" Text='<%# Bind("GraSubject") %>' ID="lblGraSubj"></asp:Label>
                            <br /> 
                            <asp:Label ID="lblGrSft" runat="server" Font-Bold="True" Text="Shift: "></asp:Label>
                            <asp:Label runat="server" Text='<%# Bind("GraShift") %>' ID="lblGrShift"></asp:Label>
                            <br />
                            <asp:Label ID="lblGrTy" runat="server" Font-Bold="True" Text="Type: "></asp:Label>
                          <asp:Label runat="server" Text='<%# Bind("GraTypes") %>' ID="lblGrType"></asp:Label>
                            <br />
                            <asp:Label ID="lblGrSem" runat="server" Font-Bold="True" Text="Semister: "></asp:Label>
                           <asp:Label runat="server" Text='<%# Bind("Semister_Graduate") %>' ID="lblGrSemister"></asp:Label>
                            
                        </ItemTemplate>
                        <ItemStyle Width="25%" VerticalAlign="Top" />
                      </asp:TemplateField>


                      <asp:TemplateField HeaderText="Undergraduate Student Identification">
                        <ItemTemplate>
                            <asp:Label ID="lblUGID" runat="server" Font-Bold="True" Text="Undergraduation ID: "></asp:Label>
                            <asp:Label runat="server" Text='<%# Bind("UnderGraduation_ID") %>' ID="lblUGID_No"></asp:Label>
                            <br />
                            <asp:Label ID="lblUGrF" runat="server" Font-Bold="True" Text="Faculty: "></asp:Label>
                            <asp:Label runat="server" Text='<%# Bind("UnderGraduationFaculty") %>' ID="lblUGFaculty"></asp:Label>
                            <br />
                            <asp:Label ID="lblUGrSubj" runat="server" Font-Bold="True" Text="Subject: "></asp:Label>
                          <asp:Label runat="server" Text='<%# Bind("UnderGraSubj") %>' ID="lblUGSubj"></asp:Label>
                            <br /> 
                            <asp:Label ID="lblUGrSft" runat="server" Font-Bold="True" Text="Shift: "></asp:Label>
                            <asp:Label runat="server" Text='<%# Bind("UndrGraShift") %>' ID="lblUGShift"></asp:Label>
                            <br />
                            <asp:Label ID="lblUGrTy" runat="server" Font-Bold="True" Text="Type: "></asp:Label>
                           <asp:Label runat="server" Text='<%# Bind("UndrGraTypes") %>' ID="lblUGType"></asp:Label>
                            <br />
                            <asp:Label ID="lblUGrSem" runat="server" Font-Bold="True" Text="Semister: "></asp:Label>
                           <asp:Label runat="server" Text='<%# Bind("Semister_UnderGraduate") %>' ID="lblUGSemister"></asp:Label>
                            
                        </ItemTemplate>
                        <ItemStyle Width="25%" VerticalAlign="Top" />
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Name" >
                          <ItemTemplate>
                              <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="lblName"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>


                     <asp:TemplateField HeaderText="Present Occupation" >
                         <ItemTemplate>
                             <asp:Label ID="lblOcc" runat="server" Font-Bold="True" Text="Occupation: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Occupation") %>' ID="lblOccupation"></asp:Label>
                             <br />
                             <asp:Label ID="lbldesig" runat="server" Font-Bold="True" Text="Designation: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Designation") %>' ID="lblDesignation"></asp:Label>
                             <br/>
                             <asp:Label ID="lblJLoc" runat="server" Font-Bold="True" Text="Job Location: "></asp:Label>
                             <asp:Label runat="server" Text='<%# Bind("Job_Location") %>' ID="lblJob_Location"></asp:Label>
                         </ItemTemplate>
                     </asp:TemplateField>

                       

                      <asp:TemplateField HeaderText="EMail_Address" >
                         <ItemTemplate>
                             <asp:Label runat="server" Text='<%# Bind("EMail_Address") %>' ID="lblEMail_Address"></asp:Label>
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
                  

                  <FooterStyle BackColor="#99CCFF" ForeColor="#000099"></FooterStyle>

                 <HeaderStyle BackColor="#0033CC" Font-Bold="True" ForeColor="White"></HeaderStyle>

                 <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>

                 <RowStyle BackColor="#D7EBFF" ForeColor="#000099"></RowStyle>

                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                 <SortedAscendingCellStyle BackColor="#000099"></SortedAscendingCellStyle>


                 <SortedAscendingHeaderStyle BackColor="#000099"></SortedAscendingHeaderStyle>

                 <SortedDescendingCellStyle BackColor="#000099"></SortedDescendingCellStyle>

                 <SortedDescendingHeaderStyle BackColor="#000099"></SortedDescendingHeaderStyle>
              </asp:GridView>


              <asp:SqlDataSource runat="server" ID="Alumni" 
                  ConnectionString='<%$ ConnectionStrings:Eastern_UniversityConnectionString %>' 
                  DeleteCommand="DELETE FROM [Alumni] WHERE [Sl] = @Sl" >
                  
                  <DeleteParameters>
                      <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                  </DeleteParameters>
                 
              </asp:SqlDataSource>
          </form>

    </div>
</asp:Content>
