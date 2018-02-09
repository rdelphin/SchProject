<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="SchoolProject.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .img-fluid {
            height: 185px;
            width: 438px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Dashboard</h3>
   
        
    <asp:Button ID="btnSetup" runat="server" Text="Setup" Height="109" Width="109" OnClick="btnSetup_Click" />
    <asp:Button ID="btnStudent" runat="server" Text="Student" Height="109" width="109" />
    <asp:Button ID="btnAttendance" runat="server" Text="Attendance" Height="109" Width="109" />
    <asp:Button ID="btnExam" runat="server" Text="Examination" Height="109" Width="109" />
    <br /> <br />
    <asp:Button ID="btnHR" runat="server" Text="Human Resources" Height="109" Width="109" />
    <asp:Button ID="btnSettings" runat="server" Text="Settings" Height="109" Width="109" />
    <asp:Button ID="btnUsers" runat="server" Text ="Users" Height="109" Width="109" />
    <asp:Button ID="btnHelp" runat="server" Text="Help" Height="109" width="109" />

        <!-- <asp:Button ID="myButton" Style="background-image: url(/Resources/twitter.png);
        background-color: #B8E62E; cursor: auto; background-repeat: no-repeat; background-position: top; 
        padding-top: 45px;" runat="server" Height="113px" BorderStyle="None" Text="Search"
        Width="116px" /> -->
        
   
    <p>&nbsp;</p>
</asp:Content>
