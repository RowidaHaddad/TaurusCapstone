<%@ Page Title="" Language="C#" MasterPageFile="~/DL.Master" AutoEventWireup="true" CodeBehind="DLViewProjects.aspx.cs" Inherits="TaurusCapstone.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <style type="text/css">
        .gridview{
            text-align: center;
            font-size: small;
        }
            .auto-style5 {
                margin-left: 220px;
            }
    </style>
    <div class="well">
        <div>
            <h2 style="font-family: Avenir LT Std 65 Medium; text-align:center;"><strong>
                View Projects
                </strong></h2>
        </div>
        <div class="text-center">
    <asp:GridView ID="viewProjects" runat="server" Width="1099px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" OnRowCommand="viewProjects_RowCommand" CssClass="auto-style5">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField HeaderText="Project Name" >
            <HeaderStyle CssClass="gridview" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Status" >
            <HeaderStyle CssClass="gridview" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Project Type" >
            <HeaderStyle CssClass="gridview" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Expected End Date" DataFormatString="{0:d}" >
            <HeaderStyle CssClass="gridview" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Status" >
            <HeaderStyle CssClass="gridview" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Client Name" >
            <HeaderStyle CssClass="gridview" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="More">
                <ItemTemplate>
                    <asp:LinkButton ID="viewDetails" runat="server" CommandName="View">View Details</asp:LinkButton>
                    &nbsp;|
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="CreateProjectCharter">Create Project Charter</asp:LinkButton>
                    &nbsp;| 
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="SubmitFindings">Submit Findings</asp:LinkButton>
                    &nbsp;|
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="CloseProject">Close Project</asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle CssClass="gridview" />
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
