<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddEmployee.aspx.cs" Inherits="TaurusCapstone.WebForm4" %>
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
    <legend>Add a new employee</legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">First name</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="empFN" runat="server">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Last name</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="empLN" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Job Title</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="jobTitle" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Phone Number:</label>
      <div class="col-md-5">
        <input type="text" class="form-control" id="empNumber" runat="server">
          </div>
        </div>
      <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Email</label>
      <div class="col-md-5">
        <input type="email" class="form-control" id="empEmail" runat="server">
          </div>
        </div>
      <label for="select" class="col-lg-2 control-label">Employee Type</label>
      <div class="col-md-5">
        <select class="form-control" id="ëmpType" runat="server">
          <option>Design Officer</option>
          <option>Design Lead</option>
          <option>Task Lead</option>
          <option>Other</option>
        </select>
      </div>
      <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">"Password</label>
      <div class="col-md-5">
        <input type="email" class="form-control" id="empPassword" runat="server">
          </div>
        </div>
      <br />
    <div class="form-group">
      <div class="col-md-5 col-lg-offset-2">
        <button type="submit" class="btn btn-default" runat="server" onserverclick="cancelButton_ServerClick">Cancel</button>
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" onserverclick="addEmployee_ServerClick">Add</button>
      </div>
    </div>
  </fieldset>
</form>
</asp:Content>
