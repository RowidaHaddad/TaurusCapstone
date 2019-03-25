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
        </style>

    <div class="well">
    <form class="form-horizontal">
  <fieldset>
    <h3 style="font-family: Avenir LT Std 65 Medium; text-align: center">A New Cost Proposal</h3>
      <p class="text-center"><strong>For: <asp:Label ID="projectName" runat="server" Text=""></asp:Label></strong></p>
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Date: </label>
      <div class="col-xs-2">
        <select runat="server" class="form-control" id="day">
          <option>01</option>
          <option>02</option>
          <option>03</option>
          <option>04</option>
          <option>05</option>
          <option>06</option>
          <option>07</option>
          <option>08</option>
          <option>09</option>
          <option>10</option>
          <option>11</option>
          <option>12</option>
          <option>13</option>
          <option>14</option>
          <option>15</option>
          <option>16</option>
          <option>17</option>
          <option>18</option>
          <option>19</option>
          <option>20</option>
          <option>21</option>
          <option>22</option>
          <option>23</option>
          <option>24</option>
          <option>25</option>
          <option>26</option>
          <option>27</option>
          <option>28</option>
          <option>29</option>
          <option>30</option>
          <option>31</option>
        </select>
          <select runat="server" class="form-control" id="month">
              <option>01</option>
              <option>02</option>
              <option>03</option>
              <option>04</option>
              <option>05</option>
              <option>06</option>
              <option>07</option>
              <option>08</option>
              <option>09</option>
              <option>10</option>
              <option>11</option>
              <option>12</option>
          </select>
          <select runat="server" class="form-control" id="year">
              <option>2019</option>
              <option>2020</option>
              <option>2021</option>
              <option>2022</option>
              <option>2023</option>
              <option>2024</option>
          </select>
    </div>
        </div>
    <div class="form-group">
      <label for="inputPassword" class="auto-style6">Scope</label>
      <div class="col-xs-4">
        <textarea class="form-control" rows="5" id="scope"></textarea><asp:RequiredFieldValidator ID="scopeRFV" runat="server" ControlToValidate="scope" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>
      </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style7">Category</label>
      <div class="col-xs-4">
        <select runat="server" id="category" class="form-control">
            <option>Research-based Project</option>
            <option>Product-based Project</option>
            <option>Both</option>
        </select><asp:RequiredFieldValidator ID="categoryRFV" runat="server" ControlToValidate="category" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>
        </div>
        </div>
      <br />
      <div class="form-group">
      <label for="inputPassword" class="auto-style8">Deliverables</label>
      <div class="col-xs-4">
        <input type="text" class="form-control" id="deliverable" runat="server"><asp:RequiredFieldValidator ID="deliverableRFV" runat="server" ControlToValidate="clientEmail" ErrorMessage="*" ForeColor="#990000"></asp:RequiredFieldValidator>
        <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="addDeliverable" onserverclick="addDeliverable_ServerClick">Add more</button>

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
