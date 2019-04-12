<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOCreateACostProposal.aspx.cs" Inherits="TaurusCapstone.WebForm44" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style9 {
            padding: 15px;
            text-align: center;
        }
    </style>
    <div class="well">
         <div class="alert alert-dismissible alert-success" runat="server" id="alert">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <h4>Success!</h4>
  <p>Proposai is successfully created! <a href="~/DOViewCP.aspx" class="alert-link">View here</a>.</p>
</div>
        <div class="alert alert-dismissible alert-danger" runat="server" id="fields">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
  <h4>Oh snap!</h4>
  <p>Something is wrong, try again!</p>
</div>
       <div class="panel panel-default">
        <div class="panel-heading" style="color: #990000">
           <strong>Project Name</strong>
        </div>
        <div class="panel-body">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="100px">
                    </asp:DropDownList>
        &nbsp;</div>
    <div class="panel-heading">
       <strong>Proposal Details</strong>
    </div>
    <div class="panel-body">
        <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
        <textarea class="form-control" rows="3" id="cpDescription"></textarea>
    </div>
        <div class="panel-body">
         <asp:Label ID="Label3" runat="server" Text="Category "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Research-based</asp:ListItem>
                        <asp:ListItem>Product-based</asp:ListItem>
                        <asp:ListItem>Both</asp:ListItem>
                    </asp:DropDownList>
        </div>
        <div class="panel-body">
          <asp:Label ID="Label4" runat="server" Text="How many scopes does this projec requires?"></asp:Label>
          <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>3</asp:ListItem>
              <asp:ListItem>4</asp:ListItem>
              <asp:ListItem>5</asp:ListItem>
          </asp:DropDownList>
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        </div>
        <div class="auto-style9">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Scope Name">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="How many deliverables for this scope?">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged1">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Deliverable Name">
                    <ItemTemplate>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Deliverable Name">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>

        <button class="btn btn-primary" id="Button1" runat="server" onserverclick="Button1_ServerClick">Submit</button>
        
        </div>
        </div>
</asp:Content>
