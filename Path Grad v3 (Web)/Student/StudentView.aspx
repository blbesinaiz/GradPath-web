<%@ Page Title="Student View" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentView.aspx.cs" Inherits="Path_Grad_v3__Web_.Student.StudentView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<h1>Welcome, &quot;Name&quot;</h1>
<div class="jumbotron">
    <div class="col-md-4">
        <asp:Panel ID="Panel1" runat="server" Height="137px" Width="264px">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="Image1" runat="server" Height="76px" Width="95px" />
            <br />
        </asp:Panel>
        </div>

        <asp:Panel ID="Panel2" runat="server" Height="137px" Width="264px">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" Height="76px" Width="95px" />
            <br />
        </asp:Panel>
        </div>
</div>

<div class="row">
    <div class="col-md-4">
        <h2>Getting started</h2>
        <p>
            ASP.NET MVC gives you a powerful, patterns-based way to build dynamic websites that
            enables a clean separation of concerns and gives you full control over markup
            for enjoyable, agile development.
        </p>
        <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301865">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Get more libraries<asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View2" runat="server">
            </asp:View>
            <asp:View ID="View1" runat="server">
            </asp:View>
            </asp:MultiView>
        </h2>
        <p>NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.</p>
        <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301866">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Web Hosting</h2>
        <p>You can easily find a web hosting company that offers the right mix of features and price for your applications.</p>
        <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301867">Learn more &raquo;</a></p>
    </div>
</div>
</asp:Content>
