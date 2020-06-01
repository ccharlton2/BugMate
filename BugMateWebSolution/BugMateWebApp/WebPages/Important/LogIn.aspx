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
            <div class="dashboard-items-container">
                <a href="New-User-Creation.aspx" class="item-left mb-4">New members sign up here!</a>
                <div class="form-group">
                    <label for="UserEmail" class="sr-only">Username</label>
                    <asp:TextBox runat="server" id="UserEmail" CssClass="form-control col-12" placeholder="Email address" required="" autofocus=""></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="UserPassword" class="sr-only">Password</label>
                    <asp:TextBox runat="server" TextMode="Password" id="UserPassword" CssClass="form-control col-12" placeholder="Password" required=""></asp:TextBox>
                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                </div>
                <asp:Label runat="server" ID="ErrorMessage"></asp:Label>
                <asp:Label runat="server" ID="Results"></asp:Label>
                <asp:Button ID="UserSignInButton" runat="server" CssClass="btn btn-lg btn-primary btn-block col-12" type="submit" Text="Sign In" OnClick="UserSignInButton_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <asp:LinkButton ID="UserSignUp" href="New-User-Creation.aspx" runat="server" CssClass="btn btn-lg btn-secondary btn-block" CausesValidation="false">Sign Up</asp:LinkButton>
            </div>
        </div>
    </form>
    <p>&copy; <%: DateTime.Now.Year %> - Christian Charlton</p>
</body>
</html>
