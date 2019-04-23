<%@ Page Title="" Language="C#" MasterPageFile="~/DL.Master" AutoEventWireup="true" CodeBehind="DLViewTasksDetails.aspx.cs" Inherits="TaurusCapstone.WebForm43" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div class="well">
       <div class="panel panel-default">
    <div class="panel-heading">
                <strong>Select a project:</strong> <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="385px"></asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Select" BackColor="Black" ForeColor="White" Width="70px" />
            </div>

            <div>
<br />
                <br />
                
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView1_RowCommand" Width="966px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField HeaderText="Task Name" />
                <asp:BoundField HeaderText="Status" />
                <asp:BoundField HeaderText="Expected End Date" DataFormatString="{0:d}" />
                <asp:TemplateField HeaderText="View Details">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="View">View</asp:LinkButton>
                        &nbsp;|
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="SubmitFindings">Submit Finding</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                <br />
                <br />
                <br />
            </div>
            </div>
       </div>
</asp:Content>
