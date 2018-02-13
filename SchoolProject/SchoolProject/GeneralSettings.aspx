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
			<div class="col col-md-12">			
				<div class="tab-content" id="myTabContent">
				
					<div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
						<h3 class="mt-4">General Settings</h3>
						<hr />
						<div class="form-group row">
							<asp:Label ID="lblSchoolName" class="col-sm-2 col-form-label" runat="server">School Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtSchoolName" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblEffectiveBeginDate" class="col-sm-2 col-form-label" runat="server">Effective Begin Date</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtEffectiveBeginDate" cssClass="form-control" runat="server"> </asp:TextBox>
							</div>
							<div class="col-sm-2">
								<asp:ImageButton ID="imgEffectiveBeginDate" ImageUrl="~/Resources/calendar.png" Width="25px" Height="25px" runat="server" OnClick="imgEffectiveBeginDate_Click" />
								<asp:Calendar ID="calEffectiveBeginDate" runat="server" OnDayRender="calEffectiveBeginDate_DayRender" OnSelectionChanged="calEffectiveBeginDate_SelectionChanged"></asp:Calendar> 
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblEffectiveEndDate" class="col-sm-2 col-form-label" runat="server">Effective End Date</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtEffectiveEndDate" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
							<div class="col-sm-2">
								<asp:ImageButton ID="imgEffectiveEndDate" ImageUrl="~/Resources/calendar.png" Width="25px" Height="25px" runat="server" OnClick="imgEffectiveEndDate_Click" />
								<asp:Calendar ID="calEffectiveEndDate" runat="server" OnDayRender="calEffectiveEndDate_DayRender" OnSelectionChanged="calEffectiveEndDate_SelectionChanged"></asp:Calendar> 
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblAttendance" class="col-sm-2 col-form-label" runat="server">Attendance Type</asp:Label>
							<div class="col-sm-6">
								<asp:DropDownList ID="ddlAttendance" cssClass="form-control" runat="server">
									<asp:ListItem Value="1" Text ="Daily"></asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblLogo" class="col-sm-2 col-form-label" runat="server">Upload Logo</asp:Label>						
							<div class="col-sm-6">
								<asp:FileUpload ID="fupLogo" runat="server" />
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblSchoolURL" class="col-sm-2 col-form-label" runat="server">School Website</asp:Label>						
							<div class="col-sm-6">
								<asp:TextBox ID="txtSchoolURL" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>
					</div> <!-- end general tab content -->
	
					<!-- contact tab content -->
					<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">	  
						<h3 class="mt-4">Address</h3>
						<hr />
						<div class="form-group row">
							<asp:Label ID="lblAddress" class="col-sm-2 col-form-label" runat="server">Address</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtAddress" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblCity" class="col-sm-2 col-form-label" runat="server">City</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtCity" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblStateDepartment" class="col-sm-2 col-form-label" runat="server">State/Department</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStateDepartment" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblCountry" class="col-sm-2 col-form-label" runat="server">Country</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtCountry" cssClass="form-control" runat="server"></asp:TextBox> <br />
							</div>
						</div>

						<h3 class="mt-4">Phone Information</h3>
						<hr />
						<asp:GridView ID="GridView1" runat="server" CssClass="Grid alert alert-warning" AutoGenerateColumns="false" EmptyDataText="No Record has been added">
							<Columns>
								<asp:BoundField DataField="PhoneType" HeaderText="Phone Type" ItemStyle-Width="120" />
								<asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-Width="120" />
								<asp:BoundField DataField="Extension" HeaderText="Extension" ItemStyle-Width="120" />
								<asp:BoundField DataField="Primary" HeaderText="Primary" ItemStyle-Width="120" />
							</Columns>
						</asp:GridView>  <br />
                        
						<div class="form-group row">
							<asp:Label ID="lblPhoneType" class="col-sm-2 col-form-label" runat="server">Phone Type</asp:Label>
							<div class="col-sm-6">
								<asp:DropDownList ID="ddlPhoneType" cssClass="form-control" runat="server">
									<asp:ListItem>Office</asp:ListItem>
									<asp:ListItem>Cell Phone</asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblPhoneNumber" class="col-sm-2 col-form-label" runat="server">Phone Number</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtPhoneNumber" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblExtension" class="col-sm-2 col-form-label" runat="server">Extension</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtExtension" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="form-group">
							<asp:CheckBox ID="chkPrimary" runat="server" Text="Primary Phone #" />
						</div>
						<asp:Button ID="btnAddToList" cssClass="btn btn-success" Text="Add to List" runat="server" OnClick="btnAddToList_Click" />
						<asp:Button ID="btnCancel" cssClass="btn btn-danger" Text="Cancel" runat="server" /> <br />
						
						<h3 class="mt-4">Contact Information</h3>
						<hr />
						<div class="form-group row">
							<asp:Label ID="lblContactFirstName" class="col-sm-2 col-form-label" runat="server">First Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactFirstName" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<div class="form-group row">
							<asp:Label ID="lblContactLastName" class="col-sm-2 col-form-label" runat="server">Last Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactLastName" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
					</div> <!-- end contact tab content -->
	
					<!-- trimesters tab content -->
					<div class="tab-pane fade" id="trimesters" role="tabpanel" aria-labelledby="trimesters-tab">
						<h3 class="mt-4">Trimesters</h3>
						<hr />
						<asp:GridView ID="Gridview2" runat="server" CssClass="Grid alert alert-warning" AutoGenerateColumns="false" EmptyDataText="No Records has been added.">
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

						<div class="form-group row">
							<asp:Label ID="Label1" class="col-sm-2 col-form-label" runat="server">Trimester Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="TextBox1" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="Label2" class="col-sm-2 col-form-label" runat="server">Short Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="TextBox2" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-check form-check-inline">
							<asp:CheckBox ID="CheckBox1" cssClass="form-check-input" Text="Graded" runat="server" />
							<asp:CheckBox ID="CheckBox2" Text="Exam" runat="server" />
						</div>

						<div class="form-group row">
							<asp:Label ID="Label3" class="col-sm-2 col-form-label" runat="server">Begin Date</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="TextBox3" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="Label4" class="col-sm-2 col-form-label" runat="server">End Date</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="TextBox4" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="Label5" class="col-sm-2 col-form-label" runat="server">Grade Posting Begins</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="TextBox5" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
												
						<div class="form-group row">
							<asp:Label ID="Label6" class="col-sm-2 col-form-label" runat="server">Grade Posting Ends</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="TextBox6" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
						<asp:Button ID="Button1" cssClass="btn btn-success" text="Add to List"  runat="server" OnClick="btnAddtoListTrimester_Click" />
						<asp:Button ID="Button2" cssClass="btn btn-danger" Text="Cancel" runat="server" />
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
