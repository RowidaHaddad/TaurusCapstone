<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientPendigProjects.aspx.cs" Inherits="TaurusCapstone.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="ProjectName" HeaderText="Project Name" ReadOnly="True" SortExpression="ProjectName" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (ProjectName, DLAssignments)" TableName="Projects">
    </asp:LinqDataSource>
</asp:Content>
