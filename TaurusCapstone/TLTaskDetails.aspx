<%@ Page Title="" Language="C#" MasterPageFile="~/TL.Master" AutoEventWireup="true" CodeBehind="TLTaskDetails.aspx.cs" Inherits="TaurusCapstone.WebForm40" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="well">
        <asp:ImageButton ID="backButton1" runat="server" ImageUrl="~/images/right-arrow-icon-27 - Copy.png" Width="21px" OnClick="backButton1_Click" />
        
        <asp:LinkButton ID="backButton" runat="server" ForeColor="Black" OnClick="backButton_Click">Back</asp:LinkButton>

    <div class="col-xs-4">
        <div class="panel-default">
        <div class ="panel-heading">
            <strong>Task Details:</strong>
        </div>
        <div class="panel-body">
            Task Name:
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="panel-body">
            Start Date:
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <div class="panel-body">
            Expected End Date:
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="panel-body">
            Description:
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </div>
        
        <div class="panel-body">
            Status:
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        </div>
       
    </div>
        </div>
        <div class="col-xs-4">
       <div class="panel-default" runat="server" id="projectDetails">
           <div class="panel-heading">
              <strong> Project Details: </strong>
           </div>
           <div class="panel-body">
               Project Name:<asp:Label ID="pName" runat="server" Text=""></asp:Label>
           </div>
           <div class="panel-body">
               Project Type:<asp:Label ID="pType" runat="server" Text=""></asp:Label>
           </div>
           <div class="panel-body">
               Design Lead:<asp:Label ID="DLName" runat="server" Text=""></asp:Label>
           </div>
           <div class="panel-body">
               Project Description: <asp:Label ID="pDescription" runat="server" Text=""></asp:Label>
           </div>
       </div>
            </div>
       <div class="col-lg-4">
        <div class="panel-default" runat="server" id="findings">
       <div class="panel-heading">
           Findings
          <p>Add a number of findings for this task (e.g. 2): </p>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="27px" Width="25px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/add.png" Width="21px" OnClick="ImageButton2_Click1" />
        </div>
       <div class="panel-body">
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="277px" Width="966px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField HeaderText="No.">
                            <ItemTemplate>
                                <asp:Label ID="number" runat="server" Text=""></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Finding Name">
                            <ItemTemplate>
                                <asp:TextBox ID="findingName" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:TextBox ID="findingDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Finding Type">
                            <ItemTemplate>
                                <asp:DropDownList ID="findingType" runat="server">
                                    <asp:ListItem>UI Files</asp:ListItem>
                                    <asp:ListItem>UX Files</asp:ListItem>
                                    <asp:ListItem>Research Findings</asp:ListItem>
                                    <asp:ListItem>Functional Requirements</asp:ListItem>
                                    <asp:ListItem>Wireframes</asp:ListItem>
                                    <asp:ListItem>UML Diagrams</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Finding Files">
                            <ItemTemplate>
                                <asp:FileUpload ID="findingResult" runat="server" />
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
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Add" BackColor="Black" Font-Names="Avenir LT Std 45 Book" ForeColor="White" Width="50px" />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
       </div>
           </div>
           </div>
       </div>
</asp:Content>
