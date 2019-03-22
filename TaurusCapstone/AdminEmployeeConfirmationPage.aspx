<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEmployeeConfirmationPage.aspx.cs" Inherits="TaurusCapstone.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="jumbotron">
        <h1>
            Employee is added successfully!
        </h1>
        <button type="submit" id="addClient" runat="server" class="btn btn-default" onserverclick="addClientButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add Another Client</button>
        <button type="submit" id="addEmployee" runat="server" class="btn btn-default" onserverclick="addEmployeeButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add Another Employee</button>
    </div>

</asp:Content>
