<%@ Page Title="Register User" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <form id="form1" method="post" action="#" runat="server">
        <asp:Label ID="lblregUser" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="tbxregUser" runat="server"></asp:TextBox>     
        <br />
        <asp:Label ID="lblregPass" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="tbxregPass" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click1" />
        <br />
    </form>
    <asp:Literal ID="registerNote" runat="server"></asp:Literal>
</asp:Content>

