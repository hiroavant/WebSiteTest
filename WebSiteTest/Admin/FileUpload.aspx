<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileUpload.aspx.cs" Inherits="Admin_FileUpload" %>

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
    <form id="fileUpForm1" runat="server">
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    </form>
    <asp:Literal ID="literalUpload1" runat="server"></asp:Literal>
    </asp:Content>

