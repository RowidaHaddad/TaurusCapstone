<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientViewFindings.aspx.cs" Inherits="TaurusCapstone.WebForm23" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .gridview{
            text-align: center;
            font-size: small;
        }
    </style>
    <div class="well">
        <div class="panel panel-default">
            <h2><strong>
                View Findings
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </strong></h2>
            <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"  OnRowCommand="GridView1_RowCommand" HorizontalAlign="Center" Width="805px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField HeaderText="Finding ID" >
                    <HeaderStyle CssClass="gridview" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Finding Name" >
                    <HeaderStyle CssClass="gridview" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Finding Description" >
                    <HeaderStyle CssClass="gridview" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Finding Type" >
                    <HeaderStyle CssClass="gridview" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="More...">
                        <ItemTemplate>
                            <asp:LinkButton ID="downloadFinding" runat="server" OnClick="downloadFinding_Click" CommandName="DownLoadFindings">Download Finding</asp:LinkButton>
                            &nbsp;|
                            <asp:LinkButton ID="addComment" runat="server" OnClick="addComment_Click" CommandName="AddComment">Add Comment</asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle CssClass="gridview" />
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
