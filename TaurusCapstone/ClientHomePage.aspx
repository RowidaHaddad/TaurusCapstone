<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientHomePage.aspx.cs" Inherits="TaurusCapstone.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <style>
 .jumbotron {
     text-align: center;
 }
</style>

    <div class="jumbotron">
  <h1>Welcome back, <asp:Label ID="userName" runat="server" Text=""></asp:Label>!</h1>
       <p>Quick actions:</p>
<button type="submit" id="viewProjects" runat="server" class="btn btn-default" onserverclick="viewProjectsButton_ServerClick" style="background-color: black; color:white; text-align: right" >View Projects</button>
<button type="submit" id="viewCP" runat="server" class="btn btn-default" onserverclick="viewCPButton_ServerClick" style="background-color: black; color:white; text-align: right" >View Cost Proposals</button>


</div>
</asp:Content>
