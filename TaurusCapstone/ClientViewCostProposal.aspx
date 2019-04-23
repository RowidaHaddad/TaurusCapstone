<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientViewCostProposal.aspx.cs" Inherits="TaurusCapstone.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <style>
        .edit{
            text-align: right;
            color: blue;
        }
         .auto-style4 {
             display: block;
             width: 68%;
             height: 67px;
             font-size: 14px;
             line-height: 1.42857143;
             color: #555555;
             border-radius: 4px;
             box-shadow: inset 0 2px 0 rgba(0, 0, 0, 0.075);
             transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
             border: 1px solid #e7e7e7;
             padding: 7px 12px;
             background-color: #ffffff;
             background-image: none;
         }
    </style>
    <div class="well">
        <div class="panel-heading">
            
            <p><strong>Cost Proposal For: </strong><asp:Label ID="projectName" runat="server" Text=""></asp:Label></p>
        </div>
        <div class="panel-body">
        <strong>Date uploaded:</strong> <asp:Label ID="dateUploadedLabel" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
        <div class="panel-body">
            <strong>Status:</strong> <asp:Label ID="cpStatusLabel" runat="server" Text=""></asp:Label>
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
        <div class="panel-body">
            Decision: <asp:DropDownList ID="clientDecision" runat="server">
                <asp:ListItem Value="1">Approved</asp:ListItem>
                <asp:ListItem Value="2">Rejected</asp:ListItem>
                <asp:ListItem Value="3">Requires Modification</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
        <div class="panel-body">
            Remarks: <asp:TextBox ID="clientRemarks" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>

        <div class="form-group">
      <div class="col-xs-4 col-lg-offset-2">
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="submitCP" onserverclick="submitCP_Click">Submit</button>
        <a href="~/DOViewProjects.aspx" class="btn btn-default" runat="server" id="cancelButton">Cancel</a>
      </div>
    </div>
    </div>
</asp:Content>
