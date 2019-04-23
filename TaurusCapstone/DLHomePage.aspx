<%@ Page Title="" Language="C#" MasterPageFile="~/DL.Master" AutoEventWireup="true" CodeBehind="DLHomePage.aspx.cs" Inherits="TaurusCapstone.WebForm15" %>
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
<asp:Label class= "label" ID="Label1" runat="server" Text="Welcome,"></asp:Label><asp:Label class="label" ID="userName" runat="server" Text=""></asp:Label>
        <asp:Label CssClass="label" ID="Label2" runat="server" Text="!"></asp:Label>
       <p>Quick actions:</p>
<button type="submit" id="addClient" runat="server" class="btn btn-default" onserverclick="addClientButton_ServerClick" style="background-color: black; color:white; text-align: right" >Add a Task</button>
<button type="submit" id="addEmployee" runat="server" class="btn btn-default" onserverclick="addEmployeeButton_ServerClick" style="background-color: black; color:white; text-align: right" >Submit a Finding</button>


</div>
</asp:Content>
