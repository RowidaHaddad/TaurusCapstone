<%@ Page Title="" Language="C#" MasterPageFile="~/DL.Master" AutoEventWireup="true" CodeBehind="DLCloseProject.aspx.cs" Inherits="TaurusCapstone.WebForm38" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="well">
      <%--  <div class="alert alert-dismissible alert-success" runat="server" id="alert">
  
  <h4 class="text-right">Success!</h4>
  <p class="text-right">Project is successfully closed!</p>
</div>
        <div class="alert alert-dismissible alert-danger" runat="server" id="fields">
  
  <h4 class="text-right">Oh snap!</h4>
  <p class="text-right">Something is wrong, try again!</p>
</div>--%>
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>Closing a Project</strong>
            </div>
            <div class="panel-body">
                Please upload the project's final zipped file:<asp:FileUpload ID="finalFile" runat="server" />
                <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="White" BackColor="Black" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
        </div>
        <%--<div class="panel-body">
<button id="submit" runat="server" type="button" class="btn btn-default" style="background-color: black; color: white">Submit</button>

        </div>--%>
    </div>
</asp:Content>
