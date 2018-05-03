<%@ Page Title="Member Main Page" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Member_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Main Page</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:HyperLink ID="OrderPLink" runat="server">Order Page</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
    </form>
</asp:Content>

