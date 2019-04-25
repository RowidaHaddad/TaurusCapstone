<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="WebForm31.aspx.cs" Inherits="TaurusCapstone.WebForm31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style4 {
            padding: 15px;
            text-align: center;
        }
        .auto-style5 {
            display: block;
            width: 100%;
            height: 88px;
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
        .auto-style6 {
            display: block;
            width: 30%;
            height: 38px;
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
        .auto-style7 {
            display: block;
            width: 29%;
            height: 38px;
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
       <div id="closedproject" runat="server">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>Client Feedback Survery</strong>
                <p style="font-style:italic">Please fill in this survey to gather feedback on what aspects of your project were performed well, what areas of improvement we need to consider for the next project and any other comments or suggestions you would like to provide.</p>
            </div>
            <div class="panel-body">
                <p>Were the objectives for this project clearly defined?</p>
                <asp:RadioButtonList ID="question1" runat="server">
                    <asp:ListItem>Very</asp:ListItem>
                    <asp:ListItem>Somewhat</asp:ListItem>
                    <asp:ListItem>Not well</asp:ListItem>
                    <asp:ListItem>Not at all</asp:ListItem>
                    <asp:ListItem>Does not apply</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="panel-body">
                <p>Were you satisfied with your experience for this  project?</p>
                <asp:RadioButtonList ID="question2" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem Value="No"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="Label1" runat="server" Text="if no, please specify why."></asp:Label>
                <br /><input  class="auto-style6" id="Text2" type="text" />
            </div>
            <div class="panel-body">
                <p>How effective were our design (or implementation) specs to meeting your project deliverables?<asp:Label ID="gradeText1" runat="server" Text="Label" Visible="False"></asp:Label>
                </p>
                <asp:RadioButtonList ID="question3" runat="server">
                    <asp:ListItem>Very</asp:ListItem>
                    <asp:ListItem>Somewhat</asp:ListItem>
                    <asp:ListItem>Not well</asp:ListItem>
                    <asp:ListItem>Not at all</asp:ListItem>
                    <asp:ListItem>Does not apply</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="panel-body">
                <p>Did our product/service meet your expectations?<asp:Label ID="gradeText2" runat="server" Text="Label" Visible="False"></asp:Label>
                </p>
                <asp:RadioButtonList ID="question4" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem Value="No"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="Label2" runat="server" Text="if no, please specify why."></asp:Label>
                <input class="auto-style6" id="Text1" type="text" /></div>
            <div class="panel-body">
                <p>Do you have any other comments, suggestion or concerns which can help us to improve user experience?<asp:Label ID="gradeText3" runat="server" Text="Label" Visible="False"></asp:Label>
                </p>
                <input class="auto-style5" id="comment" type="text" />
            </div>
            <div class="auto-style4">
                <p class="text-center"> Thank you for your feedback. We sincerely appreciate your honest opinion and will take your input into consideration while providing products and services in the future.</p>
                 <button type="submit" class="btn btn-default" style="color: white; background-color: black" runat="server" id="submit" onclick="submit_Click">Submit</button>
                </div>
                <%--<asp:Button ID="Button1" runat="server" Text="click" Width="70px" />--%>
            </div>
           <div id ="notclosed" runat="server" visible="false">
               <p style="font-size: medium; text-align: center; font-family:'Avenir LT Std 65 Medium'"><strong>Project hasn't been closed yet. Please check again later!</strong></p>
           </div>
        </div><asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    </div>
    
</asp:Content>
