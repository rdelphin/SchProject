<%@ Page Title="Admission" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="SchoolProject.Admission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container mt-3">
		<h3>Admission </h3>
		<hr />

		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="personal-tab" data-toggle="tab" href="#personal" role="tab" aria-controls="personal" aria-selected="true">Personal Info</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="address_phone-tab" data-toggle="tab" href="#address_phone" role="tab" aria-controls="address_phone" aria-selected="false">Address & Phone</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="prev_ed-tab" data-toggle="tab" href="#prev_ed" role="tab" aria-controls="prev_ed" aria-selected="false">Previous Education </a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact Info</a>
			</li>			
		</ul>

		<div class="row">
			<div class="col col-md-12">			
				<div class="tab-content" id="myTabContent">
				
					<div class="tab-pane fade show active" id="personal" role="tabpanel" aria-labelledby="personal-tab">
						<h3 class="mt-4">Personal information</h3>
						<div class="form-group row">
							<asp:Label ID="lblStudentFName" cssClass="col-sm-2 col-form-label" runat="server">First Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentFname" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblStudentLName" cssClass="col-sm-2 col-form-label" runat="server">Last Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentLName" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
	
						<div class="form-group row">
							<asp:Label ID="lblStudentDateOfBirth" class="col-sm-2 col-form-label" runat="server">Date of Birth</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentDateOfBirth" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
							<div class="col-sm-2">
								<asp:ImageButton ID="imgDateOfBirth" Width="25px" Height="25px" ImageUrl="~/Resources/calendar.png" runat="server" OnClick="imgDateOfBirth_Click" />
								<asp:Calendar ID="calDateOfBirth" runat="server" OnDayRender="calDateOfBirth_DayRender" OnSelectionChanged="calDateOfBirth_SelectionChanged"></asp:Calendar>
							</div>
						</div>				
		
						<div class="form-group row">
							<asp:Label ID="lblGender" class="col-sm-2 col-form-label" runat="server">Gender</asp:Label>
							<div class="col-sm-6 form-check form-check-inline">
								<asp:RadioButton ID="rdoMale" CssClass="form-check-input" GroupName="Gender" Text=" Male" runat="server" AutoPostBack="true" />
								<asp:RadioButton ID="rdoFemale" CssClass="form-check-input" GroupName="Gender" Text=" Female" runat="server" AutoPostBack="true" /> 
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblPlaceOfBirth" class="col-sm-2 col-form-label" runat="server">Place of Birth</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtPlaceOfBirth" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblReligion" class="col-sm-2 col-form-label" runat="server">Religion</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtReligion" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<asp:FileUpload ID="StudentImage" runat="server" />
					</div> <!-- /. personal tab-pane -->

					<div class="tab-pane fade" id="address_phone" role="tabpanel" aria-labelledby="address_phone-tab">
						<h3 class="mt-4">Address Information</h3>
						<hr />
	
						<div class="form-group row">
							<asp:Label ID="lblStudentAddress" cssClass="col-sm-2 col-form-label" runat="server">Address</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentAddress" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblStudentCity" cssClass="col-sm-2 col-form-label" runat="server">City</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentCity" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblStudentDepartment" cssClass="col-sm-2 col-form-label" runat="server">State/Department</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentDepartment" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblStudentCountry" cssClass="col-sm-2 col-form-label" runat="server">Country</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentCountry" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>

						<h3>Phone Information</h3>
						<hr />
						<asp:GridView ID="grdStudentPhone" runat="server" CssClass="Grid" AutoGenerateColumns="false" EmptyDataText="No Phone Added">
							<Columns>
								<asp:BoundField DataField="Phonetype" HeaderText="Phone Type" ItemStyle-Width="120" />
								<asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-Width="120" />
								<asp:BoundField DataField="Extension" HeaderText="Extension" ItemStyle-Width="120" />
								<asp:BoundField DataField="Primary" HeaderText="Primary" ItemStyle-Width="120" />
							</Columns>
						</asp:GridView>

						<div class="form-group row">
							<asp:Label ID="lblPhoneType" cssClass="col-sm-2 col-form-label" runat="server">Phone Type</asp:Label>
							<div class="col-sm-6">
								<asp:DropDownList ID="ddlPhoneType" cssClass="form-control" runat="server">
									<asp:ListItem Value="1">Home</asp:ListItem>
									<asp:ListItem Value="2">Cell Phone</asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblStudentPhoneNumber" cssClass="col-sm-2 col-form-label" runat="server">Phone Number</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentPhoneNumber" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">	
							<asp:Label ID="lblExtension" cssClass="col-sm-2 col-form-label" runat="server">Extension</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtStudentExtension" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:CheckBox ID="txtStudentPrimaryPhone"  runat="server" Text="Primary"> </asp:CheckBox> 
						</div>
			
						<asp:Button ID="btnAddToList" cssClass="btn btn-success" Text="Add to List" runat="server" />
						<asp:Button ID="btnCancel" cssClass="btn btn-danger" Text="Cancel" runat="server" /> 
					</div> <!-- /. address-phone tab-pane -->

					<div class="tab-pane fade" id="prev_ed" role="tabpanel" aria-labelledby="prev_ed-tab">
						<h3 class="mt-4">Previous Education</h3>
						<hr />
		
						<div class="form-group row">	
							<asp:Label ID="lblSchoolName" cssClass="col-sm-2 col-form-label" runat="server">School Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtSchoolName" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblGrade" cssClass="col-sm-2 col-form-label" runat="server">Grade</asp:Label>
							<div class="col-sm-6">
								<asp:DropDownList ID="chkGrade" cssClass="form-control" runat="server">
									<asp:ListItem Value="1">6e Annee</asp:ListItem>
									<asp:ListItem Value="2">7e Annee</asp:ListItem>
								</asp:DropDownList>
							</div>
						</div>


						<div class="form-group row">
							<asp:Label ID="lblYear" cssClass="col-sm-2 col-form-label" runat="server">Year</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtYear" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
	
						<div class="form-group row">
							<asp:Label ID="lblAverage" cssClass="col-sm-2 col-form-label" runat="server">Average</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtAverage" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
					</div> <!-- /.previous ed tab-pane -->

					<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
						<h3 class="mt-4">Contact Information</h3>
						<hr />

						<div class="form-group row">
							<asp:Label ID="lblContactFName" cssClass="col-sm-2 col-form-label" runat="server">First Name</asp:Label>
							<div class="col-sm-6">
								<asp:Textbox ID="txtContactFName" cssClass="form-control" runat="server"></asp:Textbox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblContactLName" cssClass="col-sm-2 col-form-label" runat="server">Last Name</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactLName" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblRelationship" cssClass="col-sm-2 col-form-label" runat="server">Relationship</asp:Label>
							<div class="col-sm-6">
								<asp:DropDownList ID="txtRelationship" cssClass="form-control" runat="server">
									<asp:ListItem Value="1">Mother</asp:ListItem>
									<asp:ListItem Value="2">Father</asp:ListItem>
								</asp:DropDownList> 
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblContactAdress" cssClass="col-sm-2 col-form-label" runat="server">Address</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactAddress" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblContactCity" cssClass="col-sm-2 col-form-label" runat="server">City</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactCity" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblContactDepartment" cssClass="col-sm-2 col-form-label" runat="server">State/Department</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactDepartment" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>
		
						<div class="form-group row">
							<asp:Label ID="lblCountry" cssClass="col-sm-2 col-form-label" runat="server">Country</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactCountry" cssClass="form-control" runat="server"></asp:TextBox> 
							</div>
						</div>

						<h3>Contact Phone Information</h3>
						<hr />
						<asp:GridView ID="grdContactPhone" runat="server" CssClass="Grid" AutoGenerateColumns="false" EmptyDataText="No Phone Added.">
							<Columns>
								<asp:BoundField DataField="PhoneType" HeaderText="Phone Type" ItemStyle-Width="120" />
								<asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-Width="120" />
								<asp:BoundField DataField="Extension" HeaderText="Extension" ItemStyle-Width="120" />
								<asp:BoundField DataField="Primary" HeaderText="Primary" ItemStyle-Width="120" />
							</Columns>
						</asp:GridView>

						<div class="form-group row">
							<asp:Label ID="lblContactPhone" cssClass="col-sm-2 col-form-label" runat="server">Phone Number</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactPhone" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblContactPhoneNumber" cssClass="col-sm-2 col-form-label" runat="server">Phone Number</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactPhoneNumber" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>

						<div class="form-group row">
							<asp:Label ID="lblContactExtension" cssClass="col-sm-2 col-form-label" runat="server">Extension</asp:Label>
							<div class="col-sm-6">
								<asp:TextBox ID="txtContactExtension" cssClass="form-control" runat="server"></asp:TextBox>
							</div>
						</div>
		
						<div class="form-group row">
							<asp:CheckBox ID="chkContactPrimaryPhome" runat="server" Text="Primary"></asp:CheckBox> 
						</div>

						<asp:Button ID="btnContactAddtoList" cssClass="btn btn-success" runat="server" Text="Add to List" />
						<asp:Button ID="btnContactCancel" cssClass="btn btn-danger" runat="server" Text="Cancel" />
					</div> <!-- /.contact tab-pane -->
				</div> <!-- /.tab-content -->
			</div> <!-- /.col -->
		</div> <!-- /.row -->
       
	</div> <!-- /.container -->
</asp:Content>
