<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOEditProfile.aspx.cs" Inherits="TaurusCapstone.WebForm46" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="well">

        <div class="alert alert-dismissible alert-success" runat="server" id="alert">
  <h4>Success!</h4>
  <p>Profile is successfully update!</p>
</div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Edit Profile Information
            </div>
            <div class="panel-body">
                Email:
                
            </div>
            <div class="col-xs-4">
                    <input type="text" class="form-control" id="emailInput" runat="server">
                </div>
            <br />
            <br />
            <div class="panel-body">
                Password:
            
            </div>
            <div class="col-xs-4">
              <input type="text" class="form-control" id="passwordInput" runat="server">
            </div>
            <br />
            <br />
            <br />

            <div class="col-xs-4">
                <button type="button" class="btn btn-default" id="update1" runat="server" style="background-color: black; color: white;" onserverclick="update1_Click">Update Profile</button>
            </div>
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>
