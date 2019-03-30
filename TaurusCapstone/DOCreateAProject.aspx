<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOCreateAProject.aspx.cs" Inherits="TaurusCapstone.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <style>
        .col-xs-4{
            float: none;
            display: block;
            margin-right: auto;
            margin-left: auto;

        }
        .well{
            color: #990000;
            text-align: right;
        }
        .col-xs-2{
            text-align: right;
        }
        .auto-style5 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 17%;
            text-align: right;
            left: 225px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
            height: 21px;
        }
        .auto-style6 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 22%;
            text-align: right;
            left: 165px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style18 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 10%;
            text-align: right;
            left: 61px;
            top: 13px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .date{
            color: black;
            text-align:left;
        }
        .auto-style21 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 22%;
            text-align: right;
            left: 165px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
            height: 20px;
        }
        .auto-style22 {
            margin-bottom: 15px;
            text-align: center;
            align-items:center;
            
        }
        .auto-style23 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 10%;
            text-align: right;
            left: 144px;
            top: 18px;
            padding-left: 15px;
            padding-right: 15px;
            height: 20px;
        }
        .auto-style24 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 10%;
            text-align: right;
            left: 148px;
            top: 22px;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>

    <div class="well">
    <form class="form-horizontal">
 
    <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">Create a New Project</h3>
        <br />
    <div class="form-group">
      <label for="nameLabel" class="auto-style5">Project Name</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="projectName" runat="server">

      &nbsp;</div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="auto-style6">Client Name</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="clientNamesDL" runat="server" style="color: black;" DataSourceID="clientNames" DataTextField="ClientName" DataValueField="ClientID" Height="40px" Width="470px"></asp:DropDownList><asp:LinqDataSource ID="clientNames" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (ClientName, ClientID)" TableName="Clients"></asp:LinqDataSource>

          &nbsp;</div>
        </div>
      <br />
      <div class="auto-style22">
          <label for="select" class="col-lg-2 control-label" style="left: -1512px; top: -5px">Date: </label>
      <label for="inputPassword" class="auto-style18">Day  <asp:DropDownList ID="day" runat="server" Height="36px" Width="66px" CssClass="date">
              <asp:ListItem>01</asp:ListItem>
              <asp:ListItem>02</asp:ListItem>
              <asp:ListItem>03</asp:ListItem>
              <asp:ListItem>04</asp:ListItem>
              <asp:ListItem>05</asp:ListItem>
              <asp:ListItem>06</asp:ListItem>
              <asp:ListItem>07</asp:ListItem>
              <asp:ListItem>08</asp:ListItem>
              <asp:ListItem>09</asp:ListItem>
              <asp:ListItem>10</asp:ListItem>
              <asp:ListItem>11</asp:ListItem>
              <asp:ListItem>12</asp:ListItem>
              <asp:ListItem>13</asp:ListItem>
              <asp:ListItem>14</asp:ListItem>
              <asp:ListItem>15</asp:ListItem>
              <asp:ListItem>16</asp:ListItem>
              <asp:ListItem>17</asp:ListItem>
              <asp:ListItem>18</asp:ListItem>
              <asp:ListItem>19</asp:ListItem>
              <asp:ListItem>20</asp:ListItem>
              <asp:ListItem>21</asp:ListItem>
              <asp:ListItem>22</asp:ListItem>
              <asp:ListItem>23</asp:ListItem>
              <asp:ListItem>24</asp:ListItem>
              <asp:ListItem>25</asp:ListItem>
              <asp:ListItem>26</asp:ListItem>
              <asp:ListItem>27</asp:ListItem>
              <asp:ListItem>28</asp:ListItem>
              <asp:ListItem>29</asp:ListItem>
              <asp:ListItem>30</asp:ListItem>
              <asp:ListItem>31</asp:ListItem>
          </asp:DropDownList>
          </label>
          <br />
          <label for="inputPassword" class="auto-style23">Month<asp:DropDownList ID="month" runat="server" Height="36px" Width="66px" CssClass="date">
              <asp:ListItem Value="01">Jan</asp:ListItem>
              <asp:ListItem Value="02">Feb</asp:ListItem>
              <asp:ListItem Value="03">Mar</asp:ListItem>
              <asp:ListItem Value="04">Apr</asp:ListItem>
              <asp:ListItem Value="05">May</asp:ListItem>
              <asp:ListItem Value="06">Jun</asp:ListItem>
              <asp:ListItem Value="07">Jul</asp:ListItem>
              <asp:ListItem Value="08">Aug</asp:ListItem>
              <asp:ListItem Value="09">Sep</asp:ListItem>
              <asp:ListItem Value="10">Oct</asp:ListItem>
              <asp:ListItem Value="11">Nov</asp:ListItem>
              <asp:ListItem Value="12">Dec</asp:ListItem>
          </asp:DropDownList>
          &nbsp;</label><br />
          <label for="inputPassword" class="auto-style24">Year  <asp:DropDownList ID="year" runat="server" CssClass="date" Height="36px" Width="66px">
              <asp:ListItem>2019</asp:ListItem>
              <asp:ListItem>2020</asp:ListItem>
              <asp:ListItem>2021</asp:ListItem>
              <asp:ListItem>2022</asp:ListItem>
              <asp:ListItem>2023</asp:ListItem>
              <asp:ListItem>2024</asp:ListItem>
          </asp:DropDownList>
          </label>
          </div>
          <br />
        <br />
          <div class="form-group">
      <label for="nameLabel" class="auto-style5">Description</label>
        <div class="col-xs-4">
        <textarea class="form-control" rows="5" id="pDescription" runat="server"></textarea>
        </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style21">Design Lead</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="dlNames" runat="server" style="color: black;" DataSourceID="dlname" DataTextField="FirstName" DataValueField="EmployeeID" Height="40px" Width="470px"></asp:DropDownList><asp:LinqDataSource ID="dlName" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (FirstName, EmployeeID)" TableName="Employees"></asp:LinqDataSource>

          &nbsp;</div>
        </div>
      <br />
        <div class="form-group">
      <label for="inputPassword" class="auto-style6">Project Type</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="projectType" runat="server" style="color: black;" Height="40px" Width="470px">
              <asp:ListItem>Research Design</asp:ListItem>
              <asp:ListItem>Product Design</asp:ListItem>
              <asp:ListItem>Digital Product and Technology</asp:ListItem>
          </asp:DropDownList>
          </div>
        </div>
        <br />
      <div class="text-center">
         <span class="label label-danger" id="requiredField" runat="server" style="font-family: Avenir LT Std 65 Medium; font-size: small; text-align: center">
          Missing Required Fields!</span>
      </div>
        <br />
        <br />
    <div class="form-group">
      <div class="col-xs-4 col-lg-offset-2">
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="addProject" onserverclick="addProject_ServerClick">Add</button>
        <button type="submit" class="btn btn-default" runat="server" id="cancelButton">Cancel</button>
      </div>
    </div>
      </div>
</form>
    </div>
</asp:Content>
