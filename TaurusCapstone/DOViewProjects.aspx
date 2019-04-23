<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOViewProjects.aspx.cs" Inherits="TaurusCapstone.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gridview{
            text-align: center;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="jumbotron">
        <p style="text-align: center; font-family: Avenir LT Std 45 Medium; font-size: large; ">View Projects</p>
        <asp:GridView ID="viewProjects" runat="server" AutoGenerateColumns="False" BackColor="White" Font-Names="Avenir LT Std 45 Book" ForeColor="Black"  RowStyle-HorizontalAlign="Center" GridLines="None" AllowSorting="True" EmptyDataText="N/A" HorizontalAlign="Center" OnRowCommand="viewProjects_RowCommand" Height="30px" Width="1000px" CellPadding="1">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField HeaderText="Project Name" >
                <HeaderStyle CssClass="gridview" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Project Status" >
                <HeaderStyle CssClass="gridview" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Project Type" >
                <HeaderStyle CssClass="gridview" />
                </asp:BoundField>
                <asp:BoundField DataFormatString="{0:d}" HeaderText="Expected End Date" >
                <HeaderStyle CssClass="gridview" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Design Lead Assigned" >
                <HeaderStyle CssClass="gridview" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="More">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="ViewProposal">View Proposal</asp:LinkButton>
                        &nbsp;|
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="ViewDetails">View Details</asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle CssClass="gridview" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

<RowStyle HorizontalAlign="Center"></RowStyle>

            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

    </div>
</asp:Content>
