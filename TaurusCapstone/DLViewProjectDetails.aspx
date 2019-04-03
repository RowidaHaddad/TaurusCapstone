<%@ Page Title="" Language="C#" MasterPageFile="~/DL.Master" AutoEventWireup="true" CodeBehind="DLViewProjectDetails.aspx.cs" Inherits="TaurusCapstone.WebForm26" %>
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
           color: #990000;
       }
       .more{
           text-align: right;
           color: blue;
       }
        .auto-style6 {
            padding: 15px;
            text-align: center;
        }
        .gridview{
            text-align: center;
            font-size: small;
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
    Task Leads: <asp:LinkButton ID="TLProfile" runat="server">
        <asp:Label ID="TLName" runat="server" Text=""></asp:Label></asp:LinkButton>
  </div>
    <div class="panel-body" runat="server">
    Current status: <asp:Label ID="currentStatusLabel" runat="server" Text=""></asp:Label>
  </div>
</div>
        <div class ="panel panel-default">
            <div class="panel-heading">
                <strong>Tasks</strong>
            </div>
            <div class="auto-style6">
                <asp:GridView ID="viewTasks" runat="server" class="gridview" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1014px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField HeaderText="Task Name" />
                        <asp:BoundField HeaderText="Expected End Date" />
                        <asp:BoundField HeaderText="Design Officer Comments" />
                        <asp:TemplateField HeaderText="View More">
                            <ItemTemplate>
                                <asp:LinkButton ID="viewMore" runat="server">View</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
  </div>
    </div>
</asp:Content>
