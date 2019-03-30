<%@ Page Title="" Language="C#" MasterPageFile="~/DO.Master" AutoEventWireup="true" CodeBehind="DOCreateACostProposal.aspx.cs" Inherits="TaurusCapstone.WebForm26" %>
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
        .auto-style7 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            text-align: right;
            left: 238px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style8 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            text-align: right;
            left: 232px;
            top: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style9 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 16.66666667%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
        }
        .text-center{
            font-size:medium;
        }
        </style>

    <div class="well">
    <form class="form-horizontal">
  <fieldset>
    <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">A New Cost Proposal</h3>
      <p class="text-center"><strong>For: <asp:DropDownList ID="projectNames" runat="server" DataSourceID="project" DataTextField="ProjectName" DataValueField="ProjectID" ForeColor="Black"></asp:DropDownList>
          <asp:LinqDataSource ID="project" runat="server" ContextTypeName="TaurusCapstone.PMSDataClassesDataContext" EntityTypeName="" Select="new (ProjectName, ProjectID)" TableName="Projects">
          </asp:LinqDataSource>
          </strong></p>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Date: </label>
      <div class="auto-style9">
        <asp:DropDownList ID="day" runat="server" Height="36px" Width="66px">
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
          </asp:DropDownList><asp:DropDownList ID="month" runat="server" Height="36px" Width="66px">
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
          </asp:DropDownList><asp:DropDownList ID="year" runat="server" Height="36px" Width="66px">
              <asp:ListItem>2019</asp:ListItem>
              <asp:ListItem>2020</asp:ListItem>
              <asp:ListItem>2021</asp:ListItem>
              <asp:ListItem>2022</asp:ListItem>
              <asp:ListItem>2023</asp:ListItem>
              <asp:ListItem>2024</asp:ListItem>
          </asp:DropDownList>
    </div>
        </div>
    <div class="form-group">
      <label for="inputPassword" class="auto-style6">Scope</label>
      <div class="col-xs-4">
        <textarea class="form-control" rows="5" id="scope"></textarea>
      </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style7">Category</label>
      <div class="col-xs-4">
          <asp:DropDownList ID="catergory" runat="server" Height="40px" Width="470px">
              <asp:ListItem>Research-based</asp:ListItem>
              <asp:ListItem>Product-based</asp:ListItem>
              <asp:ListItem>Both</asp:ListItem>
          </asp:DropDownList>
        </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style8">Deliverables</label>
      <div class="col-xs-4">
          <p style="font-style:italic;">separate with commas</p>
        <textarea id="deliverable" runat="server" class="form-control">
        </textarea>
      </div>
        </div>
      
      <br />
      <div>
         <span class="label label-danger" id="requiredField" runat="server" style="font-family: Avenir LT Std 65 Medium; font-size: small; text-align: center">Missing Required Fields!</span>
      </div>
    <div class="form-group">
      <div class="col-xs-4 col-lg-offset-2">
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="sendCP" onserverclick="sendCP_ServerClick" >Send to Client</button>
        <button type="submit" class="btn btn-default" runat="server" id="cancelButton" onserverclick="cancelButton_ServerClick">Cancel</button>
      </div>
    </div>
  </fieldset>
</form>
    </div>
</asp:Content>
