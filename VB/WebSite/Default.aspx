<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ModalLoadingPanel._Default" %>



<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxLoadingPanel" tagprefix="dxlp" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>

	</div>
	<dxwgv:aspxgridview ID="ASPxGridView1" runat="server" 
		AutoGenerateColumns="False" DataSourceID="AccessDataSource1" 
		KeyFieldName="CategoryID">
		<settingsloadingpanel Mode="Disabled" />
		<clientsideevents BeginCallback="function(s, e) {
	loadingPanel.Show();
}" EndCallback="function(s, e) {
	loadingPanel.Hide();
}" />
		<columns>
			<dxwgv:gridviewdatatextcolumn FieldName="CategoryID" ReadOnly="True" 
				VisibleIndex="0">
				<editformsettings Visible="False" />
			</dxwgv:gridviewdatatextcolumn>
			<dxwgv:gridviewdatatextcolumn FieldName="CategoryName" VisibleIndex="1">
			</dxwgv:gridviewdatatextcolumn>
			<dxwgv:gridviewdatatextcolumn FieldName="Description" VisibleIndex="2">
			</dxwgv:gridviewdatatextcolumn>
		</columns>
	</dxwgv:aspxgridview>
	<asp:accessdatasource ID="AccessDataSource1" runat="server" 
		DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Categories]">
	</asp:accessdatasource>
	<dxlp:aspxloadingpanel ID="ASPxLoadingPanel1" runat="server" 
		ClientInstanceName="loadingPanel" Modal="True">
	</dxlp:aspxloadingpanel>
	</form>
</body>
</html>

