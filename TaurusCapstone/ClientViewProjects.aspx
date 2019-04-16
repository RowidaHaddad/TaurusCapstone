﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientViewProjects.aspx.cs" Inherits="TaurusCapstone.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="well">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>
                    View Projects
                </strong>
                <div class="panel-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField HeaderText="Project Name" />
                            <asp:BoundField DataFormatString="{0:d}" HeaderText="Expected End Date" />
                            <asp:TemplateField HeaderText="Quick Actions">
                                <ItemTemplate>
                                    <asp:LinkButton ID="viewProposal" runat="server" CommandName="ViewProposal">View Proposal</asp:LinkButton>
                                    &nbsp;|
                                    <asp:LinkButton ID="viewFinding" runat="server" CommandName="ViewFindings">View Findings</asp:LinkButton>
                                    &nbsp;|
                                    <asp:LinkButton ID="submitSurvey" runat="server" CommandName="SubmitSurvey">Submit Survey</asp:LinkButton>
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
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
