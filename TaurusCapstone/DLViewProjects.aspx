<%@ Page Title="" Language="C#" MasterPageFile="~/DL.Master" AutoEventWireup="true" CodeBehind="DLViewProjects.aspx.cs" Inherits="TaurusCapstone.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            color: #158CBA;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <div class="well">
        <div class="text-center">
    <asp:GridView ID="viewProjects" runat="server" Width="1020px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" OnRowCommand="viewProjects_RowCommand">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField HeaderText="Project Name" />
            <asp:BoundField HeaderText="Status" />
            <asp:BoundField HeaderText="Project Type" />
            <asp:BoundField HeaderText="Expected End Date" DataFormatString="{0:d}" />
            <asp:BoundField HeaderText="Status" />
            <asp:BoundField HeaderText="Client Name" />
            <asp:TemplateField HeaderText="More">
                <ItemTemplate>
                    <asp:LinkButton ID="viewDetails" runat="server" CommandName="View">View Details</asp:LinkButton>
                    &nbsp;|
                    <asp:LinkButton ID="LinkButton1" runat="server">Create Project Charter</asp:LinkButton>
                    &nbsp;| <a href="javascript:__doPostBack('ctl00$LinkButton2','')"><span class="auto-style5">Submit Findings</span></a> | <a href="javascript:__doPostBack('ctl00$LinkButton2','')"><span class="auto-style5">Close Project</span></a>
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
        </div>
    <br />
        </div>
</asp:Content>
