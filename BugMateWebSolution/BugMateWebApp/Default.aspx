<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BugMateWebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4">
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
                            <p>Created: 3 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Medium</p>
                            <p>Type: API</p>
                            <p>Created: 5 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p>Created: 2 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p>Created: 10 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p>Created: 17 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Non-Critical</p>
                            <p>Type: Database</p>
                            <p>Created: 4 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-5">
                <div class="dashboard-items-container">
                    <div class="dashboard-component-header">
                        <h3>Current Projects</h3>
                    </div>
                    <input
                        class="form-control"
                        id="ticket-search"
                        type="text"
                        placeholder="Search"
                        aria-label="Search" />
                    <div class="items-overflow">
                        <div class="dashboard-item-alt dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p>Project Manager: Jimmy John</p>
                            <p>Date Started: 2020/03/17</p>
                            <p class="item-description">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut
                  diam lacus, volutpat nec lorem nec, imperdiet lacinia magna.
                  Vivamus lobortis ligula eu nulla pellentesque consectetur
                  vitae eget nibh. Vivamus vitae elit tincidunt, porta nulla
                  sed, ultricies metus. Pellentesque quis semper orci, et
                  euismod ipsum. Aliquam erat volutpat. Morbi faucibus, sapien
                  id tempus laoreet, felis metus elementum metus, sit amet
                  hendrerit nisi enim eu enim. Sed ac ligula congue, vehicula
                  tortor ultricies, aliquet nulla. Vivamus molestie urna a
                  scelerisque mollis. Nunc.
                            </p>
                            <p>Next Iteration Due: 2020/04/10</p>
                            <p class="item-left">Number of Bugs: 11</p>
                            <p class="item-left">Status: Maintenance</p>
                            <button class="btn btn-info item-right">Show All Tickets</button>
                        </div>

                        <div class="dashboard-item-alt dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p>Project Manager: Jenny John</p>
                            <p>Date Started: 2020/04/27</p>
                            <p class="item-description">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut
                  diam lacus, volutpat nec lorem nec, imperdiet lacinia magna.
                  Vivamus lobortis ligula eu nulla pellentesque consectetur
                  vitae eget nibh. Vivamus vitae elit tincidunt, porta nulla
                  sed, ultricies metus. Pellentesque quis semper orci, et
                  euismod ipsum. Aliquam erat volutpat. Morbi faucibus, sapien
                  id tempus laoreet, felis metus elementum metus, sit amet
                  hendrerit nisi enim eu enim. Sed ac ligula congue, vehicula
                  tortor ultricies, aliquet nulla. Vivamus molestie urna a
                  scelerisque mollis. Nunc.
                            </p>
                            <p>Next Iteration Due: 2020/07/21</p>
                            <p class="item-left">Number of Bugs: 11</p>
                            <p class="item-left">Status: In Development</p>
                            <button class="btn btn-info item-right">Show All Tickets</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3">
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
                                <i class="fas fa-comment fa-2x item-right"></i>
                            </a>
                            <span class="online-status">Last Online: 11:00</span>
                        </div>

                        <div class="dashboard-item">
                            <img
                                src="/img/placeholder-profile-image.jpg"
                                alt="Profile picture" />
                            <p class="item-right">Role: Team Member</p>
                            <p class="member-name">Jenny John</p>
                            <a href="#">
                                <i class="fas fa-comment fa-2x item-right"></i>
                            </a>
                            <span class="online-status">Last Online: 11:02</span>
                        </div>

                        <div class="dashboard-item">
                            <img
                                src="/img/placeholder-profile-image.jpg"
                                alt="Profile picture" />
                            <p class="item-right">Role: Team Member</p>
                            <p class="member-name">Bob John</p>
                            <a href="#">
                                <i class="fas fa-comment fa-2x item-right"></i>
                            </a>
                            <span class="online-status">Last Online: 11:02</span>
                        </div>

                        <div class="dashboard-item">
                            <img
                                src="/img/placeholder-profile-image.jpg"
                                alt="Profile picture" />
                            <p class="item-right">Role: Team Member</p>
                            <p class="member-name">Motley John</p>
                            <a href="#">
                                <i class="fas fa-comment fa-2x item-right"></i>
                            </a>
                            <span class="online-status">Last Online: 11:02</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
