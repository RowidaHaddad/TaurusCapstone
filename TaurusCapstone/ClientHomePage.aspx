<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientHomePage.aspx.cs" Inherits="TaurusCapstone.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <style>
 .jumbotron {
     text-align: center;
 }
 .label{
     font-family: 'Trebuchet MS';
     color: black;
     font-size: x-large;
 }
</style>

    <div class="jumbotron">
        <asp:Label class= "label" ID="Label1" runat="server" Text="Welcome, "></asp:Label><asp:Label class="label" ID="userName" runat="server" Text=""></asp:Label>
        <asp:Label CssClass="label" ID="Label2" runat="server" Text="!"></asp:Label><p>Quick actions:</p>
<button type="submit" id="viewProjects" runat="server" class="btn btn-default" onserverclick="viewProjectsButton_ServerClick" style="background-color: black; color:white; text-align: right" >View Projects</button>
<button type="submit" id="viewCP" runat="server" class="btn btn-default" onserverclick="viewCPButton_ServerClick" style="background-color: black; color:white; text-align: right" >View Cost Proposals</button>


</div>
</asp:Content>
