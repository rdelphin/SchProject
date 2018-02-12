<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="SchoolProject.DashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1 class="mt-5 mb-4">School Dashboard</h1>

		<!-- ----- first row ----- -->
        <div class="row mb-2">								
			<div class="col-6 col-md-3">
				<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnAdmission" cssClass="img-fluid image" runat="server" ImageUrl="images/admission.png" />
					</div>
					<h5 class="icon-name">Admission</h5>
				</div>
			</div>
			<div class="col-6 col-md-3">
				<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnStudentDetails" cssClass="img-fluid image" runat="server" ImageUrl="images/details.png" />
					</div>
					<h5 class="icon-name">Student Details</h5>
				</div>
			</div>
			<div class="col-6 col-md-3">
				<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnAttendance" cssClass="img-fluid image" runat="server"  ImageUrl="images/attendance.png"/>
					</div>
					<h5 class="icon-name">Attendance</h5>
				</div>
			</div>
			<div class="col-6 col-md-3">
				<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnExam" cssClass="img-fluid image" runat="server" ImageUrl="images/exam.png" />
					</div>
					<h5 class="icon-name">Examination</h5>
				</div>
			</div>
		</div> <!-- /.first row -->

		<!-- ----- second row ----- -->
		<div class="row mb-2">
			<div class="col-6 col-md-3">
				<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnHR" cssClass="img-fluid image" runat="server" ImageUrl="images/hr.png" />
					</div>
					<h5 class="icon-name">Human Resources</h5>
				</div>
			</div>
			<div class="col-6 col-md-3">
				<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnSettings" cssClass="img-fluid image" runat="server" ImageUrl="images/settings.png" OnClick="btnSettings_Click" />
					</div>
					<h5 class="icon-name">Settings</h5>
				</div>
			</div>
			<div class="col-6 col-md-3">
					<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnUsers" cssClass="img-fluid image" runat="server" ImageUrl="images/users.png" />
					</div>
					<h5 class="icon-name">Users</h5>
				</div>
			</div>				
			<div class="col-6 col-md-3">
				<div class="dash-box w-100">
					<div class="icon">
						<asp:ImageButton ID="btnHelp" cssClass="img-fluid image" runat="server" ImageUrl="images/help.png" />
					</div>
					<h5 class="icon-name">Help</h5>
				</div>
			</div>
		</div>	<!-- /.row -->				           
    </div> <!-- /.container -->
</asp:Content>
