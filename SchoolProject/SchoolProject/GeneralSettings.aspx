<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeneralSettings.aspx.cs" Inherits="SchoolProject.GeneralSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>General Settings</h3>
    <hr />
    <asp:Label ID="lblSchoolName" runat="server">School Name</asp:Label>
    <asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblEffectiveBeginDate" runat="server">Effective Begin Date</asp:Label>
    <asp:TextBox ID="txtEffectiveBeginDate" runat="server"> </asp:TextBox> 
    <asp:ImageButton ID="imgEffectiveBeginDate" ImageUrl="~/Resources/calendar.png" Width="25px" Height="25px" runat="server" OnClick="imgEffectiveBeginDate_Click" />
    <asp:Calendar ID="calEffectiveBeginDate" runat="server" OnDayRender="calEffectiveBeginDate_DayRender" OnSelectionChanged="calEffectiveBeginDate_SelectionChanged"></asp:Calendar> <br />
    <asp:Label ID="lblEffectiveEndDate" runat="server">Effective End Date</asp:Label>
    <asp:TextBox ID="txtEffectiveEndDate" runat="server"></asp:TextBox>
    <asp:ImageButton ID="imgEffectiveEndDate" ImageUrl="~/Resources/calendar.png" Width="25px" Height="25px" runat="server" OnClick="imgEffectiveEndDate_Click" />
    <asp:Calendar ID="calEffectiveEndDate" runat="server" OnDayRender="calEffectiveEndDate_DayRender" OnSelectionChanged="calEffectiveEndDate_SelectionChanged"></asp:Calendar> <br />
    <asp:Label ID="lblAttendance" runat="server">Attendance Type</asp:Label>
    <asp:DropDownList ID="ddlAttendance" runat="server">
        <asp:ListItem Value="1" Text ="Daily"></asp:ListItem>
    </asp:DropDownList> <br />
    <asp:Label ID="lblLogo" runat="server">Upload Logo</asp:Label>
    <asp:FileUpload ID="fupLogo" runat="server" /> <br />
    <asp:Label ID="lblSchoolURL" runat="server">School Website</asp:Label>
    <asp:TextBox ID="txtSchoolURL" runat="server"></asp:TextBox> <br />
    <hr />
    <h3>Address</h3>
    <asp:Label ID="lblAddress" runat="server">Address</asp:Label>
    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblCity" runat="server">City</asp:Label>
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblStateDepartment" runat="server">State/Department</asp:Label>
    <asp:TextBox ID="txtStateDepartment" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblCountry" runat="server">Country</asp:Label>
    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox> <br />
    
    <h3>Phone Information</h3>
    <hr />
   
      <asp:GridView ID="GridView1" runat="server" CssClass="Grid" AutoGenerateColumns="false" EmptyDataText="No Record has been added">
         <Columns>
             <asp:BoundField DataField="PhoneType" HeaderText="Phone Type" ItemStyle-Width="120" />
             <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-Width="120" />
             <asp:BoundField DataField="Extension" HeaderText="Extension" ItemStyle-Width="120" />
             <asp:BoundField DataField="Primary" HeaderText="Primary" ItemStyle-Width="120" />
         </Columns>
     </asp:GridView>  <br />
                            
    <asp:Label ID="lblPhoneType" runat="server">Phone Type</asp:Label>
    <asp:DropDownList ID="ddlPhoneType" runat="server">
        <asp:ListItem>Office</asp:ListItem>
        <asp:ListItem>Cell Phone</asp:ListItem>
    </asp:DropDownList> <br />
    <asp:Label ID="lblPhoneNumber" runat="server">Phone Number</asp:Label>
    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblExtension" runat="server">Extension</asp:Label>
    <asp:TextBox ID="txtExtension" runat="server"></asp:TextBox><br />
    <asp:CheckBox ID="chkPrimary" runat="server" Text="Primary Phone#" /><br />
    <asp:Button ID="btnAddToList" Text="Add to List" runat="server" OnClick="btnAddToList_Click" />
    <asp:Button ID="btnCancel" Text="Cancel" runat="server" /> <br />
    <h3>Contact Information</h3>
    <hr />

    <asp:Label ID="lblContactFirstName" runat="server">First Name</asp:Label>
    <asp:TextBox ID="txtContactFirstName" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblContactLastName" runat="server">Last Name</asp:Label>
    <asp:TextBox ID="txtContactLastName" runat="server"></asp:TextBox><br />
    <h3>Trimesters</h3>
    <hr />
    <asp:GridView ID="Gridview2" runat="server" CssClass="Grid" AutoGenerateColumns="false" EmptyDataText="No Records has been added.">
        <Columns>
            <asp:BoundField DataField="TrimesterName" HeaderText="Trimester Name" ItemStyle-Width="140" />
            <asp:BoundField DataField="ShortName" HeaderText="Short Name" ItemStyle-Width="140" />
            <asp:BoundField DataField="Graded" HeaderText="Graded" ItemStyle-Width="140" />
            <asp:BoundField DataField="Exam" HeaderText="Exam" ItemStyle-Width="140" />
            <asp:BoundField DataField="BeginDate" HeaderText="Begin Date" ItemStyle-Width="140" />
            <asp:BoundField DataField="EndDate" HeaderText="End Date" ItemStyle-Width="140" />
            <asp:BoundField DataField="GradePostingBegins" HeaderText="Grade Posting Begin" ItemStyle-Width="140" />
            <asp:BoundField DataField="GradePostingEnds" HeaderText="Grade Posting End" ItemStyle-Width="140" />
        </Columns>
    </asp:GridView> <br />
    <asp:Label ID="lblTrimesterName" runat="server">Trimester Name</asp:Label>
    <asp:TextBox ID="txtTrimesterName" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblShortName" runat="server">Short Name</asp:Label>
    <asp:TextBox ID="txtShortName" runat="server"></asp:TextBox><br />
    <asp:CheckBox ID="chkGraded" Text="Graded" runat="server" /> <br />
    <asp:CheckBox ID="chkExam" Text="Exam" runat="server" /> <br />
    <asp:Label ID="lblBeginDate" runat="server">Begin Date</asp:Label>
    <asp:TextBox ID="txtBeginDate" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblEndDate" runat="server">End Date</asp:Label>
    <asp:TextBox ID="txtEnddate" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblGradePostingBegins" runat="server">Grade Posting Begins</asp:Label>
    <asp:TextBox ID="txtGradePostingBeings" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblGradePostingEnds" runat="server">Grade Posting Ends</asp:Label>
    <asp:TextBox ID="txtGradePostingEnds" runat="server"></asp:TextBox><br />
    <asp:Button ID="btnAddtoListTrimester" text="Add to List"  runat="server" OnClick="btnAddtoListTrimester_Click" />
    <asp:Button ID="btbCancelTrimester" Text="Cancel" runat="server" /> <br />

    <h3>Grade Levels</h3>
    <hr />
    <asp:GridView ID="grdGradeLevels" runat="server" CssClass="Grid" AutoGenerateColumns="false" EmptyDataText="No Grade Added">
        <Columns>
            <asp:BoundField DataField="GradeName" HeaderText="Grade Name" />
            <asp:BoundField DataField="ShortName" HeaderText="Short Name" />
            <asp:BoundField DataField="Order" HeaderText="Order" />
            <asp:BoundField DataField="NextGradeLevel" HeaderText="Next Grade Level" />
        </Columns>
    </asp:GridView>

</asp:Content>
