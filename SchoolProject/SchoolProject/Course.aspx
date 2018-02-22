<%@ Page Title="Course and Subject" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="SchoolProject.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container mt-3">
		<h3>Add New Subject</h3>
		<hr />

		<div class="form-group row">
			<asp:Label ID="lblSubject" cssClass="col-sm-2 col-form-label" runat="server">Subject Name</asp:Label>
			<div class="col-sm-6">
				<asp:Textbox ID="txtSubject" cssClass="form-control" runat="server"></asp:Textbox>
			</div>
		</div>

		<div class="form-group row">
			<asp:Label ID="lblSubjectCode" cssClass="col-sm-2 col-form-label" runat="server">Subject Code</asp:Label>
			<div class="col-sm-6">
				<asp:Textbox ID="txtSubjectCode" cssClass="form-control" runat="server"></asp:Textbox>
			</div>
		</div>

		<div class="form-group row">
			<asp:Label ID="lblSubjectBeginDate" cssClass="col-sm-2 col-form-label" runat="server"> Effective Begin date</asp:Label>
			<div class="col-sm-6">
				<asp:TextBox ID="txtSubjectBeginDate" cssClass="form-control" runat="server"></asp:TextBox>
			</div>
			<div class="col-sm-2">
				<asp:ImageButton ID="imgSubjectBeginDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgSubjectBeginDate_Click" /><br />
				<asp:Calendar ID="calSubjectBeginDate" runat="server" OnDayRender="calSubjectBeginDate_DayRender" OnSelectionChanged="calSubjectBeginDate_SelectionChanged"></asp:Calendar>
			</div>
		</div>
		
		<div class="form-group row">
			<asp:Label ID="lblSubjectEndDate" cssClass="col-sm-2 col-form-label" runat="server">Effective End Date</asp:Label>
			<div class="col-sm-6">
				<asp:TextBox ID="txtSubjectEndDate" cssClass="form-control" runat="server"></asp:TextBox>
			</div>
			<div class="col-sm-2">
				<asp:ImageButton ID="imgSubjectEndDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgSubjectEndDate_Click" /><br />
				<asp:Calendar ID="calSubjectEndDate" runat="server" OnDayRender="calSubjectEndDate_DayRender" OnSelectionChanged="calSubjectEndDate_SelectionChanged"></asp:Calendar>
			</div>
		</div>
		
		<asp:Button ID="btnSaveSubject" cssClass="btn btn-success" runat="server" Text="Save"/>
		<asp:Button ID="btnResetSubject" cssClass="btn btn-danger" runat="server" Text="Reset" /><br />

		<hr />
		<h3>Add New Courses</h3>
		<hr />
		<div class="form-group row">
			<asp:Label ID="lblSelectSubject" cssClass="col-sm-2 col-form-label" runat="server">Select a Subjet</asp:Label>
			<div class="col-sm-6">
				<asp:DropDownList ID="ddlSelectSubject" cssClass="form-control" runat="server">
					<asp:ListItem>Math</asp:ListItem>
					<asp:ListItem>English</asp:ListItem>
				</asp:DropDownList>
			</div>
		</div>

		<div class="form-group row">
			<asp:Label ID="lblCourseName" cssClass="col-sm-2 col-form-label" runat="server">Course Name</asp:Label>
			<div class="col-sm-6">
				<asp:TextBox ID="txtCourseName" cssClass="form-control" runat="server"></asp:TextBox>
			</div>
		</div>

		<div class="form-group row">
			<asp:Label ID="lblCourseCode" cssClass="col-sm-2 col-form-label" runat="server">Course Code</asp:Label>
			<div class="col-sm-6">
				<asp:TextBox ID="txtCourseCode" cssClass="form-control" runat="server"></asp:TextBox> 
			</div>
		</div>

		<div class="form-group row">
			<asp:Label ID="lblCourseBeginDate" cssClass="col-sm-2 col-form-label" runat="server">Effective Begin Date</asp:Label>
			<div class="col-sm-6">
				<asp:TextBox ID="txtCourseBeginDate" cssClass="form-control" runat="server"></asp:TextBox>
			</div>
			<div class="col-sm-2">
				<asp:ImageButton ID="imgCourseBeginDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgCourseBeginDate_Click" /><br />
				<asp:Calendar ID="calCourseBeginDate" runat="server" OnDayRender="calCourseBeginDate_DayRender" OnSelectionChanged="calCourseBeginDate_SelectionChanged"></asp:Calendar>
			</div>
		</div>

		<div class="form-group row">
			<asp:Label ID="lblCourseEndDate" cssClass="col-sm-2 col-form-label" runat="server">Effective End Date</asp:Label>
			<div class="col-sm-6">
				<asp:TextBox ID="txtCourseEndDate" cssClass="form-control" runat="server"></asp:TextBox> 
			</div>
			<div class="col-sm-2">
				<asp:ImageButton ID="imgCourseEndDate" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png"  runat="server" OnClick="imgCourseEndDate_Click" /><br />
				<asp:Calendar ID="calCourseEndDate" runat="server" OnDayRender="calCourseEndDate_DayRender" OnSelectionChanged="calCourseEndDate_SelectionChanged"></asp:Calendar>
			</div>
		</div>

		<asp:Button ID="btnSaveCourse" cssClass="btn btn-success" runat="server" Text="Save"/>
		<asp:Button ID="btnResetCourse" cssClass="btn btn-danger" runat="server" Text="Reset" /><br />

	</div> <!-- /.container -->

</asp:Content>
