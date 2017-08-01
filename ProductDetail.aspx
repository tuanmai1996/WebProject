﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="Page_ProductDetail" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" runat="Server">
    <!-- Breadcrumb -->
    <ol class="breadcrumb">
        <li><a href="Index.aspx">Home</a></li>
        <li><a href="#">
            <asp:Label ID="lblTenDM" runat="server"></asp:Label>
        </a></li>
        <li><a href="#">
            <asp:Label ID="lblTenSP" runat="server"></asp:Label>
        </a></li>
    </ol>
    <!-- End Breadcrumb -->

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="col-md-3 col-lg-3 " align="center">
                    <asp:Image ID="img" runat="server" Height="200px" Width="300px" /><br />
                </div>

            </div>
            <div class="col-md-8">
                <h2>
                    <asp:Label runat="server" ID="lblTen"></asp:Label></h2>
                <div class=" col-md-9 col-lg-9 ">
                    <table class="table table-user-information">
                        <tbody>
                            <tr>
                                <td>Supplier:</td>
                                <td>
                                    <asp:Label runat="server" ID="lblNCC"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Status:</td>
                                <td>
                                    <asp:Label runat="server" ID="lblTT"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Price:</td>
                                <td>
                                    <asp:Label runat="server" ID="lblGia"></asp:Label></td>
                            </tr>
                            <tr>
                                <td>Quantity:</td>
                                <td>
                                    <asp:TextBox runat="server" CssClass="form-control" Style="width: 50px" ID="txtSL">1</asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Button CssClass="btn btn-default" Style="width: 150px" Text="Add to cart" ID="btnAdd" runat="server" />
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>

</asp:Content>


