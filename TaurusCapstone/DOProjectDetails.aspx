<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOProjectDetails.aspx.cs" Inherits="TaurusCapstone.WebForm34" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
       .auto-style4 {
           width: 133px
       }
       .panel panel-default{
           width: 120px;
       }
       .panel-heading{
           font-family: Avenir LT Std 45 Book;
       }
       .more{
           text-align: right;
           color: blue;
       }
        .auto-style5 {
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
            font-family: "Avenir LT Std 45 Book";
            border-bottom: 1px solid transparent;
            padding: 10px 15px;
        }
   </style>
    <div class="well">
<div class="panel panel-default">
  <div class="panel-heading"><strong>Project Details</strong></div>
  <div class="panel-body" runat="server">
    Project Name: <asp:Label ID="pNameLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body" runat="server">
    Client Name: <asp:Label ID="clientLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body" runat="server">
    Status: <asp:Label ID="pStatusLabel" runat="server" Text=""></asp:Label>
  </div>

    <div class="panel-body" runat="server">
    Expected End Date: <asp:Label ID="dateLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body" runat="server">
    Design Lead: <asp:Label ID="designLeadLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body" runat="server">
    Project Type: <asp:Label ID="pTypeLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body" runat="server">
    Task Leads: <a href=""<asp:Label ID="tlLabel" runat="server" Text=""></asp:Label></a>
  </div>
    <div class="panel-body" runat="server">
    Phase: <asp:Label ID="phaseLabel" runat="server" Text=""></asp:Label>
  </div>
    <div class="panel-body" runat="server">
    Current status: <asp:Label ID="currentStatusLabel" runat="server" Text=""></asp:Label>
  </div>
</div>
        
    <div class="panel panel-default" runat="server" id="costProposal">
  <div class="panel-heading"><strong>Cost Proposal</strong></div>
  <div class="panel-body">
   Date uploaded: <asp:Label ID="dateUploadedLabel" runat="server" Text=""></asp:Label>
</div>
     
        <div class="panel-body">
            Status: <asp:Label ID="cpStatusLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            Client Decision: <asp:Label ID="decisionLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            <asp:LinkButton ID="moreButton" runat="server" CssClass="more" OnClick="moreButton_Click">More...</asp:LinkButton>
        </div>
        <div class="panel-body" id="noCP" runat="server">
            <p>You have not created a cost proposal yet.</p>
            <a href="~/DOCreateACostProposal.aspx" class="btn btn-default" id="noCPButton" runat="server">Create a Cost Proposal</a>
        </div>
  </div>
    </div>
</asp:Content>
