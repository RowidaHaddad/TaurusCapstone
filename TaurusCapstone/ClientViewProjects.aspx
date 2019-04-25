<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientViewProjects.aspx.cs" Inherits="TaurusCapstone.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .gridview{
            text-align: center;
            font-size: small;
        }
    </style>
    <div class="well">
        <div class="panel panel-default">
            <div class="panel-heading">
                        <p style="text-align: center; font-family: Avenir LT Std 65 Medium; font-size: large; ">View Projects</p>
                <div class="panel-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" RowStyle-HorizontalAlign="Center" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField HeaderText="Project Name" >
                            <HeaderStyle CssClass="gridview" />
                            </asp:BoundField>
                            <asp:BoundField DataFormatString="{0:d}" HeaderText="Expected End Date" >
                            <HeaderStyle CssClass="gridview" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Quick Actions">
                                <ItemTemplate>
                                    <asp:LinkButton ID="viewProposal" runat="server" CommandName="ViewProposal">View Proposal</asp:LinkButton>
                                    &nbsp;|
                                    <asp:LinkButton ID="viewFinding" runat="server" CommandName="ViewFindings">View Findings</asp:LinkButton>
                                    &nbsp;|
                                    <asp:LinkButton ID="submitSurvey" runat="server" CommandName="SubmitSurvey">Submit Survey</asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle CssClass="gridview" />
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
                <div id ="notclosed" runat="server" visible="false">
               <p style="font-size: medium; text-align: center; font-family:'Avenir LT Std 65 Medium'"><strong>Project hasn't been closed yet. Please check again later!</strong></p>
           </div>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
