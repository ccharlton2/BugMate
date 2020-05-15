<%@ Page Title="Create A Ticket" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ticket-Creation.aspx.cs" Inherits="BugMateWebApp.WebPages.Ticket_Creation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="dashboard-component-header">
            <h2>Create A Ticket</h2>
        </div>

        <div class="dashboard-items-container">

            <div class="form-group">
                <label for="ProjectNameSelect">Project</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="ProjectNameSelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Project Name" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="PrioritySelect">Priority Level</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="PrioritySelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="High" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="BugTypeSelect">Bug Type</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="BugTypeSelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Functional/Logical" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="BugFrequencySelect">Frequency</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="BugFrequencySelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Often" Value="1"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="ErrorCode">Error Code</label>
                <input type="text" class="form-control col-12" id="ErrorCode" />
            </div>

            <div class="form-group">
                <label for="BugDescription">Description</label>
                <textarea class="form-control col-12" id="BugDescription" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="SuggestedSolution">Suggested Solution(s)</label>
                <textarea class="form-control col-12" id="SuggestedSolution" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="TicketScreenshot">Screenshot</label>
                <input type="file" class="form-control-file" id="TicketScreenshot">
            </div>

            <button type="button" class="btn btn-primary">Create Ticket</button>
            <button type="button" class="btn btn-secondary">Save</button>
            <button type="button" class="btn btn-link">Cancel</button>

        </div>
    </div>

</asp:Content>
