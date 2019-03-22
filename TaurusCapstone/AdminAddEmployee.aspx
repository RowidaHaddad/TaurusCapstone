<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddEmployee.aspx.cs" Inherits="TaurusCapstone.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        <style>
        .col-xs-4{
            float: none;
            display: block;
            margin-right: auto;
            margin-left: auto;

        }
        .auto-style4 {
            position: relative;
            min-height: 1px;
            float: none;
            width: 41.66666667%;
            display: block;
            left: 0px;
            top: 0px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .well{
            color: #990000;
            text-align: right;
        }
        .col-xs-2{
            text-align: right;
            font-family: Avenir LT Std 65 Medium;
        }
        .form-group{
            text-align: left;
        }
    </style>
    <br />
    <div class="well">
    <form class="form-horizontal">
  <fieldset>
        <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">Add a New Employee</h3>
    <div class="form-group">
      <label for="inputEmail" class="col-xs-2">First name</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="empFN" runat="server">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-xs-2">Last name</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="empLN" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="col-xs-2">Job Title</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="jobTitle" runat="server">
          </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="col-xs-2">Phone Number</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="empNumber" runat="server">
          </div>
        </div>
      <div class="form-group">
      <label for="inputPassword" class="col-xs-2">Email</label>
      <div class="col-xs-4"><input type="email" class="form-control" id="empEmail" runat="server">
          </div>
        </div>
      <label for="select" class="col-xs-2">Employee Type</label>
      <div class="col-xs-4">
        <select class="form-control" id="empType" runat="server">
          <option>Design Officer</option>
          <option>Design Lead</option>
          <option>Task Lead</option>
          <option>Other</option>
        </select>
      </div>
      <div class="form-group">
      <label for="inputPassword" class="col-xs-2">Password</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="empPassword" runat="server">
          </div>
        </div>
      <br />
    <div class="form-group">
      <div class="col-md-5 col-lg-offset-2">
        <button id="cancelButton" type="reset" class="btn btn-default" runat="server">Cancel</button>
        <button id="addEmployee" type="submit" class="btn btn-default" style="color: white; background-color: black" onserverclick="addEmployee_Click" runat="server"> Add</button>
      </div>
    </div>
  </fieldset>
</form>
        </div>
</asp:Content>
