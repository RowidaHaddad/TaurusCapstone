<%@ Page Title="" Language="C#" MasterPageFile="~/DL.Master" AutoEventWireup="true" CodeBehind="DLViewProjects.aspx.cs" Inherits="TaurusCapstone.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <asp:GridView ID="viewProjects" runat="server" Width="1020px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" OnRowCommand="viewProjects_RowCommand">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField HeaderText="Project Name" />
            <asp:BoundField HeaderText="Status" />
            <asp:BoundField HeaderText="Project Type" />
            <asp:BoundField HeaderText="Expected End Date" />
            <asp:BoundField HeaderText="Status" />
            <asp:BoundField HeaderText="Client Name" />
            <asp:TemplateField HeaderText="View Details">
                <ItemTemplate>
                    <asp:LinkButton ID="viewDetails" runat="server">View</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
    <br />
</asp:Content>
