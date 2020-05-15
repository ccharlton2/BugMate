<%@ Page Title="Create A Ticket" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ticket-Creation.aspx.cs" Inherits="BugMateWebApp.WebPages.Ticket_Creation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">

        <h2>Create A Ticket</h2>
            <div class="form-group">
                <label for="ProjectNameSelect">Project</label>
                <asp:DropDownList runat="server" CssClass="form-control" ID="ProjectNameSelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Project Name" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="PrioritySelect">Priority Level</label>
                <asp:DropDownList runat="server" CssClass="form-control" ID="PrioritySelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="High" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="BugTypeSelect">Bug Type</label>
                <asp:DropDownList runat="server" CssClass="form-control" ID="BugTypeSelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Functional/Logical" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="BugFrequencySelect">Frequency</label>
                <asp:DropDownList runat="server" CssClass="form-control" ID="BugFrequencySelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Often" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="ErrorCode">Error Code</label>
                <input type="text" class="form-control" id="ErrorCode" />
            </div>

            <div class="form-group">
                <label for="BugDescription">Description</label>
                <textarea class="form-control" id="BugDescription" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="SuggestedSolution">Suggested Solution(s)</label>
                <textarea class="form-control" id="SuggestedSolution" rows="3"></textarea>
            </div>
        </div>

</asp:Content>
