<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<form id="form1" runat="server">
        <asp:label runat="server" text="Email: " id="lblLoginEmail"></asp:label>
        <asp:textbox runat="server" ID="txtLoginEmail"></asp:textbox>
        <br />
        <asp:label runat="server" text="Password: " id="lblLoginPassword"></asp:label>
        <asp:textbox runat="server" ID="txtLoginPassword"></asp:textbox>
        <br />
        <asp:button runat="server" text="Submit" id="BtnLoginSubmit" OnClick="BtnLoginSubmit_Click" />
        <br />
        <asp:Literal ID="litErrorLog" runat="server"></asp:Literal>
    </form>
</asp:Content>

