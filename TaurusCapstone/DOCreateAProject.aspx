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
  
  <h4>Success!</h4>
  <p>Project is successfully created!</p>
</div>
        <div class="alert alert-dismissible alert-danger" runat="server" id="fields">
  
  <h4>Oh snap!</h4>
  <p>Something is wrong, try again!</p>
</div>
    <form class="form-horizontal">
 
    <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">Create a New Project</h3>
        <br />
    <div class="form-group">
      <label for="nameLabel" class="auto-style5">Project Name</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="projectName" runat="server"><asp:RequiredFieldValidator ID="pNameRFV" runat="server" ErrorMessage="**" ControlToValidate="projectName"></asp:RequiredFieldValidator>


      &nbsp;&nbsp;</div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="auto-style6">Client Name</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="clientNamesDL" runat="server" style="color: black;" DataSourceID="clientNames" DataTextField="ClientName" DataValueField="ClientID" Height="40px" Width="470px"></asp:DropDownList><asp:LinqDataSource ID="clientNames" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (ClientName, ClientID)" TableName="Clients"></asp:LinqDataSource>
<asp:RequiredFieldValidator ID="clientNameRFV" runat="server" ErrorMessage="**" ControlToValidate="clientNamesDL"></asp:RequiredFieldValidator>
        </div>

        </div>
      <br />
      <div class="form-group">
        <label for="inputPassword" class="auto-style6">Expected End Date</label>
          <br />
        <label for="inputPassword" class="auto-style6">
            <div class="col-xs-4">
          <asp:TextBox ID="date" runat="server" TextMode="Date"></asp:TextBox>
                </div>
          <asp:RequiredFieldValidator ID="endDateRFV" runat="server" ErrorMessage="**" ControlToValidate="date"></asp:RequiredFieldValidator>
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
          <asp:DropDownList ID="dlNames" runat="server" style="color: black;" Height="40px" Width="470px"></asp:DropDownList>

          <asp:RequiredFieldValidator ID="DLRFV" runat="server" ErrorMessage="**" ControlToValidate="dlNames"></asp:RequiredFieldValidator>

          &nbsp;</div>
        </div>
      <br />
        <div class="form-group">
      <label for="inputPassword" class="auto-style6">Project Type</label>
      <div class="col-xs-4">
          <asp:RequiredFieldValidator ID="pTypeRFV" runat="server" ErrorMessage="**" ControlToValidate="projectType"></asp:RequiredFieldValidator>
          <asp:DropDownList ID="projectType" runat="server" style="color: black;" Height="40px" Width="470px">
              <asp:ListItem>Research Design</asp:ListItem>
              <asp:ListItem>Product Design</asp:ListItem>
              <asp:ListItem>Digital Product and Technology</asp:ListItem>
          </asp:DropDownList>
          </div>
        </div>
        <br />
      <div class="text-center">
        
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
