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
		<asp:GridView id="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="attendeeID" DataSourceID="AccessDataSource1" HorizontalAlign="Center">
			<Columns>
				<asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
				</asp:CommandField>
				<asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName">
				</asp:BoundField>
				<asp:BoundField DataField="numberAttending" HeaderText="Number Attending" SortExpression="numberAttending">
				</asp:BoundField>
				<asp:BoundField DataField="itemToBring" HeaderText="Item To Bring" SortExpression="itemToBring">
				</asp:BoundField>
				<asp:BoundField DataField="classYear" HeaderText="Class Year" SortExpression="classYear">
				</asp:BoundField>
				<asp:CheckBoxField DataField="setup" HeaderText="setup" SortExpression="setup">
				</asp:CheckBoxField>
			</Columns>
		</asp:GridView>
		<br />
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
		<a href="default.aspx">Go To Insert Form</a><br />
		</div>
</div>
</form>

</body>

</html>
