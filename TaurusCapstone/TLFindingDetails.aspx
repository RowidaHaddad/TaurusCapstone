<%@ Page Title="" Language="C#" MasterPageFile="~/TL.Master" AutoEventWireup="true" CodeBehind="TLFindingDetails.aspx.cs" Inherits="TaurusCapstone.WebForm42" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="well">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>Findings</strong>
                <p></p>
            </div>
            <div class="panel-body">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
