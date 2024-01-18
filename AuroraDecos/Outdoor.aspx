<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Outdoor.aspx.cs" Inherits="AuroraDecos.Outdoor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navPlaceHolder" runat="server">
    <h2 class="text-center subheadings">
        <asp:Label ID="Label10" runat="server" Text="Outdoor Decos" CssClass="text-success"></asp:Label>
    </h2>

     <asp:Image ID="backImage" ImageAlign="Middle" CssClass="w-100 align-content-center" runat="server" ImageUrl="~/IMG/outdoor2.jpg" Width="900px" Height="750px" />

    <div id="divTblProduct" class="d-flex justify-content-center w-60">
        <div>
            <table id="tblProductss">

                <tr>
                    <td>
                        <div>
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="OutdoorCategoryDataSource" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" RepeatColumns="6" DataKeyField="Id">

                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />

                                <ItemTemplate>
                                    <asp:Label ID="lblhiddenCategoryId" runat="server" Text='<%# Eval("Id") %>' Visible="False" />

                                    <asp:ImageButton ID="ImageButtonCategory" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="170px" CommandArgument='<%#Eval("Id")%>' OnClick="ImageButtonCategory_Click" />
                                    <br />

                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' CssClass="categoryName" />
                                    <br />
                                    <br />

                                </ItemTemplate>

                            </asp:DataList>
                            <asp:SqlDataSource ID="OutdoorCategoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AuroraConnectionString %>" SelectCommand="SELECT [Id], [Name], [ImagePath] FROM [tblItemsCatgory] WHERE ([CategoryId] = @CategoryId)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="20" Name="CategoryId" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                    </td>
                </tr>

                <tr>
                    <td>
                        <div>
                            <asp:DataList ID="DataList2" runat="server" DataSourceID="ProductItemsDataSource" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" RepeatColumns="3" Width="800px">

                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                <HeaderTemplate>
                                    <h3 class="text-center">Products</h3>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <asp:Label ID="lblhiddenItemId" runat="server" Text='<%# Eval("Id") %>' Visible="False" />

                                    <asp:ImageButton ID="ImageButtonItem" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="200px" CommandArgument='<%#Eval("Id")%>' OnClick="ImageButtonItem_Click" />
                                    <br />

                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' CssClass="prodName" />
                                    <br />
                                    <br />

                                </ItemTemplate>

                            </asp:DataList>
                             <asp:Label ID ="Label12" runat="server" Text="" CssClass="visually-hidden"></asp:Label>
                            <asp:SqlDataSource ID="ProductItemsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AuroraConnectionString %>" SelectCommand="SELECT * FROM [tblDecoProducts] WHERE ([ItemCategoryId] = @ItemCategoryId)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label12" Name="ItemCategoryId" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                    </td>
                </tr>

            </table>

            <div id="divDecoProductDetail">
                <asp:Table ID="tblProductDetail" runat="server" Visible="false">

                    <asp:TableRow>
                        <asp:TableCell class="auto-style2" HorizontalAlign="Center" VerticalAlign="Middle">
                            <table id="tblProductItemDetail">

                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblDecoId" runat="server" Visible="false" Text=""></asp:Label>
                                        <asp:Label ID="lblProdName" runat="server" Text="Outdoor Decos" Font-Bold="True" ForeColor="Maroon" Font-Size="X-Large"></asp:Label>
                                        <asp:SqlDataSource ID="DecoItemDetails" runat="server" ConnectionString="<%$ ConnectionStrings:AuroraConnectionString %>" SelectCommand="SELECT * FROM [tblDecoProducts] ORDER BY [Name]"></asp:SqlDataSource>
                                    </td>
                                </tr>

                                <tr>
                                    <td aria-multiline="True" class="auto-style1" colspan="2">
                                        <asp:Label ID="lblDescription1" runat="server" Text="Outdoor Decos description" Width="500px"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblPricelbl" runat="server" Text="Price : $" ForeColor="Maroon" Font-Size="Large" Font-Bold="True"></asp:Label>
                                        <asp:Label ID="lblPrice" runat="server" Text="99.99" ForeColor="Maroon" Font-Size="Large" Font-Bold="True"></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblQuantity" runat="server" Text="Quantity:  "></asp:Label>
                                        <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvAddToCart" runat="server" ControlToValidate="txtQuantity" class="text-danger" ErrorMessage=" Quantity is required! " ValidationGroup="Grp"></asp:RequiredFieldValidator><br />
                                        <asp:RangeValidator ID="rvQuantity" runat="server" ControlToValidate="txtQuantity" MaximumValue="100" MinimumValue="1" SetFocusOnError="True" Type=" Integer" class="text-danger" ValidationGroup="Grp" ErrorMessage=" Quantity should be between 1 to 100 "></asp:RangeValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                        <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" BackColor="#006666" CssClass="btn rounded-1 text-center" ForeColor="White" Width="150px" Height="50px" Font-Size="Large" ValidationGroup="Grp" OnClick="btnAddToCart_Click"/>&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnGoToCart" runat="server" Text="Go To Cart" CssClass="btn rounded-1 text-center"  BackColor="#990033" ForeColor="White" Width="150px" Height="50px" Font-Size="Large" OnClick="btnGoToCart_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:TableCell>
                        <asp:TableCell class="auto-style2" HorizontalAlign="Center" VerticalAlign="Middle">
                            <asp:Image ID="prodImg" runat="server" ImageUrl="~/IMG/outdoor.jpg" Width="60%" />
                        </asp:TableCell>
                    </asp:TableRow>
                    
                </asp:Table>


            </div>

        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder" runat="server">
</asp:Content>