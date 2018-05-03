<%@ Page Title="index" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<asp:HyperLink ID="pageLink1" runat="server" Text="Home" NavigateUrl="~/Admin/index.aspx" Enabled="False"></asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink2" runat="server" NavigateUrl="~/Admin/List.aspx">List Products</asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink3" runat="server" NavigateUrl="~/Admin/Add.aspx">Add Products</asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink4" runat="server" NavigateUrl="~/Admin/Edit.aspx" Text="Edit Products"></asp:HyperLink>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <form id="form1" runat="server">
        <h3>Welcome Admin</h3>
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

