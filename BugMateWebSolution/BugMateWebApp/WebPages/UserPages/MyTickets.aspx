<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyTickets.aspx.cs" Inherits="BugMateWebApp.WebPages.UserPages.MyTickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
                            <p class="item-right">Status: Open</p>
                            <p>Created: 3 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Medium</p>
                            <p>Type: API</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 5 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 2 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 10 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 17 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Non-Critical</p>
                            <p>Type: Database</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 4 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="dashboard-items-container">
                    <div class="dashboard-component-header">
                        <h3>All Tickets</h3>
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
                            <p class="item-right">Status: Open</p>
                            <p>Created: 3 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Medium</p>
                            <p>Type: API</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 5 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 2 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p class="item-right">Status: Open</p>
                            <p>Created: 10 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p class="item-right">Status: Closed</p>
                            <p>Created: 17 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Non-Critical</p>
                            <p>Type: Database</p>
                            <p class="item-right">Status: Closed</p>
                            <p>Created: 4 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <button type="button" class="btn btn-info item-right">More Info</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="dashboard-items-container">
                    <div class="dashboard-component-header">
                        <h3>Saved Tickets</h3>
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
                            <a href="../Ticket-Creation.aspx" class="btn btn-primary item-right">Edit</a>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Medium</p>
                            <p>Type: API</p>
                            <p>Created: 5 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <a href="../Ticket-Creation.aspx" class="btn btn-primary item-right">Edit</a>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p>Created: 2 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <a href="../Ticket-Creation.aspx" class="btn btn-primary item-right">Edit</a>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p>Created: 10 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <a href="../Ticket-Creation.aspx" class="btn btn-primary item-right">Edit</a>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Low</p>
                            <p>Type: GUI</p>
                            <p>Created: 17 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <a href="../Ticket-Creation.aspx" class="btn btn-primary item-right">Edit</a>
                        </div>

                        <div class="dashboard-item">
                            <h4 class="item-center">Project Name</h4>
                            <p class="item-right">Priority: Non-Critical</p>
                            <p>Type: Database</p>
                            <p>Created: 4 days ago</p>
                            <i class="fas fa-ticket-alt fa-2x item-left"></i>
                            <a href="../Ticket-Creation.aspx" class="btn btn-primary item-right">Edit</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</asp:Content>
