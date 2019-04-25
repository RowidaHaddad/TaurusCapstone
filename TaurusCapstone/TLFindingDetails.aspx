<%@ Page Title="" Language="C#" MasterPageFile="~/TL.Master" AutoEventWireup="true" CodeBehind="TLFindingDetails.aspx.cs" Inherits="TaurusCapstone.WebForm42" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="well">
        <div class="panel panel-default">
            <div class="panel-heading">
               <strong>Findings</strong>
                <p>These are findings with comments on them</p>
            </div>
            <div class="panel-body">
                Please select a project:<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="253px"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <button id="button1" runat="server" type="button" class="btn btn-default" style="background-color:black; color: white;">Default</button>
            </div>
            <div class="panel-body">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
