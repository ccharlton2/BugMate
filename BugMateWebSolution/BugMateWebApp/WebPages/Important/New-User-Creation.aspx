<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New-User-Creation.aspx.cs" Inherits="BugMateWebApp.WebPages.Important.New_User_Creation" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <script src="https://kit.fontawesome.com/0e736147b8.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/dashboard-style.css" />

</head>
<body class="text-center container">
    <form runat="server" class="form-signin">

        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="container">
            <div class="dashboard-component-header">
                <h2>New Account Creation</h2>
            </div>
            <div class="dashboard-items-container" style="padding-bottom: 4em;">
                <div class="form-group">
                    <label for="NewUserFirstName" class="item-left">First Name</label>
                    <input type="text" class="form-control col-12" id="NewUserFirstName" placeholder="First Name" />
                </div>

                <div class="form-group">
                    <label for="NewUserLastName" class="item-left">Last Name</label>
                    <input type="text" class="form-control col-12" id="NewUserLastName" placeholder="Last Name" />
                </div>


                <div class="form-group">
                    <label for="NewUsername" class="item-left">Username</label>
                    <input type="text" class="form-control col-12" id="NewUsername" placeholder="Username" />
                </div>

                <div class="form-group">
                    <label for="NewUserEmail" class="item-left">Email (Optional)</label>
                    <input type="text" class="form-control col-12" id="NewUserEmail" placeholder="Email address" />
                </div>

                <div class="form-group">
                    <label for="NewUserPassword" class="item-left">Password</label>
                    <input type="password" id="NewUserPassword" class="form-control col-12" placeholder="Password" required="">
                </div>

                <div class="form-group">
                    <label for="NewUserPasswordConfirm" class="item-left">Confirm Password</label>
                    <input type="password" id="NewUserPasswordConfirm" class="form-control col-12" placeholder="Confirm Password" required="">
                </div>

                <div class="form-group">
                    <label for="RolePermission" class="item-left">
                        Role Password (optional)<a href="#" data-toggle="tooltip" data-placement="bottom" title="Applicable to user's who have been given a Role Password that will enable them to access higher level permissions.">
                            <i class="far fa-question-circle"></i>
                        </a>
                    </label>
                    <input type="text" class="form-control col-12" id="RolePermission" placeholder="Role Password" />
                </div>
                <button type="submit" class="btn btn-primary item-left">Create Account</button>
            </div>
        </div>
    </form>
    <p>&copy; <%: DateTime.Now.Year %> - Christian Charlton</p>
</body>
</html>
