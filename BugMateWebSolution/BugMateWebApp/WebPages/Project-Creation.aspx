<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project-Creation.aspx.cs" Inherits="BugMateWebApp.WebPages.Project_Creation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="dashboard-component-header">
            <h2>Create A Project</h2>
        </div>

        <div class="dashboard-items-container">

            <div class="form-group">
                <label for="ProjectName">Project Name</label>
                <asp:TextBox runat="server" ID="ProjectName" CssClass="form-control col-12" placeholder="Project Name" required="True" autofocus="True"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="BugDescription">Description</label>
                <asp:TextBox runat="server" ID="BugDescription" TextMode="MultiLine" CssClass="form-control col-12" placeholder="Description" required="" autofocus=""></asp:TextBox>
            </div>

            <div class="form-check pb-4">
                <input runat="server" type="checkbox" class="form-check-input" id="ProjectMaintenance">
                <label class="form-check-label" for="ProjectMaintenance">Maintenance</label>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="Check this box if the project is in a maintenance state rather than in development.">
                    <i class="far fa-question-circle"></i>
                </a>
            </div>

            <div class="form-group">
                <label for="NextIterationDate" class="col-form-label">Next Iteration Date</label>
                <%--<asp:TextBox runat="server" ID="NextIterationDate" CssClass="form-control col-12" TextMode="Date" placeholder="Next Iteration Date" required="" autofocus=""></asp:TextBox>--%>
                <input runat="server" class="form-control col-12" type="date" value="" id="NextIterationDate">
            </div>

            <asp:Button ID="CreateProject" runat="server" CssClass="btn btn-primary" type="submit" Text="Create Project" />
            <asp:Button ID="SaveProject" runat="server" CssClass="btn btn-secondary" type="submit" Text="Save" />
            <a href="../../Default.aspx" class="btn btn-link">Cancel</a>

        </div>
    </div>
</asp:Content>
