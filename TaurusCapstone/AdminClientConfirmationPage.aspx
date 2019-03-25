<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminClientConfirmationPage.aspx.cs" Inherits="TaurusCapstone.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<style>
    .jumbotron{
        text-align:center;
    }
</style>
    <div class="jumbotron">
        <h1>
            Client is added successfully!
        </h1>
        <br />
        <button type="submit" id="addClient" runat="server" class="btn btn-default" onserverclick="addClientButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add Another Client</button>
        <button type="submit" id="addEmployee" runat="server" class="btn btn-default" onserverclick="addEmployeeButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add Another Employee</button>
    </div>

</asp:Content>
