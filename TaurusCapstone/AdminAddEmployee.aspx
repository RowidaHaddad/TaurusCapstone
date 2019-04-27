<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddEmployee.aspx.cs" Inherits="TaurusCapstone.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <style>
        .col-xs-4 {
            float: none;
            display: block;
            margin-right: auto;
            margin-left: auto;
        }

        .well {
            color: #990000;
            text-align: right;
        }

        .col-xs-2 {
            text-align: right;
            font-family: Avenir LT Std 65 Medium;
        }
        .auto-style4 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 30%;
            text-align: right;
            font-family: "Avenir LT Std 65 Medium";
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            text-align: right;
            font-family: "Avenir LT Std 65 Medium";
            left: 146px;
            top: -2px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
    <br />
    <div class="well">
          <div class="alert alert-dismissible alert-success" runat="server" id="alert">
  
  <h4>Success!</h4>
  <p>Employee is successfully added!</p>
</div>
        <div class="alert alert-dismissible alert-danger" runat="server" id="fields">
  
  <h4>Oh snap!</h4>
  <p>Something is wrong, try again!</p>
</div>
        <form class="form-horizontal">
            <fieldset>
                <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">Add a New Employee</h3>
                <br />
                <div class="form-group">
                    <label for="inputEmail" class="auto-style4">First name</label>
                    <div class="col-xs-4">
                        <input type="text" class="form-control" id="empFN" runat="server"><asp:RequiredFieldValidator ID="empFNRFV" runat="server" ControlToValidate="empFN" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>

                        &nbsp;
                    </div>
                    <br />
                    <label for="inputPassword" class="auto-style4">Last name</label>
                    <div class="col-xs-4">
                        <input type="text" class="form-control" id="empLN" runat="server"><asp:RequiredFieldValidator ID="empLNRFV" runat="server" ControlToValidate="empLN" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>

                        &nbsp;
                    </div>
                    <br />
                    <label for="inputPassword" class="auto-style4">Job Title</label>
                    <div class="col-xs-4">
                        <input type="text" class="form-control" id="jobTitle" runat="server"><asp:RequiredFieldValidator ID="jobTitleRFV" runat="server" ControlToValidate="jobTitle" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>

                        &nbsp;
                    </div>
                    <br />
                    <label for="inputPassword" class="auto-style4">Phone Number</label>
                    <div class="col-xs-4">
                        <input type="text" class="form-control" id="empNumber" runat="server"><asp:RequiredFieldValidator ID="empNumberRFV" runat="server" ControlToValidate="empNumber" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>

                        &nbsp;
                    </div>
                    <br />
                    <label for="inputPassword" class="auto-style4">Email</label>
                    <div class="col-xs-4">
                        <input type="email" class="form-control" id="empEmail" runat="server">&nbsp;
                    </div>
                    <br />
                    <label for="select" class="auto-style4">Employee Type</label>
                    <div class="col-xs-4">
                        <select class="form-control" id="empType" runat="server">
                            <option>Design Officer</option>
                            <option>Design Lead</option>
                            <option>Task Lead</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <br />
                    <label for="inputPassword" class="auto-style5">Password</label>
                    <div class="col-xs-4">
                        <input type="text" class="form-control" id="empPassword" runat="server"><asp:RequiredFieldValidator ID="empPasswordRFV" runat="server" ControlToValidate="empPassword" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>

                        &nbsp;
                    </div>
                    <br />
                    <br />
                    <div>
                        <span class="label label-danger" id="requiredField" runat="server" style="font-family: Avenir LT Std 65 Medium; font-size: small; text-align: center">Missing Required Fields!</span>
                    </div>
                    <br />
                    <br />
                    <br />
                    <div class="col-xs-4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                        <button id="cancelButton" type="reset" class="btn btn-default" runat="server">Cancel</button>
                        <button id="addEmployee" type="submit" class="btn btn-default" style="color: white; background-color: black" onserverclick="addEmployee_Click" runat="server">Add</button>
                    </div>
            </fieldset>
        </form>
    </div>
</asp:Content>
