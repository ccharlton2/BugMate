<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="BugMateWebApp.WebPages.Important.LogIn" %>

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
<body class="text-center">
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
                <i class="fas fa-bug mb-4 fa-5x"></i>
                <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

                <a href="New-User-Creation.aspx" class="item-left mb-4">New members sign up here!</a>
                <div class="form-group">
                    <label for="inputEmail" class="sr-only">Username</label>
                    <input type="email" id="inputEmail" class="form-control col-12" placeholder="Email address" required="" autofocus="">
                </div>

                <div class="form-group">
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" id="inputPassword" class="form-control col-12" placeholder="Password" required="">
                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                </div>

                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </div>
        <p>&copy; <%: DateTime.Now.Year %> - Christian Charlton</p>
    </form>
</body>
</html>
