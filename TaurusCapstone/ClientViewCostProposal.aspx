<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientViewCostProposal.aspx.cs" Inherits="TaurusCapstone.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <style>
        .edit{
            text-align: right;
            color: blue;
        }
         .auto-style4 {
             display: block;
             width: 68%;
             height: 67px;
             font-size: 14px;
             line-height: 1.42857143;
             color: #555555;
             border-radius: 4px;
             box-shadow: inset 0 2px 0 rgba(0, 0, 0, 0.075);
             transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
             border: 1px solid #e7e7e7;
             padding: 7px 12px;
             background-color: #ffffff;
             background-image: none;
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
            Scope: <asp:Label ID="scopeLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            Category: <asp:Label ID="categoryLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            Deliverables: <asp:Label ID="deliverablesLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            Decision: <asp:DropDownList ID="clientDecision" runat="server">
                <asp:ListItem Value="1">Approved</asp:ListItem>
                <asp:ListItem Value="2">Rejected</asp:ListItem>
                <asp:ListItem Value="3">Requires Modification</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="panel-body">
            Remarks:<textarea class="auto-style4" id="clientRemarks" cols="5"></textarea>&nbsp;
        </div>

        <div class="form-group">
      <div class="col-xs-4 col-lg-offset-2">
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="submitCP" onserverclick="submitCP_Click">Submit</button>
        <a href="~/DOViewProjects.aspx" class="btn btn-default" runat="server" id="cancelButton">Cancel</a>
      </div>
    </div>
    </div>
</asp:Content>
