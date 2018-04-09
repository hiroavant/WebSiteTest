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
    <asp:formview runat="server" DataSourceID="SqlDataSource" DefaultMode="Insert" AllowPaging="True" DataKeyNames="Product_ID">
        <EditItemTemplate>
            Product_ID:
            <asp:DynamicControl ID="Product_IDDynamicControl" runat="server" DataField="Product_ID" Mode="ReadOnly" />
            <br />
            Product_Name:
            <asp:DynamicControl ID="Product_NameDynamicControl" runat="server" DataField="Product_Name" Mode="Edit" />
            <br />
            Product_Description:
            <asp:DynamicControl ID="Product_DescriptionDynamicControl" runat="server" DataField="Product_Description" Mode="Edit" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="Insert" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Product_ID:
            <asp:DynamicControl ID="Product_IDDynamicControl" runat="server" DataField="Product_ID" Mode="Insert" ValidationGroup="Insert" />
            <br />
            Product_Name:
            <asp:DynamicControl ID="Product_NameDynamicControl" runat="server" DataField="Product_Name" Mode="Insert" ValidationGroup="Insert" />
            <br />
            Product_Description:
            <asp:DynamicControl ID="Product_DescriptionDynamicControl" runat="server" DataField="Product_Description" Mode="Insert" ValidationGroup="Insert" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Product_ID:
            <asp:DynamicControl ID="Product_IDDynamicControl" runat="server" DataField="Product_ID" Mode="ReadOnly" />
            <br />
            Product_Name:
            <asp:DynamicControl ID="Product_NameDynamicControl" runat="server" DataField="Product_Name" Mode="ReadOnly" />
            <br />
            Product_Description:
            <asp:DynamicControl ID="Product_DescriptionDynamicControl" runat="server" DataField="Product_Description" Mode="ReadOnly" />
            <br />

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

        </ItemTemplate>
</asp:formview>
        </form>
</asp:Content>

