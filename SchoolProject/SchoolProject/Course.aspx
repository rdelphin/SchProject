<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="SchoolProject.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Add New Subject</h3>
    <hr />
    <asp:Label ID="lblSubject" runat="server">Subject Name</asp:Label>
    <asp:Textbox ID="txtSubject" runat="server"></asp:Textbox><br />
    <asp:Label ID="lblSubjectCode" runat="server">Subject Code</asp:Label>
    <asp:Textbox ID="txtSubjectCode" runat="server"></asp:Textbox><br />
    <asp:Label ID="lblSubjectBeginDate" runat="server"> Effective Begin date</asp:Label>
    <asp:TextBox ID="txtSubjectBeginDate" runat="server"></asp:TextBox>
    <asp:ImageButton ID="imgSubjectBeginDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgSubjectBeginDate_Click" /><br />
    <asp:Calendar ID="calSubjectBeginDate" runat="server" OnDayRender="calSubjectBeginDate_DayRender" OnSelectionChanged="calSubjectBeginDate_SelectionChanged"></asp:Calendar>
    <asp:Label ID="lblSubjectEndDate" runat="server">Effective End Date</asp:Label>
    <asp:TextBox ID="txtSubjectEndDate" runat="server"></asp:TextBox>
    <asp:ImageButton ID="imgSubjectEndDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgSubjectEndDate_Click" /><br />
    <asp:Calendar ID="calSubjectEndDate" runat="server" OnDayRender="calSubjectEndDate_DayRender" OnSelectionChanged="calSubjectEndDate_SelectionChanged"></asp:Calendar>
    <asp:Button ID="btnSaveSubject" runat="server" Text="Save"/>
    <asp:Button ID="btnResetSubject" runat="server" Text="Reset" /><br />

    <hr />
    <h3>Add New Courses</h3>
    <asp:Label ID="lblSelectSubject" runat="server">Select a Subjet</asp:Label>
    <asp:DropDownList ID="ddlSelectSubject" runat="server">
        <asp:ListItem>Math</asp:ListItem>
        <asp:ListItem>English</asp:ListItem>
    </asp:DropDownList><br />
    <asp:Label ID="lblCourseName" runat="server">Course Name</asp:Label>
    <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblCourseCode" runat="server">Course Code</asp:Label>
    <asp:TextBox ID="txtCourseCode" runat="server"></asp:TextBox> <br />
    <asp:Label ID="lblCourseBeginDate" runat="server">Effective Begin Date</asp:Label>
    <asp:TextBox ID="txtCourseBeginDate" runat="server"></asp:TextBox>
    <asp:ImageButton ID="imgCourseBeginDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgCourseBeginDate_Click" /><br />
    <asp:Calendar ID="calCourseBeginDate" runat="server" OnDayRender="calCourseBeginDate_DayRender" OnSelectionChanged="calCourseBeginDate_SelectionChanged"></asp:Calendar>
    <asp:Label ID="lblCourseEndDate" runat="server">Effective End Date</asp:Label>
    <asp:TextBox ID="txtCourseEndDate" runat="server"></asp:TextBox> 
    <asp:ImageButton ID="imgCourseEndDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png"  runat="server" OnClick="imgCourseEndDate_Click" /><br />
    <asp:Calendar ID="calCourseEndDate" runat="server" OnDayRender="calCourseEndDate_DayRender" OnSelectionChanged="calCourseEndDate_SelectionChanged"></asp:Calendar>
     <asp:Button ID="btnSaveCourse" runat="server" Text="Save"/>
    <asp:Button ID="btnResetCourse" runat="server" Text="Reset" /><br />

</asp:Content>
