<%@ Page Title="List Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="Admin_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<asp:HyperLink ID="pageLink1" runat="server" Text="Home" NavigateUrl="~/Admin/index.aspx"></asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink2" runat="server" NavigateUrl="~/Admin/List.aspx" Enabled="False">List Products</asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink3" runat="server" NavigateUrl="~/Admin/Add.aspx">Add Products</asp:HyperLink>
    <br />
    <asp:HyperLink ID="pageLink4" runat="server" NavigateUrl="~/Admin/Edit.aspx" Text="Edit Products"></asp:HyperLink>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1>List of Products</h1>
    <form id="listForm1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" SortExpression="Product_ID" />
                <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
                <asp:BoundField DataField="Product_Description" HeaderText="Product_Description" SortExpression="Product_Description" />
                <asp:ButtonField CommandName="Edit" HeaderText="Edit?" ShowHeader="True" Text="Edit" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete?" ShowHeader="True" Text="Delete" />
                <asp:HyperLinkField DataNavigateUrlFields="Product_Id" DataNavigateUrlFormatString="FileUpload.aspx/?id={0}" HeaderText="Upload Image" Text="Upload Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [tblProduct]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblProduct] WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([Product_ID], [Product_Name], [Product_Description]) VALUES (@Product_ID, @Product_Name, @Product_Description)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblProduct] SET [Product_Name] = @Product_Name, [Product_Description] = @Product_Description WHERE [Product_ID] = @original_Product_ID AND (([Product_Name] = @original_Product_Name) OR ([Product_Name] IS NULL AND @original_Product_Name IS NULL)) AND (([Product_Description] = @original_Product_Description) OR ([Product_Description] IS NULL AND @original_Product_Description IS NULL))">
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

