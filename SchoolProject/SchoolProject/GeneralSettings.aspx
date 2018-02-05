<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeneralSettings.aspx.cs" Inherits="SchoolProject.GeneralSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>General Settings</h3>
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
    <hr />
    <h3>Phone Information</h3>


</asp:Content>
