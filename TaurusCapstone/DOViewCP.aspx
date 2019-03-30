<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOViewCP.aspx.cs" Inherits="TaurusCapstone.WebForm33" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .edit{
            text-align: right;
            color: blue;
        }
    </style>
    <div class="well">
        <div class="panel-heading">
            
            <p><strong>Cost Proposal For: </strong><asp:Label ID="projectName" runat="server" Text=""></asp:Label></p>
        </div>
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
            Scope: <asp:Label ID="scopeLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            Category: <asp:Label ID="categoryLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            Deliverables: <asp:Label ID="deliverablesLabel" runat="server" Text=""></asp:Label>
        </div>
        <asp:LinkButton ID="editButton" runat="server" class="edit" OnClick="editButton_Click">Edit</asp:LinkButton>
    </div>
</asp:Content>
