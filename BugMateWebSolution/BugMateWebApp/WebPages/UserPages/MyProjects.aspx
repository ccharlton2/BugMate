<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyProjects.aspx.cs" Inherits="BugMateWebApp.WebPages.UserPages.MyProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
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

            <div class="col-lg-6">
                <div class="dashboard-items-container">
                    <div class="dashboard-component-header">
                        <h3>All Projects</h3>
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
                            <p class="item-left">Status: No Longer Supported</p>
                            <button class="btn btn-info item-right">Show All Tickets</button>
                        </div>

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
                            <p class="item-left">Status: No Longer Supported</p>
                            <button class="btn btn-info item-right">Show All Tickets</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
