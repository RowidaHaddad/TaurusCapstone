<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewClients.aspx.cs" Inherits="TaurusCapstone.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

  
    <div class="well">
    <ul class="nav nav-tabs">
  <li><a href="~/AdminViewClients.aspx" data-toggle="tab" runat="server">View Clients</a></li>
  <li><a href="~/AdminAddClient.aspx" data-toggle="tab" runat="server">Add Clients</a></li>
</ul>
    <div class="tab-pane fade active in" id="viewClients">
  </div>
    <div class="tab-pane fade active in" id="addClient"> 
  </div>

    <div class="text-center">

    <asp:GridView ID="gridviewClients" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="LinqDataSource1" ForeColor="Black" GridLines="Vertical" Height="218px" Width="1040px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ClientName" HeaderText="Client Name" ReadOnly="True" SortExpression="ClientName" />
            <asp:BoundField DataField="ClientMobileNumber" HeaderText="Client Mobile Number" ReadOnly="True" SortExpression="ClientMobileNumber" />
            <asp:BoundField DataField="ClientNumber" HeaderText="Company Number" ReadOnly="True" SortExpression="ClientNumber" />
            <asp:BoundField DataField="ClientEmail" HeaderText="Client Email" ReadOnly="True" SortExpression="ClientEmail" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    </div>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (ClientName, ClientMobileNumber, ClientNumber, ClientEmail, Projects)" TableName="Clients">
    </asp:LinqDataSource>
        </div>
</asp:Content>
