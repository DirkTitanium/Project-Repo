<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Army-Navy BBQ Form</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<form id="form1" runat="server">
<div id="wrapper">
	<div id="header">Army-Navy Game 2014
	</div>
	<div id="content">13 December 2014 at Baltimore's M&amp;T Bank Stadium
	<br />
		<br />
		<asp:FormView id="FormView1" runat="server" DataKeyNames="attendeeID" DataSourceID="AccessDataSource1" DefaultMode="Insert" Font-Size="Large" HorizontalAlign="Center">
			<EditItemTemplate>
				attendeeID:
				<asp:Label id="attendeeIDLabel1" runat="server" Text='<%# Eval("attendeeID") %>' />
				<br />
				lastName:
				<asp:TextBox id="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
				<br />
				numberAttending:
				<asp:TextBox id="numberAttendingTextBox" runat="server" Text='<%# Bind("numberAttending") %>' />
				<br />
				itemToBring:
				<asp:TextBox id="itemToBringTextBox" runat="server" Text='<%# Bind("itemToBring") %>' />
				<br />
				classYear:
				<asp:TextBox id="classYearTextBox" runat="server" Text='<%# Bind("classYear") %>' />
				<br />
				setup:
				<asp:CheckBox id="setupCheckBox" runat="server" Checked='<%# Bind("setup") %>' />
				<br />
				<asp:LinkButton id="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
				&nbsp;<asp:LinkButton id="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
			</EditItemTemplate>
			<InsertItemTemplate>
				Last Name:
				<asp:TextBox id="lastNameTextBox" runat="server" Columns="20" MaxLength="20" Text='<%# Bind("lastName") %>' />
				<br />
				<br />
				Number Attending (use numerals):
				<asp:TextBox id="numberAttendingTextBox" runat="server" Columns="2" MaxLength="2" Text='<%# Bind("numberAttending") %>' />
				<br />
				<br />
				Item To Bring (Meat, Side, Salad or Dessert):
				<asp:TextBox id="itemToBringTextBox" runat="server" Columns="7" MaxLength="7" Text='<%# Bind("itemToBring") %>' />
				<br />
				<br />
				Class Year (4 digits):
				<asp:TextBox id="classYearTextBox" runat="server" Columns="4" MaxLength="4" Text='<%# Bind("classYear") %>' />
				<br />
				<br />
				Click to volunteer for setup:<asp:CheckBox id="setupCheckBox" runat="server" Checked='<%# Bind("setup") %>' />
				<br />
				<br />
				<asp:LinkButton id="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
				&nbsp;<asp:LinkButton id="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
			</InsertItemTemplate>
			<InsertRowStyle Font-Size="Large" HorizontalAlign="Left" />
			<ItemTemplate>
				attendeeID:
				<asp:Label id="attendeeIDLabel" runat="server" Text='<%# Eval("attendeeID") %>' />
				<br />
				lastName:
				<asp:Label id="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
				<br />
				numberAttending:
				<asp:Label id="numberAttendingLabel" runat="server" Text='<%# Bind("numberAttending") %>' />
				<br />
				itemToBring:
				<asp:Label id="itemToBringLabel" runat="server" Text='<%# Bind("itemToBring") %>' />
				<br />
				classYear:
				<asp:Label id="classYearLabel" runat="server" Text='<%# Bind("classYear") %>' />
				<br />
				setup:
				<asp:CheckBox id="setupCheckBox" runat="server" Checked='<%# Bind("setup") %>' Enabled="false" />
				<br />
				<asp:LinkButton id="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
				&nbsp;<asp:LinkButton id="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
				&nbsp;<asp:LinkButton id="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
			</ItemTemplate>
		</asp:FormView>
		<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="ice1.mdb" DeleteCommand="DELETE FROM [Picnic] WHERE [attendeeID] = ?" InsertCommand="INSERT INTO [Picnic] ([lastName], [numberAttending], [itemToBring], [classYear], [setup]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Picnic]" UpdateCommand="UPDATE [Picnic] SET [lastName] = ?, [numberAttending] = ?, [itemToBring] = ?, [classYear] = ?, [setup] = ? WHERE [attendeeID] = ?">
			<DeleteParameters>
				<asp:Parameter Name="attendeeID" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="lastName" Type="String" />
				<asp:Parameter Name="numberAttending" Type="Byte" />
				<asp:Parameter Name="itemToBring" Type="String" />
				<asp:Parameter Name="classYear" Type="String" />
				<asp:Parameter Name="setup" Type="Boolean" />
			</InsertParameters>
			<UpdateParameters>
				<asp:Parameter Name="lastName" Type="String" />
				<asp:Parameter Name="numberAttending" Type="Byte" />
				<asp:Parameter Name="itemToBring" Type="String" />
				<asp:Parameter Name="classYear" Type="String" />
				<asp:Parameter Name="setup" Type="Boolean" />
				<asp:Parameter Name="attendeeID" Type="Int32" />
			</UpdateParameters>
		</asp:AccessDataSource>
		<br />
		<br />
		<a href="report.aspx">Go To Report</a><br />
		<br />
	</div>
</div>
</form>

</body>

</html>
