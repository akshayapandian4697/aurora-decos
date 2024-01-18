<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AuroraDecos.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navPlaceHolder" runat="server">

     <div id="navlinks" class="d-flex flex-column justify-content-center align-items-center">
        <asp:Image ID="backImage" CssClass="w-100" runat="server" ImageUrl="~/IMG/Decor.jpg" />

         <div>
            
             <table >
                 <tr>
                     <td colspan="2">
                         <p id="desc" class="text-center">
                             Experience pure luxury and ultimate comfort with Stressless, where quality and design meet. We can fully customize the designs to your liking. Create Your Dream Home At Your Own Pace.
                         </p>
                     </td>
                 </tr>
                 <tr>
                     <td align="center">
                         <asp:ImageButton ID="imgIndoor" runat="server" ImageUrl="~/IMG/indoor1.jpg" Width="400px" OnClick="btnIndoorProd_Click"/>
                         <h4 class="prod_category text-success">Indoor Products</h4>
                     </td>
                     <td align="center">
                          <asp:ImageButton ID="imgOutdoor"  runat="server" ImageUrl="~/IMG/outdoor.jpeg" Width="400px" OnClick="btnIOutoorProd_Click" />
                         <h4 class="prod_category text-success">Outdoor Products</h4>
                     </td>
                 </tr>
             </table>
            
         </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>
