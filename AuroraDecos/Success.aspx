<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="AuroraDecos.Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navPlaceHolder" runat="server">
    <div class="d-flex flex-column justify-content-evenly align-items-center">
        <br />
        <asp:Image ID="imgSuccess" runat="server" ImageUrl="~/Img/order.png" Height="200px" Width="200px"/><br />
        <h2 class="text-success">Order Placed Successfully, <br/> Thank you for shopping with us!</h2><br />
        <asp:HyperLink ID="hlContinueShopping" runat="server" NavigateUrl="~/Home.aspx" Font-Size="18px">Shop Again!</asp:HyperLink>
        <br /><br /><br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
