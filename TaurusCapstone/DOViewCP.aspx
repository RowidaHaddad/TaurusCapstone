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
        <div class="panel panel-default">
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
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1006px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField HeaderText="Scope No.">
                        <ItemTemplate>
                            <asp:Label ID="number" runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Scope Description" />
                    <asp:TemplateField HeaderText="Deliverables">
                        <ItemTemplate>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Deliverable No.">
                                        <ItemTemplate>
                                            <asp:Label ID="numberD" runat="server"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Deliverable Description" />
                                </Columns>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
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
        
    </div>
        </div>
</asp:Content>
