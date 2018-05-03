<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Admin_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:HyperLink ID="pageLink1" runat="server" Text="Home" NavigateUrl="~/Admin/index.aspx"></asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink2" runat="server" NavigateUrl="~/Admin/List.aspx">List Products</asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink3" runat="server" Enabled="False" NavigateUrl="~/Admin/Add.aspx">Add Products</asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink4" runat="server" NavigateUrl="~/Admin/Edit.aspx" Text="Edit Products"></asp:HyperLink>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1>Add Product</h1>
    <form id="addForm" method="post" runat="server">
    <asp:formview runat="server" DataSourceID="SqlDataSource1" DefaultMode="Insert" AllowPaging="True" DataKeyNames="Product_ID" ID="productAdd">
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
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
</asp:formview>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [tblProduct] WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([Product_ID], [Product_Name], [Product_Description]) VALUES (@Product_ID, @Product_Name, @Product_Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" UpdateCommand="UPDATE [tblProduct] SET [Product_Name] = @Product_Name, [Product_Description] = @Product_Description WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_ID" Type="String" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_ID" Type="String" />
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_Name" Type="String" />
                <asp:Parameter Name="Product_Description" Type="String" />
                <asp:Parameter Name="original_Product_ID" Type="String" />
                <asp:Parameter Name="original_Product_Name" Type="String" />
                <asp:Parameter Name="original_Product_Description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </form>
</asp:Content>

