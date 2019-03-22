<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddClient.aspx.cs" Inherits="TaurusCapstone.WebForm2" %>
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
        .auto-style7 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            text-align: right;
            left: 238px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style8 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            text-align: right;
            left: 232px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style9 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 17%;
            text-align: right;
            left: 227px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>

    <ul class="nav nav-tabs">
  <li><a href="~/AdminViewClients.aspx" data-toggle="tab" runat="server">View Client</a></li>
  <li><a href="~/AdminAddClient.aspx" data-toggle="tab" runat="server">Add Clients</a></li>
</ul>
    <div class="tab-pane fade active in" id="viewEmployees">
  </div>
    <div class="tab-pane fade active in" id="addEmployee"> 
  </div>
    <div class="well">
    <form class="form-horizontal">
  <fieldset>
    <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">Add a New Client</h3>
    <div class="form-group">
      <label for="inputEmail" class="auto-style5">Client Name</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="clientName" runat="server">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="auto-style6">Client Phone Number</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="clientNumber" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style7">Company Number</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="compNumber" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style8">Email</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="clientEmail" runat="server">
          </div>
        </div>
      <div class="form-group">
      <label for="inputPassword" class="auto-style9">Password</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="clientPassword" runat="server">
          </div>
        </div>
      <br />
      <div>
         <span class="label label-danger" id="requiredField" runat="server" style="font-family: Avenir LT Std 65 Medium; font-size: small; text-align: center">Missing Required Fields!</span>
      </div>
    <div class="form-group">
      <div class="col-xs-4 col-lg-offset-2">
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="addClient" onserverclick="addClient_ServerClick">Add</button>
        <button type="submit" class="btn btn-default" runat="server" id="cancelButton" onserverclick="cancelButton_ServerClick">Cancel</button>
      </div>
    </div>
  </fieldset>
</form>
    </div>
</asp:Content>
