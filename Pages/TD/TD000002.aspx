<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="TD000002.aspx.cs" Inherits="Page_TD000002" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="TreeViewFromDB.TreeViewFromDBExampleMaint1"
        PrimaryView="Filter"
        >
		<CallbackCommands>

		</CallbackCommands>
	
		<DataTrees>
			<px:PXTreeDataMember TreeView="Nodes" TreeKeys="NodeID" ></px:PXTreeDataMember></DataTrees></px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXTreeView runat="server" DataSourceID="ds" Height="500px" ID="tree" PopulateOnDemand="True" AllowCollapse="true" ExpandDepth="1" AutoRepaint="true" DataMember="Nodes" ShowRootNode="False" SyncPosition="True">
		<AutoSize Enabled="True" MinHeight="300" ></AutoSize>
		<AutoCallBack ActiveBehavior="true" Target="currentNode" Command="Refresh">
			<Behavior RepaintControlsIDs="form,grid" ></Behavior></AutoCallBack>
		<DataBindings>
			<px:PXTreeItemBinding DataMember="Nodes" TextField="NodeName" ValueField="NodeID" ImageUrlField="Icon" ></px:PXTreeItemBinding></DataBindings>
		<ToolBarItems>
			<px:PXToolBarButton Tooltip="Reload Tree" ImageKey="Refresh">
				<AutoCallBack Target="tree" Command="Refresh" ></AutoCallBack></px:PXToolBarButton></ToolBarItems></px:PXTreeView></asp:Content>

