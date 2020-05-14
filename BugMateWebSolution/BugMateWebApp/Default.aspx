<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BugMateWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="container">
            <div class="container">
                <div class="col-md-9">
                    <div class="dashboard-items-container">
                        <div class="open-tickets-header">
                            <h3>Open Tickets</h3>
                            <input
                                class="form-control"
                                id="ticket-search"
                                type="text"
                                placeholder="Search"
                                aria-label="Search" />
                        </div>
                        <div class="items-overflow">
                            <div class="dashboard-item">
                                <h4 class="item-center">Project Name</h4>
                                <p class="item-right">Priority: High</p>
                                <p>Type: Functional/Logical</p>
                                <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                                <button type="button" class="btn btn-info">More Info</button>
                            </div>

                            <div class="dashboard-item">
                                <h4 class="item-center">Project Name</h4>
                                <p class="item-right">Priority: Medium</p>
                                <p>Type: API</p>
                                <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                                <button type="button" class="btn btn-info">More Info</button>
                            </div>

                            <div class="dashboard-item">
                                <h4 class="item-center">Project Name</h4>
                                <p class="item-right">Priority: Low</p>
                                <p>Type: GUI</p>
                                <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                                <button type="button" class="btn btn-info">More Info</button>
                            </div>

                            <div class="dashboard-item">
                                <h4 class="item-center">Project Name</h4>
                                <p class="item-right">Priority: Low</p>
                                <p>Type: GUI</p>
                                <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                                <button type="button" class="btn btn-info">More Info</button>
                            </div>

                            <div class="dashboard-item">
                                <h4 class="item-center">Project Name</h4>
                                <p class="item-right">Priority: Low</p>
                                <p>Type: GUI</p>
                                <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                                <button type="button" class="btn btn-info">More Info</button>
                            </div>

                            <div class="dashboard-item">
                                <h4 class="item-center">Project Name</h4>
                                <p class="item-right">Priority: Low</p>
                                <p>Type: Database</p>
                                <i class="fas fa-ticket-alt fa-2x ticket-icon"></i>
                                <button type="button" class="btn btn-info">More Info</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="col-md-3">
                <div class="dashboard-items-container items-overflow">
                    <div class="team-members-header">
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
</asp:Content>
