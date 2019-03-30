<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOViewProjects.aspx.cs" Inherits="TaurusCapstone.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-right: 196px;
        }
        .gridview{
            text-align: center;
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="jumbotron">
        <p style="text-align: center; font-family: Avenir LT Std 45 Medium; font-size: large; ">View Projects</p>
        <asp:GridView ID="viewProjects" runat="server" AutoGenerateColumns="False" BackColor="White" Font-Names="Avenir LT Std 45 Book" ForeColor="Black"  RowStyle-HorizontalAlign="Center" GridLines="None" AllowSorting="True" EmptyDataText="N/A" HorizontalAlign="Center" OnRowCommand="viewProjects_RowCommand" Height="300px" Width="1000px" CellPadding="1">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField HeaderText="Project Name" />
                <asp:BoundField HeaderText="Project Status" />
                <asp:BoundField HeaderText="Project Type" />
                <asp:BoundField DataFormatString="{0:d}" HeaderText="Expected End Date" />
                <asp:BoundField HeaderText="Design Lead Assigned" />
                <asp:TemplateField HeaderText="View Details">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="View">View Details</asp:LinkButton>
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
</asp:Content>
