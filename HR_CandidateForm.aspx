<%@ Page Title="" Language="C#" MasterPageFile="~/HRCandidate.Master" AutoEventWireup="true" 
    CodeBehind="HR_CandidateForm.aspx.cs" Inherits="Eastern_Uni.HR_CandidateForm" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Candidate Forms</title>

    <script src="js/HRjquery.min.js" type="text/javascript"></script>
    <script src="js/HRddaccordion.js" type="text/javascript"></script>
    <script src="js/HRddaccordion2.js" type="text/javascript"></script>

     <link rel="shortcut icon" href="image/Other/favicon.ico" />
    <link href="CSS/Candidate.css" rel="stylesheet" />

    <script src="JQS/jquery-1.4.1.min.js" type="text/javascript"></script>
      <script lang="javascript" type="text/javascript">

          function UploadFile() {
              var value = $("#ContentPlaceHolder1_FileUpload1").val();
              if (value != '') {
                  $("#ContentPlaceHolder1_ImageUploadform1").submit();
              }
          };

</script>
    <!--
         <script type="text/javascript">

        $(document).ready(function () {

            //Uncheck the CheckBox initially

            $('#ContentPlaceHolder1_chkFacOthers').removeAttr('checked');

            // Initially, Hide the SSN textbox when Web Form is loaded

            $('#ContentPlaceHolder1_divFacOthers').hide();

            $('#ContentPlaceHolder1_chkFacOthers').change(function () {

                if (this.checked) {

                    $('#ContentPlaceHolder1_divFacOthers').show();

                }

                else {

                    $('#ContentPlaceHolder1_divFacOthers').hide();

                }

            });

        });

</script>


    <script type="text/javascript">

        $(document).ready(function () {

            //Uncheck the CheckBox initially

            $('#ContentPlaceHolder1_chkFacOthers').removeAttr('checked');

            // Initially, Hide the SSN textbox when Web Form is loaded

            $('#ContentPlaceHolder1_divFacOthers').hide();

            $('#ContentPlaceHolder1_chkFacOthers').change(function () {

                if (this.checked) {

                    $('#ContentPlaceHolder1_divFacOthers').show();

                }

                else {

                    $('#ContentPlaceHolder1_divFacOthers').hide();

                }

            });

        });

</script> 
        -->
   
     <style type="text/css">
         .auto-style1 {
             width: 25px;
         }
         .auto-style2 {
             width: 21px;
         }
     </style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   

    
     <div class="NoBorder">
          <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>

        
            <asp:Label ID="lbltrucking" runat="server" Font-Bold="True" Font-Size="Large" Text="" ForeColor="red"></asp:Label>       
               <br /><br />
         <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="Red" HeaderText="Page Errors" ShowMessageBox="True"
                ShowSummary="true" DisplayMode="List" /> 
         
         <asp:Panel ID="pnlBasicData" runat="server">

<table style="border-style: solid none none none; border-color: #000000; border-width: medium; width:98%; margin-left:5px">
                   <tr>
                       <td style="width:20%;text-align: right;">
                            
                       
                           <asp:Label ID="Label1" runat="server" Text="Applicant Name"></asp:Label>

                         
                       </td>
                       <td style="width:30%;margin-left:5px">
                         <asp:TextBox ID="txtName" runat="server" Width="240px" ReadOnly="true"></asp:TextBox>
                            
                       </td>
                       <td style="width:20%;text-align: right;">

                        <asp:Label ID="Label15" runat="server" Text="National ID"></asp:Label>
                                                       </td>
                       <td style="width:30%;margin-left:5px">
                       
                                                       <asp:TextBox ID="txtNationID" runat="server" ReadOnly="true"></asp:TextBox>
                       
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;">
     
                        <asp:Label ID="lblBirthdate" runat="server" Text="Birth Date"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                        <asp:TextBox ID="txtBirthDate" runat="server"  onblur="CalculateAge()" ReadOnly="true"/>
      <!--  <input type="button" value="text" onclick="CalculateAge()" />-->
      

                           </td>
                       <td style="width:20%;text-align: right;">

                        <asp:Label ID="Label37" runat="server" Text="Age"></asp:Label>

                        </td>
                       <td style="width:30%;margin-left:5px">
                           <span id="lblAge"></span>
                           </td>
                   </tr>

                   
                   <tr>
                       <td style="width:20%;text-align: right;">
     
                        <asp:Label ID="Label9" runat="server" Text="Nationality"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:DropDownList ID="ddlNationality" runat="server"  Width="150px" ReadOnly="true">

                           </asp:DropDownList>

                        
                          
                       </td>
                       <td style="width:20%;text-align: right;">
                                
                        <asp:Label ID="Label13" runat="server" Text="Mobile No"></asp:Label>
                            </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtMobile" runat="server" ReadOnly="true"></asp:TextBox>

                           
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;">
     
                        <asp:Label ID="Label2" runat="server" Text="Fathers'/Husbands' Name"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                        <asp:TextBox ID="txtGardian" runat="server" Width="240px" ReadOnly="true"></asp:TextBox>
                         
                       </td>
                       <td style="width:20%;text-align: right;">
                                
                        <asp:Label ID="Label8" runat="server" Text="Mothers' Name"></asp:Label>

                        </td>
                       <td style="width:30%;margin-left:5px">

                        <asp:TextBox ID="txtMother" runat="server" Width="240px" ReadOnly="true"></asp:TextBox>
                          
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;">
     
                        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                          <asp:DropDownList ID="ddlGender" runat="server" Width="150px" ReadOnly="true">
                            <asp:ListItem Enabled="true" Text="Select Gender" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Male" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Others" Value="5"></asp:ListItem>
                        </asp:DropDownList>


                          
                       </td>
                       <td style="width:20%;text-align: right;">
     
                        <asp:Label ID="Label7" runat="server" Text="Religion"></asp:Label>
                            </td>
                       <td style="width:30%;margin-left:5px">
                           <asp:DropDownList ID="ddlReligion" runat="server" Width="150px" ReadOnly="true">
                            <asp:ListItem Enabled="true" Text="Select Religion" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Buddhist" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Christian" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Hindu" Value="3"></asp:ListItem>
                               <asp:ListItem Text="Islam" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Others" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Sikh" Value="6"></asp:ListItem>
                        </asp:DropDownList>


                         
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;">
                                
                        <asp:Label ID="Label10" runat="server" Text="Maritial Status"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:DropDownList ID="ddlMaritial" runat="server" Width="150px" ReadOnly="true">
                            <asp:ListItem Enabled="true" Text="Select Marital Status" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Divorcee" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Married" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Not Mentioned" Value="3"></asp:ListItem>
                               <asp:ListItem Text="Single" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Widower" Value="5"></asp:ListItem>
                        </asp:DropDownList>
                           
                       </td>
                       <td style="width:20%;text-align: right;">
                                
                        <asp:Label ID="Label14" runat="server" Text="Email" ></asp:Label>

                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtMail" runat="server"  ReadOnly="true"></asp:TextBox>

                            
                       </td>
                   </tr>
                   <tr>
                       <td style="width:20%;text-align: right;vertical-align: top">
   
                        <asp:Label ID="Label11" runat="server" Text="Mailing Address"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtPreAdd" runat="server" Width="240px" TextMode="MultiLine" Height="40px" ReadOnly="true"></asp:TextBox>
                          
                       </td>
                       <td style="width:20%;text-align: right; vertical-align: top">
                              
                        <asp:Label ID="Label12" runat="server" Text="Permanent Address"></asp:Label>
                       </td>
                       <td style="width:30%;margin-left:5px">

                            <asp:TextBox ID="txtPerAdd" runat="server" Width="240px" TextMode="MultiLine" Height="40px" ReadOnly="true" ></asp:TextBox>
                          
                       </td>
                   </tr>

   
                   <tr>
                       <td colspan="2" style="text-align: right; vertical-align: top">

                           <!--
                           <div>
<asp:FileUpload ID="FileUpload1" runat="server" 
ClientIDMode="Static" onchange="UploadFile()" />    
       
         <asp:Label ID="lblimage" runat="server"></asp:Label> 
              
  <asp:Image ID="Image1" runat="server" Height="250px" Width="200px"/>

</div>
           
                               <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1"/>
                                               -->

                      <asp:Panel ID="pnlImage" runat="server" GroupingText="Upload Photo" Width="250px" Direction="LeftToRight"  style="margin-left: 240px;" >
                               <input type="file" id="File1" name="File1" runat="server" />
                               <br/>
                              
                               <asp:TextBox ID="txtPictureLocation" runat="server" Visible="false" Width="180px"></asp:TextBox>
                          
                               <asp:Label ID="lblUpImMsg" runat="server" ForeColor="Blue"></asp:Label>
                               &nbsp;
                           </asp:Panel>
                       </td>
                       <td style="width: 20%; text-align: right; vertical-align: top">&nbsp;</td>
                       <td style="width: 30%; margin-left: 5px">&nbsp;</td>
                   </tr>

   
                   </table>
     
    

             </asp:Panel>
                 
         
          <br /><br />


   <table style="width:98%">
       <tr>
           <td>
               <asp:Label ID="Label5" runat="server" Text="Academic Background" Font-Bold="True" ForeColor="Blue"></asp:Label>
           </td>
           <td style="text-align: right">
               <asp:Button ID="btnAddAcdInfo" runat="server" Text="Add Info" OnClick="btnAddAcdInfo_Click" />
           </td>
       </tr>
   </table>    
         
         
         <asp:Panel ID="pnlAcademicInfo" runat="server" Visible="false">

             <table>
        <tr>
            <td>

                <asp:Label ID="Label4" runat="server" Text="Exam/ Degree"></asp:Label>

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

                <asp:Label ID="Label21" runat="server" Text="Institution Type"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

               <asp:DropDownList ID="ddlInsType" runat="server"  Width="150px" ReadOnly="true">

                           </asp:DropDownList></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label31" runat="server" Text="Institution"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

              <asp:TextBox ID="txt_Ins" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label32" runat="server" Text="Passing Year"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

              <asp:TextBox ID="txt_PassYear" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label33" runat="server" Text="Concentration/ Major/ Group/ Subject"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                <asp:TextBox ID="txt_Subj" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label34" runat="server" Text="Result"></asp:Label>

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

                  <asp:TextBox ID="txt_Grade" runat="server" Visible="false" ></asp:TextBox>




                     <asp:TextBox ID="txt_Devision" runat="server" Visible="false"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="lblGrade_div1" runat="server" Text=""></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                    <asp:TextBox ID="txt_CGPA_outOf" runat="server" Visible="false"></asp:TextBox>




                    <asp:TextBox ID="txt_Marks" runat="server" Visible="false"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="lblmsgAcademic" runat="server" ForeColor="red" Text=""></asp:Label>

              </td>
            <td>

                &nbsp;</td>
            <td>
                   <asp:TextBox ID="txtTruckingEdu" runat="server" ReadOnly="true"></asp:TextBox>
                <asp:TextBox ID="txtAcademicInfoID" runat="server" Visible="false"></asp:TextBox></td>
        </tr>
        <tr>
            <td>

                &nbsp;</td>
            <td>

                &nbsp;</td>
            <td>

                <asp:Button ID="btnSaveAcademic" runat="server" Text="Save" OnClick="btnSaveAcademic_Click" Width="77px" />
            &nbsp;<asp:Button ID="btnClearAcademic" runat="server" Text="Clear" OnClick="btnClearAcademic_Click" style="margin-left: 19px" Width="77px"  />
            </td>
        </tr>
        </table>


         </asp:Panel>

         <asp:GridView ID="grdAcademic" runat="server" AutoGenerateColumns="false" CellPadding="2" Width="95%" 
         ForeColor="#333333"  DataKeyNames="CanEdu_Sl" EmptyDataText="no data found" PageSize="20" 
             OnRowDeleting="grdAcademic_RowDeleting" OnRowEditing="grdAcademic_RowEditing" 
             OnPageIndexChanging="grdAcademic_PageIndexChanging">
          <Columns>
           
           
              <asp:TemplateField HeaderText="Sl" Visible="true" ItemStyle-Width="5%">
               <ItemTemplate>
                  <asp:Label ID="lblTruck" runat="server" Text='<%# Eval("TrackingNo")%>'></asp:Label>
               </ItemTemplate>
              
            </asp:TemplateField>

              <asp:TemplateField HeaderText="Exam/ Degree" ItemStyle-Width="10%">
               <ItemTemplate>
                  <asp:Label ID="lblExam" runat="server" Text='<%# Eval("Examination")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Institution Type" ItemStyle-Width="10%" Visible="false">
               <ItemTemplate>
                  <asp:Label ID="lblInsTy" runat="server" Text='<%# Eval("InstitutionType") %>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Institution" ItemStyle-Width="25%">
               <ItemTemplate>
                  <asp:Label ID="lblIns" runat="server" Text='<%# Eval("Institution")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Passing Year" ItemStyle-Width="10%">
               <ItemTemplate>
                  <asp:Label ID="lblYear" runat="server" Text='<%# Eval("Passing_Year")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


         

              <asp:TemplateField HeaderText="Concentration/ Major/ Group/ Subject" ItemStyle-Width="15%">
               <ItemTemplate>
                  <asp:Label ID="lblSub" runat="server" Text='<%# Eval("MajorSubject")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Result" ItemStyle-Width="10%">
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
         <br /><br />
         
          <table style="width:98%">
       <tr>
           <td>
         <asp:Label ID="Label35" runat="server" Text="Teaching Job Experience" Font-Bold="True" ForeColor="Blue"></asp:Label>
               </td>
           <td style="text-align: right">
                <asp:Button ID="btnTeachingInfo" runat="server" Text="Add Info" OnClick="btnTeachingInfo_Click" />
                 
           </td>
           </tr>
               </table>
         <asp:Panel ID="pnlTeachingInfo" runat="server" Visible="true">
             

             <table>
        <tr>
            <td>

                <asp:Label ID="Label16" runat="server" Text="University/Institution Name"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                
                <asp:TextBox ID="txt_Uni" runat="server" Height="40px" TextMode="MultiLine" Width="284px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label42" runat="server" Text="Official Address"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="txt_OfficialUni" runat="server" Height="40px" TextMode="MultiLine" Width="284px"></asp:TextBox>
            </td>
        </tr>
                  <tr>
                      <td>
                          <asp:Label ID="Label39" runat="server" Text="Faculty/ Department"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td colspan="8">
                          
                          <asp:DropDownList ID="ddlFaculty" runat="server" AutoPostBack="true" Width="200px" OnSelectedIndexChanged="ddlFaculty_SelectedIndexChanged" >

                           </asp:DropDownList>

                         
                          <asp:TextBox ID="txt_Dept" runat="server" Visible="false" Width="200px" style="margin-left: 20px"></asp:TextBox>
                          <asp:Label ID="Label47" runat="server" style="margin-left: 30px" Text="Subject"></asp:Label>
                          <asp:TextBox ID="txt_Subject" runat="server" Width="200px" style="margin-left: 10px"></asp:TextBox>
                      </td>
                  </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label17" runat="server" Text="Designation"></asp:Label>
                     </td>
                     <td>&nbsp;</td>
                     <td colspan="8">
                         <asp:DropDownList ID="ddl_desg" runat="server" Width="200px" >
                         </asp:DropDownList>
                        
                         <asp:TextBox ID="txt_Desg" runat="server" Visible="false" Width="200px" style="margin-left: 20px"></asp:TextBox>
                     </td>
                 </tr>
        <tr>
            <td style="vertical-align: top">

                <asp:Label ID="Label44" runat="server" Text="Job Responsibilities"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td >

               
                 <asp:TextBox ID="txt_JResponsT" runat="server" Height="40px" TextMode="MultiLine" Width="284px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td style="vertical-align: top">
                <asp:Label ID="Label3" runat="server" Text="Research Interest"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="txt_Research" runat="server" Height="40px" TextMode="MultiLine" Width="284px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">

                <asp:Label ID="Label19" runat="server" Text="Exp. From"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                <asp:TextBox ID="txt_ExpFrmdate" runat="server" Width="200px"></asp:TextBox>
                  <asp:CalendarExtender ID="cexDatefrmTeaching" runat="server" Format="dd/MM/yyyy" TargetControlID="txt_ExpFrmdate">
                                         </asp:CalendarExtender>
                                      
            </td>
            <td>&nbsp;</td>
            <td>
                 <asp:Label ID="lblCrnt" runat="server" Text="Current Job?"></asp:Label>
                
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlCurrentJob" runat="server" Width="150px"  AutoPostBack="true" OnSelectedIndexChanged="ddlCurrentJob_SelectedIndexChanged">
                            <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                            <asp:ListItem Text="No" Value="2"></asp:ListItem>
                   </asp:DropDownList>

            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="lblExpTo" runat="server" Text="Exp. To" visible="false"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_ExpTodate" runat="server" visible="false" Width="200px" AutoPostBack="true" OnTextChanged="txt_ExpTodate_TextChanged"></asp:TextBox>

                 <asp:CalendarExtender ID="cexDateToTeaching" runat="server" Format="dd/MM/yyyy" TargetControlID="txt_ExpTodate">
                                         </asp:CalendarExtender>
            </td>
        </tr>
                  <tr>
                      <td style="vertical-align: top">Total Years :</td>
                       <td>&nbsp;</td>
                       <td id="Teaching_tdYear" runat="server">  
            </td>  
                      <td>&nbsp;</td>
                      <td>Total Months</td>
                     
                      
                      <td>&nbsp;</td>
                       <td id="Teaching_tdMonths" runat="server">  
            </td>
                      <td class="auto-style1">&nbsp;</td>
                      <td>Total Days</td>
                       <td id="Teaching_tdDays" runat="server">  
            </td> 
                  </tr>
                  <tr>
                      <td style="vertical-align: top">
                          <asp:Label ID="Label46" runat="server" Text="Supervisor Name"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td>
                          <asp:TextBox ID="txt_TSuper" runat="server" Width="200px"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td>
                          <asp:Label ID="Label45" runat="server" Text="Phone/ Contact Number"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td colspan="4">
                          <asp:TextBox ID="txt_TSuperContact" runat="server" Width="200px"></asp:TextBox>
                      </td>
                  </tr>
        <tr>
            <td>

                <asp:Label ID="lblMsgTeachingExp" runat="server" ForeColor="red" Text=""></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                <asp:TextBox ID="txt_trucking" runat="server" ReadOnly="true"></asp:TextBox>
                <asp:Label ID="lblTeaching_tdYear" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblTeaching_tdMonths" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txt_CanTeachExpID" runat="server" ReadOnly="true"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>

                &nbsp;</td>
            <td>

                &nbsp;</td>
            <td>
                  <asp:Button ID="btnSaveTeachingExp" runat="server" Text="Save"  Width="103px" OnClick="btnSaveTeachingExp_Click" />
                 &nbsp;<asp:Button ID="btnClearTeachingEx" runat="server" Text="Clear" OnClick="btnClearTeachingExp_Click" style="margin-left: 19px" Width="77px"  />
              
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        </table>

               </asp:Panel>
              
          
        <asp:GridView ID="grdTeachingExp" runat="server" 
            AutoGenerateColumns="false" CellPadding="2" Width="95%" 
         ForeColor="#333333"  DataKeyNames="Can_TeachExpID" EmptyDataText="no data found" PageSize="20" >
          <Columns>
           
           
              <asp:TemplateField HeaderText="Sl" Visible="true" >
               <ItemTemplate>
                  <asp:Label ID="lblTruck" runat="server" Text='<%# Eval("TrackingNo")%>'></asp:Label>
               </ItemTemplate>
              
            </asp:TemplateField>

              <asp:TemplateField HeaderText="University/ Institution" ItemStyle-Width="20%">
               <ItemTemplate>
                  <asp:Label ID="lblUni_Inst" runat="server" Text='<%# Eval("Uni_Inst")%>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>


              <asp:TemplateField HeaderText="Faculty" ItemStyle-Width="20%">
               <ItemTemplate>
                  <asp:Label ID="lblFaculty" runat="server" Text='<%# Eval("Faculty") %>'></asp:Label>
                   <br /> <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>

            
               <asp:TemplateField HeaderText="Designation" ItemStyle-Width="15%">
               <ItemTemplate>
                  <asp:Label ID="lblDesignation" runat="server" Text='<%# Eval("Designation") %>'></asp:Label>
               </ItemTemplate>
               
            </asp:TemplateField>

              <asp:TemplateField HeaderText="Job Time" ItemStyle-Width="15%">
               <ItemTemplate>
                  <asp:Label ID="lblTyear" runat="server" Text='<%# Eval("Tyear")%>'></asp:Label>
                    <asp:Label ID="lblTyearText" runat="server" Text=' year '></asp:Label>
                    <asp:Label ID="lblTmonth" runat="server" Text='<%# Eval("Tmonth")%>'></asp:Label>
                    <asp:Label ID="lblTmonthText" runat="server" Text=' month'></asp:Label>
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

       


         
        

    <br /><br />
         
         
         <table style="width:98%">
       <tr>
           <td>
         <asp:Label ID="Label18" runat="server" Text="Administrative Section Experience" Font-Bold="True" ForeColor="Blue"></asp:Label>
               </td>
           <td style="text-align: right">
                  <asp:Button ID="btnAdminisInfo" runat="server" Text="Add Info" OnClick="btnAdminisInfo_Click" />
           </td>
           </tr>
               </table>
         <asp:Panel ID="pnlAdminisInfo" runat="server" Visible="true">
             
              <table>
        <tr>
            <td>

                <asp:Label ID="Label20" runat="server" Text="University/ Institution/ Company Name"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                
                <asp:TextBox ID="txtCompany" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label43" runat="server" Text="Official Address"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td colspan="4">
                <asp:TextBox ID="TextBox9" runat="server" Width="305px"></asp:TextBox>
            </td>
        </tr>
                  <tr>
                      <td style="vertical-align: top">
                          <asp:Label ID="Label22" runat="server" Text="Working Area"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td>
                          <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="MultiLine" Height="40px"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td>
                          <asp:Label ID="Label23" runat="server" Text="Last Designation"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td colspan="4">
                          <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td style="vertical-align: top">
                          <asp:Label ID="Label24" runat="server" Text="Key Achievements"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td>
                          <asp:TextBox ID="TextBox4" runat="server" Height="40px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td style="vertical-align: top">
                          <asp:Label ID="Label25" runat="server" Text="Job Responsibility"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td colspan="4">
                          <asp:TextBox ID="TextBox5" runat="server" Height="40px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                      </td>
                  </tr>
        <tr>
            <td style="vertical-align: top">

                <asp:Label ID="Label26" runat="server" Text="Exp. From"></asp:Label>

            </td>
            <td>

                &nbsp;</td>
            <td>

                <asp:TextBox ID="txtExpfrm_Ad" runat="server" Width="200px"></asp:TextBox>

                 <asp:CalendarExtender ID="cexDatefrmAdminst" runat="server" Format="dd/MM/yyyy" TargetControlID="txtExpfrm_Ad">
                                         </asp:CalendarExtender>
            </td>
            <td>&nbsp;</td>
            <td>
                 <asp:Label ID="Label27" runat="server" Text="Current Job?"></asp:Label>
                
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlCrnt" runat="server" Width="150px"  AutoPostBack="true" OnSelectedIndexChanged="ddlCrnt_SelectedIndexChanged" >
                            
                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                            <asp:ListItem Text="No" Value="2"></asp:ListItem>
                   </asp:DropDownList>

            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="lbl_ExpTo" runat="server" Text="Exp. To" visible="false"></asp:Label>
                <asp:TextBox ID="txtExpto_Ad" runat="server" visible="false" Width="200px" OnTextChanged="txtExpto_Ad_TextChanged" ></asp:TextBox>

                
                 <asp:CalendarExtender ID="cexDateToAdminst" runat="server" Format="dd/MM/yyyy" TargetControlID="txtExpto_Ad">
                                         </asp:CalendarExtender>
            </td>
           
        </tr>
<tr>
                      <td style="vertical-align: top">Total Years :</td>
                       <td>&nbsp;</td>
                       <td id="Admins_tdYear" runat="server">  
            </td>  
                      <td>&nbsp;</td>
                      <td>Total Months</td>
                     
                      
                      <td>&nbsp;</td>
                       <td id="Admins_tdMonths" runat="server">  
            </td>
                      <td class="auto-style1">&nbsp;</td>
                      <td>Total Days</td>
                       <td id="Admins_tdDays" runat="server">  
            </td> 
                  </tr>
                  <tr>
                      <td style="vertical-align: top">
                          <asp:Label ID="Label29" runat="server" Text="Supervisor Name"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td>
                          <asp:TextBox ID="txtSupervisor" runat="server" Width="200px"></asp:TextBox>
                      </td>
                      <td>&nbsp;</td>
                      <td>
                          <asp:Label ID="Label30" runat="server" Text="Phone/ Contact Number"></asp:Label>
                      </td>
                      <td>&nbsp;</td>
                      <td colspan="4">
                          <asp:TextBox ID="TextBox11" runat="server" Width="200px"></asp:TextBox>
                      </td>
                  </tr>
        <tr>
            <td>

               <asp:Label ID="lblmsgAdmistr" runat="server"   Text="" ForeColor="red"></asp:Label>   </td>
            <td>

                &nbsp;</td>
            <td>

                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true"></asp:TextBox></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>

                &nbsp;</td>
            <td>

                &nbsp;</td>
            <td>

              <asp:Button ID="btnSaveAdExp" runat="server" Text="Save"  Width="103px" OnClick="btnSaveAdExp_Click" />
                 &nbsp;<asp:Button ID="btnClearAdExp" runat="server" Text="Clear" OnClick="btnClearAdExp_Click" style="margin-left: 19px" Width="77px"  />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        </table>
              </asp:Panel>
        <asp:GridView ID="grdAdministrative" runat="server" 
            AutoGenerateColumns="false" CellPadding="2" Width="95%" 
         ForeColor="#333333"  DataKeyNames="CanEdu_Sl" EmptyDataText="no data found" PageSize="20">
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
        
              
</asp:Content>
