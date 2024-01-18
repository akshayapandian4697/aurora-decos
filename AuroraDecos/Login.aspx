<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AuroraDecos.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navPlaceHolder" runat="server">

    <h2 class="text-center subheadings">
        <asp:Label ID="Label10" runat="server" Text="Login" CssClass="text-success"></asp:Label>
        
    </h2>

    <div id="logintable" class="d-flex justify-content-center border-1">

        <div>
            <table id="tblLogin" class="auto-style1 d-flex justify-content-around">
                <tr>
                    <td>
                        <asp:Label ID="lblFirstname" runat="server" Text="First name:  "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                        <span>
                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="RFV1" ControlToValidate="txtFirstname"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblLastname" runat="server" Text="Last name:  "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
                         <span>
                             <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="RFV1" ControlToValidate="txtLastname"></asp:RequiredFieldValidator>
                         </span>
                    </td>
                   
                </tr>
            </table>
            
            <div id="loginbuttons">
                <br />
                <div class="d-flex justify-content-center">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success w-50" OnClick="btnLogin_Click" ValidationGroup="RFV1" />
                </div>
                <br />
                 <div class="d-flex justify-content-center">
                    <asp:Button ID="btnCancelLogin" runat="server" Text="Cancel" CssClass="btn btn-outline-danger" OnClick="btnCancelLogin_Click" Width="140px"/>
                </div>
                <br /><br /><br /><br /><br /><br /><br /><br />
            </div>

        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
