<%@ Page Title="Create A Ticket" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ticket-Creation.aspx.cs" Inherits="BugMateWebApp.WebPages.Ticket_Creation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="dashboard-component-header">
            <h2>Create A Ticket</h2>
        </div>

        <asp:DataList ID="UserMessages" runat="server">
                <ItemTemplate>
                    <%# Container.DataItem %>
                </ItemTemplate>
            </asp:DataList>

        <div class="dashboard-items-container">

            <div class="form-group">
                <label for="ProjectNameSelect">Project</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="ProjectNameSelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="PrioritySelect">Priority Level</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="PrioritySelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="High" Value="High"></asp:ListItem>
                    <asp:ListItem Text="Medium" Value="Medium"></asp:ListItem>
                    <asp:ListItem Text="Low" Value="Low"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="BugTypeSelect">Bug Type</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="BugTypeSelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Functional/Logical" Value="Functional/Logical"></asp:ListItem>
                    <asp:ListItem Text="Syntax Error" Value="Syntax"></asp:ListItem>
                    <asp:ListItem Text="Compilation Error" Value="Compilation"></asp:ListItem>
                    <asp:ListItem Text="Runtime Error" Value="Runtime"></asp:ListItem>
                    <asp:ListItem Text="Arithmetic Error" Value="Arithmetic"></asp:ListItem>
                    <asp:ListItem Text="Resource Error" Value="Resource"></asp:ListItem>
                    <asp:ListItem Text="Interface/API Error" Value="Interface/API"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="BugFrequencySelect">Frequency</label>
                <asp:DropDownList runat="server" CssClass="form-control col-12" ID="BugFrequencySelect">
                    <asp:ListItem Text="Select..." Value="0"></asp:ListItem>
                    <asp:ListItem Text="Very Often" Value="Very Often"></asp:ListItem>
                    <asp:ListItem Text="Often" Value="Often"></asp:ListItem>
                    <asp:ListItem Text="Rare" Value="Rare"></asp:ListItem>
                    <asp:ListItem Text="Very Rare" Value="Very Rare"></asp:ListItem>
                    <asp:ListItem Text="Unicorn" Value="Unicorn"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="ErrorCode">Error Code</label>
                <asp:TextBox ID="ErrorCode" runat="server" CssClass="form-control col-12"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="BugDescription">Description</label>
                <textarea runat="server" class="form-control col-12" id="BugDescription" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="SuggestedSolution">Suggested Solution(s)</label>
                <textarea runat="server" class="form-control col-12" id="SuggestedSolution" rows="3"></textarea>
            </div>

            <div class="form-group">
                <label for="TicketScreenshot">Screenshot</label>
                <input runat="server" type="file" class="form-control-file" id="TicketScreenshot">
            </div>

            <asp:Button ID="CreateTicketButton" runat="server" Text="Create Ticket" CssClass="btn btn-primary" OnClick="CreateTicketButton_Click"/>
            <asp:Button ID="SaveTicketButton" runat="server" Text="Save" CssClass="btn btn-secondary" OnClick="SaveTicketButton_Click"/>
            <a href="../../Default.aspx" class="btn btn-link">Cancel</a>
        </div>
    </div>
</asp:Content>
