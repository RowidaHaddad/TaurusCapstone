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
        <div class="alert alert-dismissible alert-success" runat="server" id="alert">
  <h4 class="text-right">Success!</h4>
  <p class="text-right">Task is successfully created!</p>
</div>
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
        <div class ="panel panel-default">
            <div class="panel-heading">
                <strong>Tasks</strong>
                <p>Add a number of expected tasks (e.g. 2): </p>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="27px" Width="25px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/add.png" Width="21px" OnClick="ImageButton2_Click1" />
            </div>
            <div class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="277px" Width="966px" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField HeaderText="No.">
                            <ItemTemplate>
                                <asp:Label ID="number" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Task Name">
                            <ItemTemplate>
                                <asp:TextBox ID="taskName" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:TextBox ID="taskDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Expected End Date">
                            <ItemTemplate>
                                <asp:TextBox ID="taskDate" runat="server" TextMode="Date"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Assign To">
                            <ItemTemplate>
                                <asp:DropDownList ID="taskLeadName" runat="server">
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <asp:TextBox ID="taskName" runat="server"></asp:TextBox>
                    </EmptyDataTemplate>
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
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click3" Text="Add" BackColor="Black" Font-Names="Avenir LT Std 45 Book" ForeColor="White" Width="50px" />
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
  </div>
    </div>
</asp:Content>
