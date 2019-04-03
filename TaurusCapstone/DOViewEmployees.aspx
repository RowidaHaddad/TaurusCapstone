<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOViewEmployees.aspx.cs" Inherits="TaurusCapstone.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
       .label{
           font-size: larger;
           font-family: 'Avenir LT Std 65 Medium';
           color: black;
       }
   </style>
    <p class="label">View Employees</p>
    <asp:GridView ID="viewEmployees" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="viewEmployees_RowCommand"  Width="950px" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField HeaderText="Employee Name" />
            <asp:BoundField HeaderText="Job Title" />
            <asp:BoundField HeaderText="Mobile" />
            <asp:BoundField HeaderText="Email" />
            <asp:TemplateField HeaderText="View Profile">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="View">View</asp:LinkButton>
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

</asp:Content>
