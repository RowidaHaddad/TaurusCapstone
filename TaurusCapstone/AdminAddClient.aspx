<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddClient.aspx.cs" Inherits="TaurusCapstone.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <style>
        .col-md-5{
            float:none;
            display: block;
            margin-right: auto;
             margin-left: auto;

        }
    </style>
     <form class="form-horizontal">
  <fieldset>
    <legend>Add a new client</legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Client Name</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="clientName" runat="server">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Client Phone Number</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="clientNumber" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Company Number</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="compNumber" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Email</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="clientEmail" runat="server">
          </div>
        </div>
      <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="clientPassword" runat="server">
          </div>
        </div>
      <br />
      <div>
         <span class="label label-danger" id="requiredField" runat="server" style="font-family: Avenir LT Std 65 Medium; font-size: small; text-align: center">Missing Required Fields!</span>
      </div>
    <div class="form-group">
      <div class="col-md-5 col-lg-offset-2">
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="addClient" onserverclick="addClient_ServerClick">Add</button>
        <button type="submit" class="btn btn-default" runat="server" id="cancelButton" onserverclick="cancelButton_ServerClick">Cancel</button>
      </div>
    </div>
  </fieldset>
</form>

</asp:Content>
