<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Product Details</h1>
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
    <asp:Image ID="ImageProducts" runat="server" Height="300px" Width="300px" />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Product_ID:
            <asp:TextBox ID="Product_IDTextBox" runat="server" Text='<%# Bind("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:TextBox ID="Product_NameTextBox" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:TextBox ID="Product_DescriptionTextBox" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Product_Name:
            <asp:Label ID="Product_NameLabel" runat="server" Text='<%# Bind("Product_Name") %>' />
            <br />
            Product_Description:
            <asp:Label ID="Product_DescriptionLabel" runat="server" Text='<%# Bind("Product_Description") %>' />
            <br />

        </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([Product_ID] = @Product_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_ID" QueryStringField="Product_ID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>

