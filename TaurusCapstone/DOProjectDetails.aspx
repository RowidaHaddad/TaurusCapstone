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
            padding: 15px;
            text-align: right;
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
    
</div>
        
    <div class="panel panel-default" runat="server" id="costProposal">
  <div class="panel-heading"><strong>Proposal Details</strong></div>
  <div class="panel-body">
      <asp:Label ID="Label1" runat="server" Text="Date uploaded: "></asp:Label><asp:Label ID="dateUploadedLabel" runat="server" Text=""></asp:Label>
</div>
     
        <div class="panel-body">
            <asp:Label ID="Label2" runat="server" Text="Status: "></asp:Label><asp:Label ID="cpStatusLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            <asp:Label ID="Label3" runat="server" Text="Client Decision: "></asp:Label> <asp:Label ID="decisionLabel" runat="server" Text=""></asp:Label>
        </div>
        <div class="panel-body">
            <asp:LinkButton ID="moreButton" runat="server" CssClass="more" OnClick="moreButton_Click">More...</asp:LinkButton>
        </div>
        <div class="panel-body" id="noCP" runat="server">
            <p>You have not created a proposal yet.</p>
            <a href="~/DOCreateACostProposal.aspx" class="btn btn-default" id="noCPButton" runat="server">Create a Proposal</a>
        </div>
  </div>
        <div class="panel panel-default">
          <%--  <div class="panel-heading">
                <strong>Projects Findings</strong>
            </div>
           <%-- <div class="auto-style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1053px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField HeaderText="Finding Name" />
                        <asp:BoundField HeaderText="Finding Type" />
                        <asp:BoundField DataFormatString="{0:d}" HeaderText="Expected End Date" />
                        <asp:BoundField HeaderText="Finding Description" />
                        <asp:TemplateField HeaderText="Finding Result">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="FindingResults">LinkButton</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Add Comments">
                            <ItemTemplate>
                                <asp:TextBox ID="findingComments" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:TextBox ID="doComments" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>--%>
                <br />
                
        </div>
    </div>
</asp:Content>
