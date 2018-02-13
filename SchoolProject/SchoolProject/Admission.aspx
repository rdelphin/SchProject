<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="SchoolProject.Admission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Admission </h3>
    <hr />
    <h3>Personal information</h3>
    <asp:Label ID="lblStudentFName" runat="server">First Name</asp:Label>
    <asp:TextBox ID="txtStudentFname" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblStudentLName" runat="server">Last Name</asp:Label>
    <asp:TextBox ID="txtStudentLName" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblStudentDateOfBirth" runat="server">Date of Birth</asp:Label>
    <asp:TextBox ID="txtStudentDateOfBirth" runat="server"></asp:TextBox>
    <asp:ImageButton ID="imgDateOfBirth" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgDateOfBirth_Click" /><br />
    <asp:Calendar ID="calDateOfBirth" runat="server" OnDayRender="calDateOfBirth_DayRender" OnSelectionChanged="calDateOfBirth_SelectionChanged"></asp:Calendar>
    <asp:Label ID="lblGender" runat="server">Gender</asp:Label>
    <asp:RadioButton ID="rdoMale" GroupName="Gender" Text="Male" runat="server" AutoPostBack="true" />
    <asp:RadioButton ID="rdoFemale" GroupName="Gender" Text="Female" runat="server" AutoPostBack="true" /> <br />
    <asp:Label ID="lblPlaceOfBirth" runat="server">Place of Birth</asp:Label>
    <asp:TextBox ID="txtPlaceOfBirth" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblReligion" runat="server">Religion</asp:Label>
    <asp:TextBox ID="txtReligion" runat="server"></asp:TextBox><br />
    <asp:FileUpload ID="StudentImage" runat="server" />
    <h3>Address Information</h3>
    <hr />
    <asp:Label ID="lblStudentAddress" runat="server">Address</asp:Label>
    <asp:TextBox ID="txtStudentAddress" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblStudentCity" runat="server">City</asp:Label>
    <asp:TextBox ID="txtStudentCity" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblStudentDepartment" runat="server">State/Department</asp:Label>
    <asp:TextBox ID="txtStudentDepartment" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblStudentCountry" runat="server">Country</asp:Label>
    <asp:TextBox ID="txtStudentCountry" runat="server"></asp:TextBox> <br />
    <h3>Phone Information</h3>
    <hr />
    <asp:GridView ID="grdStudentPhone" runat="server" CssClass="Grid" AutoGenerateColumns="false" EmptyDataText="No Phone Added">
        <Columns>
            <asp:BoundField DataField="Phonetype" HeaderText="Phone Type" ItemStyle-Width="120" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-Width="120" />
            <asp:BoundField DataField="Extension" HeaderText="Extension" ItemStyle-Width="120" />
            <asp:BoundField DataField="Primary" HeaderText="Primary" ItemStyle-Width="120" />
        </Columns>
    </asp:GridView><br />
    <asp:Label ID="lblPhoneType" runat="server">Phone Type</asp:Label>
    <asp:DropDownList ID="ddlPhoneType" runat="server">
        <asp:ListItem Value="1">Home</asp:ListItem>
        <asp:ListItem Value="2">Cell Phone</asp:ListItem>
    </asp:DropDownList><br />
    <asp:Label ID="lblStudentPhoneNumber" runat="server">Phone Number</asp:Label>
    <asp:TextBox ID="txtStudentPhoneNumber" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblExtension" runat="server">Extension</asp:Label>
    <asp:TextBox ID="txtStudentExtension" runat="server"></asp:TextBox><br />
    <asp:CheckBox ID="txtStudentPrimaryPhone"  runat="server" Text="Primary"> </asp:CheckBox> <br />
    <asp:Button ID="btnAddToList" Text="Add to List" runat="server" />
    <asp:Button ID="btnCancel" Text="Cancel" runat="server" /> <br />
    <h3>Previous Education</h3>
    <hr />
    <asp:Label ID="lblSchoolName" runat="server">School Name</asp:Label>
    <asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblGrade" runat="server">Grade</asp:Label>
    <asp:DropDownList ID="chkGrade" runat="server">
        <asp:ListItem Value="1">6e Annee</asp:ListItem>
        <asp:ListItem Value="2">7e Annee</asp:ListItem>
    </asp:DropDownList> <br />
    <asp:Label ID="lblYear" runat="server">Year</asp:Label>
    <asp:TextBox ID="txtYear" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblAverage" runat="server">Average</asp:Label>
    <asp:TextBox ID="txtAverage" runat="server"></asp:TextBox>
    <h3>Contact Information</h3>
    <hr />
    <asp:Label ID="lblContactFName" runat="server">First Name</asp:Label>
    <asp:Textbox ID="txtContactFName" runat="server"></asp:Textbox><br />
    <asp:Label ID="lblContactLName" runat="server">Last Name</asp:Label>
    <asp:TextBox ID="txtContactLName" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblRelationship" runat="server">Relationship</asp:Label>
    <asp:DropDownList ID="txtRelationship" runat="server">
        <asp:ListItem Value="1">Mother</asp:ListItem>
        <asp:ListItem Value="2">Father</asp:ListItem>
    </asp:DropDownList> <br />
    <asp:Label ID="lblContactAdress" runat="server">Address</asp:Label>
    <asp:TextBox ID="txtContactAddress" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblContactCity" runat="server">City</asp:Label>
    <asp:TextBox ID="txtContactCity" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblContactDepartment" runat="server">State/Department</asp:Label>
    <asp:TextBox ID="txtContactDepartment" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblCountry" runat="server">Country</asp:Label>
    <asp:TextBox ID="txtContactCountry" runat="server"></asp:TextBox><br /> <br />
    <h3>Contact Phone Information</h3>
    <hr />
    <asp:GridView ID="grdContactPhone" runat="server" CssClass="Grid" AutoGenerateColumns="false" EmptyDataText="No Phone Added.">
        <Columns>
            <asp:BoundField DataField="PhoneType" HeaderText="Phone Type" ItemStyle-Width="120" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-Width="120" />
            <asp:BoundField DataField="Extension" HeaderText="Extension" ItemStyle-Width="120" />
            <asp:BoundField DataField="Primary" HeaderText="Primary" ItemStyle-Width="120" />
        </Columns>
    </asp:GridView><br />
    <asp:Label ID="lblContactPhone" runat="server">Phone Number</asp:Label>
    <asp:TextBox ID="txtContactPhone" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblContactPhoneNumber" runat="server">Phone Number</asp:Label>
    <asp:TextBox ID="txtContactPhoneNumber" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblContactExtension" runat="server">Extension</asp:Label>
    <asp:TextBox ID="txtContactExtension" runat="server"></asp:TextBox> <br />
    <asp:CheckBox ID="chkContactPrimaryPhome" runat="server" Text="Primary"></asp:CheckBox> <br />
    <asp:Button ID="btnContactAddtoList" runat="server" Text="Add to List" />
    <asp:Button ID="btnContactCancel" runat="server" Text="Cancel" />
       

</asp:Content>
