<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="BugMateWebApp.WebPages.UserPages.MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-6">
            <img
                src="/img/placeholder-profile-image.jpg"
                alt="Profile picture" class="profile-bio-img" />
            <p>Joined: 2020/04/17</p>
            <p>Username: Bob Jones</p>
            <p>Role: Team Member</p>
            <button class="btn btn-info">Edit Profile</button>
            <div class="form-group">
                <label for="ProfileBio">Bio</label>
                <textarea class="form-control col-4" id="ProfileBio" rows="3"></textarea>
            </div>
        </div>
    </div>
</asp:Content>
