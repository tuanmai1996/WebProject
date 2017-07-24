﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BackEndPage.master" AutoEventWireup="true" CodeFile="OrderMng.aspx.cs" Inherits="Admin_OrderMng" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <h3>Orders' Info</h3>
    <br />
    <br />
    <asp:Gridview runat="server" ID="grvHD" AutoGenerateColumns="False" Width="100%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black" CssClass="Middle">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
        <asp:BoundField DataField="UserID" HeaderText="User ID" />
        <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:BoundField DataField="OrderStatus" HeaderText="Status" />
        <asp:TemplateField HeaderText="Shipped">
            <ItemTemplate>
                <asp:Button ID="btnShipped"  runat="server" Text="Shipped" Onclick="btnShipped_Click" CommandArgument='<%#Eval("OrderID") %>'></asp:Button>
            </ItemTemplate>
        </asp:TemplateField>
       
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lbtnDetail" runat="server" Text="Detail" Onclick="lbtnDetail_Click" CommandArgument='<%#Eval("OrderID") %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
       
    </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:Gridview>
</asp:Content>

