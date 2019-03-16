﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PMS.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TaurusCapstone.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type="text/javascript">
            function disableBackButton() {
            window.history.forward();
        }
        setTimeout("disableBackButton()", 0);
        </script>
    <style>
        .col-md-5 {
            display: block;
             margin-right: auto;
             margin-left: auto;
             float: none;
        }
        .label label-danger{
            float: none;
            display:block;
        }
        .button {
            text-align: right;
            float: right;
            display: block;
        }
        .well{
            display: normal;
            border:ridge;
            background-color: #DEEDF5;
        }
        .auto-style1{
            font-family: Avenir LT Std 65 Medium; 
            text-align:center;
            font-size:large;
        }
    </style>
    <div class="well">
    <form class="form-horizontal" style="text-align: center">
  <fieldset>
    <legend class="auto-style1">Login</legend>
    <div class="form-group" >
      <div class="col-md-5" style="text-align: center">
        <input type="text" class="form-control" id="usrTB" runat="server" placeholder="Username" style="font-family: Avenir LT Std 65 Medium">&nbsp;</div>
    </div>
    <div class="form-group">
      <div class="col-md-5">
        <input type="password" class="form-control" id="pswTB" runat="server" placeholder="Password" style="font-family: Avenir LT Std 65 Medium">
    </div>
        </div>
      <br />
      <div class ="col-md-5">
          <span class="label label-danger" id="errorInput" runat="server" style="font-family: Avenir LT Std 65 Medium; font-size: small; text-align: center">Incorrect username and password!</span>
      </div>
      <br />
      <br />
    
  </fieldset>
        <div class="col-md-5" style= "font-family: Avenir LT Std 65 Medium">
<button type="submit" id="loginButton" runat="server" class="btn btn-default btn-lg" onserverclick="loginButton_ServerClick" style="background-color: black; color:white; text-align: right" >Login</button>
</div>
</form>
        </div>
</asp:Content>