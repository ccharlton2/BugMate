<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BugMateWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="dashboard-items-container">
                    <div class="dashboard-component-header">
                        <h3>Open Tickets</h3>
                    </div>
                    <input
                        class="form-control"
                        id="ticket-search"
                        type="text"
                        placeholder="Search"
                        aria-label="Search" />
                    <div class="items-overflow">
                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: High</p>
                            <p>Type: Functional/Logical</p>
                            <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                            <p>Created: 3 days ago</p>
                            <button type="button" class="btn btn-info">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Medium</p>
                            <p>Type: API</p>
                            <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                            <p>Created: 5 days ago</p>
                            <button type="button" class="btn btn-info">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                            <p>Created: 2 days ago</p>
                            <button type="button" class="btn btn-info">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                            <p>Created: 10 days ago</p>
                            <button type="button" class="btn btn-info">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                            <p>Created: 17 days ago</p>
                            <button type="button" class="btn btn-info">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Non-Critical</p>
                            <p>Type: Database</p>
                            <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                            <p>Created: 4 days ago</p>
                            <button type="button" class="btn btn-info">More Info</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="dashboard-items-container">
                    <div class="dashboard-component-header">
                        <h2>Team Members</h2>
                        <a href="#" class="add-member">
                            <i class="fas fa-user-plus fa-2x"></i>
                        </a>
                    </div>
                    <input
                        class="form-control"
                        id="member-search"
                        type="text"
                        placeholder="Search"
                        aria-label="Search" />

                    <div class="items-overflow">
                        <div class="dashboard-item">
                            <img
                                src="/img/placeholder-profile-image.jpg"
                                alt="Profile picture" />
                            <p class="item-right">Role: Project Manager</p>
                            <p class="member-name">Jimmy John</p>
                            <a href="#">
                                <i class="fas fa-comment fa-2x"></i>
                            </a>
                            <span class="time-right">Last Online: 11:00</span>
                        </div>

                        <div class="dashboard-item">
                            <img
                                src="/img/placeholder-profile-image.jpg"
                                alt="Profile picture" />
                            <p class="item-right">Role: Team Member</p>
                            <p class="member-name">Jenny John</p>
                            <a href="#">
                                <i class="fas fa-comment fa-2x"></i>
                            </a>
                            <span class="time-right">Last Online: 11:02</span>
                        </div>

                        <div class="dashboard-item">
                            <img
                                src="/img/placeholder-profile-image.jpg"
                                alt="Profile picture" />
                            <p class="item-right">Role: Team Member</p>
                            <p class="member-name">Bob John</p>
                            <a href="#">
                                <i class="fas fa-comment fa-2x"></i>
                            </a>
                            <span class="time-right">Last Online: 11:02</span>
                        </div>

                        <div class="dashboard-item">
                            <img
                                src="/img/placeholder-profile-image.jpg"
                                alt="Profile picture" />
                            <p class="item-right">Role: Team Member</p>
                            <p class="member-name">Motley John</p>
                            <a href="#">
                                <i class="fas fa-comment fa-2x"></i>
                            </a>
                            <span class="time-right">Last Online: 11:02</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
