<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOCreateAProject.aspx.cs" Inherits="TaurusCapstone.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <style>
        .col-xs-4{
            float: none;
            display: block;
            margin-right: auto;
            margin-left: auto;

        }
        .well{
            color: #990000;
            text-align: right;
        }
        .col-xs-2{
            text-align: right;
        }
        .auto-style5 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 17%;
            text-align: right;
            left: 225px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
            height: 21px;
        }
        .auto-style6 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 22%;
            text-align: right;
            left: 165px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .date{
            color: black;
            text-align:left;
        }
        .auto-style21 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 22%;
            text-align: right;
            left: 165px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
            height: 20px;
        }
        .auto-style25 {
            margin-left: 0;
        }
        .auto-style26 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 21%;
            text-align: right;
            left: -387px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>

    <div class="well">
         <div class="alert alert-dismissible alert-success" runat="server" id="alert">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <h4>Success!</h4>
  <p>Project is successfully created! <a href="~/DOCreateAProject.aspx" class="alert-link">View here</a>.</p>
</div>
        <div class="alert alert-dismissible alert-danger" runat="server" id="fields">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <h4>Oh snap!</h4>
  <p>Something is wrong, try again!</p>
</div>
    <form class="form-horizontal">
 
    <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">Create a New Project</h3>
        <br />
    <div class="form-group">
      <label for="nameLabel" class="auto-style5">Project Name</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="projectName" runat="server">

      &nbsp;</div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="auto-style6">Client Name</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="clientNamesDL" runat="server" style="color: black;" DataSourceID="clientNames" DataTextField="ClientName" DataValueField="ClientID" Height="40px" Width="470px"></asp:DropDownList><asp:LinqDataSource ID="clientNames" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (ClientName, ClientID)" TableName="Clients"></asp:LinqDataSource>

          &nbsp;</div>
        </div>
      <br />
      <div class="form-group">
        <label for="inputPassword" class="auto-style6">Expected End Date</label>
          <br />
        <label for="inputPassword" class="auto-style6">
          <asp:TextBox ID="date" runat="server" TextMode="Date" CssClass="auto-style25"></asp:TextBox>
          </label>
        <br />
          <div class="form-group">
      <label for="nameLabel" class="auto-style26">Description</label>
        <div class="col-xs-4">
        <textarea class="form-control" rows="5" id="pDescription" runat="server"></textarea>
        </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style21">Design Lead</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="dlNames" runat="server" style="color: black;" DataSourceID="dlname" DataTextField="FirstName" DataValueField="EmployeeID" Height="40px" Width="470px"></asp:DropDownList><asp:LinqDataSource ID="dlName" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (FirstName, EmployeeID)" TableName="Employees"></asp:LinqDataSource>

          &nbsp;</div>
        </div>
      <br />
        <div class="form-group">
      <label for="inputPassword" class="auto-style6">Project Type</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="projectType" runat="server" style="color: black;" Height="40px" Width="470px">
              <asp:ListItem>Research Design</asp:ListItem>
              <asp:ListItem>Product Design</asp:ListItem>
              <asp:ListItem>Digital Product and Technology</asp:ListItem>
          </asp:DropDownList>
          </div>
        </div>
        <br />
      <div class="text-center">
         <span class="label label-danger" id="requiredField" runat="server" style="font-family: Avenir LT Std 65 Medium; font-size: small; text-align: center">
          Missing Required Fields!</span>
      </div>
        <br />
        <br />
    <div class="form-group">
      <div class="col-xs-4 col-lg-offset-2">
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="addProject" onserverclick="addProject_ServerClick">Add</button>
        <button type="submit" class="btn btn-default" runat="server" id="cancelButton">Cancel</button>
      </div>
    </div>
      </div>
</form>
    </div>
</asp:Content>
