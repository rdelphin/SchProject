<%@ Page Title="General Settings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeneralSettings.aspx.cs" Inherits="SchoolProject.GeneralSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
	<div class="container mt-3">
		<h3>General Settings</h3>
		<hr />
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="general-tab" data-toggle="tab" href="#general" role="tab" aria-controls="general" aria-selected="true">General Settings</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact </a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="trimesters-tab" data-toggle="tab" href="#trimesters" role="tab" aria-controls="trimesters" aria-selected="false">Trimesters</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="grade-tab" data-toggle="tab" href="#grade" role="tab" aria-controls="grade" aria-selected="false">Grade Levels</a>
			</li>
		</ul>
		<div class="row">
			<div class="col col-md-6">			
				<div class="tab-content" id="myTabContent">
				
					<div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
						<h3 class="mt-4">General Settings</h3>
						<hr />
						<div class="form-group">
							<asp:Label ID="lblSchoolName" runat="server">School Name</asp:Label>
							<asp:TextBox ID="txtSchoolName" cssClass="form-control" runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:Label ID="lblEffectiveBeginDate" runat="server">Effective Begin Date</asp:Label>
							<div class="form-inline">
								<asp:TextBox ID="txtEffectiveBeginDate" cssClass="form-control mr-sm-2" runat="server"> </asp:TextBox> 								
								<asp:ImageButton ID="imgEffectiveBeginDate" ImageUrl="~/Resources/calendar.png" Width="25px" Height="25px" runat="server" OnClick="imgEffectiveBeginDate_Click" />
								<asp:Calendar ID="calEffectiveBeginDate" runat="server" OnDayRender="calEffectiveBeginDate_DayRender" OnSelectionChanged="calEffectiveBeginDate_SelectionChanged"></asp:Calendar> 
							</div>
						</div>
						<div class="form-group">
							<asp:Label ID="lblEffectiveEndDate" runat="server">Effective End Date</asp:Label>
							<div class="form-inline">
								<asp:TextBox ID="txtEffectiveEndDate" cssClass="form-control mr-sm-2" runat="server"></asp:TextBox>
								<asp:ImageButton ID="imgEffectiveEndDate" ImageUrl="~/Resources/calendar.png" Width="25px" Height="25px" runat="server" OnClick="imgEffectiveEndDate_Click" />
								<asp:Calendar ID="calEffectiveEndDate" runat="server" OnDayRender="calEffectiveEndDate_DayRender" OnSelectionChanged="calEffectiveEndDate_SelectionChanged"></asp:Calendar> 
							</div>
						</div>
						<div class="form-group">
							<asp:Label ID="lblAttendance" runat="server">Attendance Type</asp:Label>
							<asp:DropDownList ID="ddlAttendance" cssClass="form-control" runat="server">
								<asp:ListItem Value="1" Text ="Daily"></asp:ListItem>
							</asp:DropDownList> 
						</div>
						<div class="form-group">
							<asp:Label ID="lblLogo" runat="server">Upload Logo</asp:Label>
							<asp:FileUpload ID="fupLogo" runat="server" />
						</div>
						<div class="form-group">
							<asp:Label ID="lblSchoolURL" runat="server">School Website</asp:Label>
							<asp:TextBox ID="txtSchoolURL" cssClass="form-control" runat="server"></asp:TextBox> 
						</div>
					</div> <!-- end general tab content -->
	
					<!-- contact tab content -->
					<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">	  
						<h3 class="mt-4">Address</h3>
						<hr />
						<asp:Label ID="lblAddress" runat="server">Address</asp:Label>
						<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox> <br />
						<asp:Label ID="lblCity" runat="server">City</asp:Label>
						<asp:TextBox ID="txtCity" runat="server"></asp:TextBox> <br />
						<asp:Label ID="lblStateDepartment" runat="server">State/Department</asp:Label>
						<asp:TextBox ID="txtStateDepartment" runat="server"></asp:TextBox> <br />
						<asp:Label ID="lblCountry" runat="server">Country</asp:Label>
						<asp:TextBox ID="txtCountry" runat="server"></asp:TextBox> <br />
    
						<h3 class="mt-4">Phone Information</h3>
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
						<h3 class="mt-4">Contact Information</h3>
						<hr />

						<asp:Label ID="lblContactFirstName" runat="server">First Name</asp:Label>
						<asp:TextBox ID="txtContactFirstName" runat="server"></asp:TextBox> <br />
						<asp:Label ID="lblContactLastName" runat="server">Last Name</asp:Label>
						<asp:TextBox ID="txtContactLastName" runat="server"></asp:TextBox><br />
					</div> <!-- end contact tab content -->
	
					<!-- trimesters tab content -->
					<div class="tab-pane fade" id="trimesters" role="tabpanel" aria-labelledby="trimesters-tab">
						<h3 class="mt-4">Trimesters</h3>
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
						<asp:Label ID="Label1" runat="server">Trimester Name</asp:Label>
						<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
						<asp:Label ID="Label2" runat="server">Short Name</asp:Label>
						<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
						<asp:CheckBox ID="CheckBox1" Text="Graded" runat="server" /> <br />
						<asp:CheckBox ID="CheckBox2" Text="Exam" runat="server" /> <br />
						<asp:Label ID="Label3" runat="server">Begin Date</asp:Label>
						<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <br />
						<asp:Label ID="Label4" runat="server">End Date</asp:Label>
						<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
						<asp:Label ID="Label5" runat="server">Grade Posting Begins</asp:Label>
						<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
						<asp:Label ID="Label6" runat="server">Grade Posting Ends</asp:Label>
						<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
						<asp:Button ID="Button1" text="Add to List"  runat="server" OnClick="btnAddtoListTrimester_Click" />
						<asp:Button ID="Button2" Text="Cancel" runat="server" />
					</div> <!-- end trimesters tab content -->
			
					<!-- grade tab content -->
					<div class="tab-pane fade" id="grade" role="tabpanel" aria-labelledby="grade-tab">
						<h3 class="mt-4">Grade Levels</h3>
						<hr />
					</div> <!-- end grade tab content -->
			
				</div> <!-- tab-content -->
			</div> <!-- /.col -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->
</asp:Content>
