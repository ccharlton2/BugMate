<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project-Creation.aspx.cs" Inherits="BugMateWebApp.WebPages.Project_Creation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="dashboard-component-header">
            <h2>Create A Project</h2>
        </div>

        <div class="dashboard-items-container">

            <div class="form-group">
                <label for="ErrorCode">Project Name</label>
                <input type="text" class="form-control col-12" id="ProjectName" />
            </div>

            <div class="form-group">
                <label for="BugDescription">Description</label>
                <textarea class="form-control col-12" id="BugDescription" rows="3"></textarea>
            </div>

            <div class="form-check pb-4">
                <input type="checkbox" class="form-check-input" id="ProjectMaintenance">
                <label class="form-check-label" for="ProjectMaintenance">Maintenance</label>
                <a href="#" data-toggle="tooltip" data-placement="bottom" title="Check this box if the project is in a maintenance state rather than in development.">
                    <i class="far fa-question-circle"></i>
                </a>
            </div>

            <button type="button" class="btn btn-primary">Create Project</button>
            <button type="button" class="btn btn-secondary">Save</button>
            <button type="button" class="btn btn-link">Cancel</button>

        </div>
    </div>
</asp:Content>
