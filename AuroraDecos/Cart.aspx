<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AuroraDecos.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navPlaceHolder" runat="server">

    <div class="d-flex flex-column justify-content-center align-items-center">
        <h2>Your Shopping Cart</h2><br />
        <table>
            <tr>
                <td>
                    <div>
                        <asp:ListBox ID="lbxCart" runat="server" class="lbxCart" Height="150px" Width="420px"></asp:ListBox>&nbsp;&nbsp;&nbsp;
                    </div><br />
                </td>
                <td>
                    <div>
                        <asp:Button ID="btnRemoveItem" runat="server" Text="Remove Item" Font-Size="18px" CssClass="btn btn-warning" width="140px" OnClick="btnRemoveItem_Click"/>
                    </div><br />
                    <div>
                        <asp:Button ID="btnEmptyCart" runat="server" Text="Empty Cart" Font-Size="18px" CssClass="btn btn-danger" width="140px" OnClick="btnEmptyCart_Click"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" Font-Size="18px" BackColor="#006FFF" CssClass="btn rounded-1 text-center" ForeColor="White" width="200px" OnClick="btnContinue_Click"/>&nbsp;&nbsp;
                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" Font-Size="18px" CssClass="btn btn-success" width="140px" OnClick="btnCheckout_Click" />
                    </div>
                </td>
            </tr>
        </table>
        <br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
