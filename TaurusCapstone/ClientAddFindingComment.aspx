<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientAddFindingComment.aspx.cs" Inherits="TaurusCapstone.WebForm45" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            display: block;
            width: 100%;
            height: 94px;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="well">
        <div class="panel panel-default">
            <div class="panel-heading">
                Adding a comment to this finding: <asp:Label ID="findingName" runat="server"></asp:Label>
            </div>
            <div class="panel-body">
                Comments: 
            </div>
            <div class="panel-body">
                 <input type="text" class="auto-style4" id="clientComment">
      </div>
            </div>
        <div class="panel-body">
            <asp:Button ID="submitComment" runat="server" Text="Submit" BackColor="Black" ForeColor="White" OnClick="submitComment_Click" Width="70px" />
        </div>
    </div>
</asp:Content>
