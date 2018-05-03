<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:HyperLink ID="HomeID" runat="server" NavigateUrl="~/Default.aspx" Enabled="False">Home</asp:HyperLink>
<br />
<asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/Contacts.aspx">Contact Us</asp:HyperLink>
<br />
<asp:HyperLink ID="lnkLog" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
<br />
<asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <form id="form1" runat="server">
<h2>Avant's Toy Store</h2>
    <p>Hello and welcome to my toy store</p>
    <asp:Repeater ID="productRep1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><ul></HeaderTemplate>
        <ItemTemplate>
            <li>
                <a href="<%#Eval("Product_ID","Products.aspx?Product_ID={0}") %>"><%#Eval("Product_Name")%> </a>
            </li>
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]" OldValuesParameterFormatString="original_{0}">
        </asp:SqlDataSource>
    </form>
</asp:Content>

