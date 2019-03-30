<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOProjectCreationConfirmation.aspx.cs" Inherits="TaurusCapstone.WebForm31" %>
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
            Project is created successfully!
        </h1>
        <button type="submit" id="createProject" runat="server" class="btn btn-default" onserverclick="createProjectButton_ServerClick" style="background-color: black; color:white; text-align: right" >Create Another Project</button>
        <button type="submit" id="createCP" runat="server" class="btn btn-default" onserverclick="createCPButton_ServerClick" style="background-color: black; color:white; text-align: right" >Create a Cost Proposal</button>
    </div>
</asp:Content>
