<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Contact Us</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:HyperLink ID="HomeID" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
<br />
<asp:HyperLink ID="lnkContact" runat="server" NavigateUrl="~/Contacts.aspx" Enabled="False">Contact Us</asp:HyperLink>
<br />
        <asp:HyperLink ID="lnkLog" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
        <br />
<asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div id="map">
        <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 4.887883, lng: 114.941971 },
                zoom: 20,
        });
        }
    </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmcdz9McdvzXCmUJh3Ak4kEsMo8RBZfmM&callback=initMap"async defer></script>
    </div>
    
    
    <h2>Contact Form</h2>
    <form id="contactForm1" runat="server">
    <asp:Label ID="lblcontactSubject" runat="server" Text="Subject: "></asp:Label>
    <p>
        <asp:TextBox ID="tbxcontactSubject" runat="server" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqcontactSubject" runat="server" ErrorMessage="Subject is required!" ForeColor="Red" ControlToValidate="tbxcontactSubject"></asp:RequiredFieldValidator>
    </p>
    <br />
   
    <asp:Label ID="lblcontactEmail" runat="server" Text="Email Address: "></asp:Label>
    <p>
        <asp:TextBox ID="tbxcontactEmail" runat="server" Width="200px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqcontactEmail" runat="server" ErrorMessage="Email Address is required!" ForeColor="Red" Visible="True" ControlToValidate="tbxcontactEmail"></asp:RequiredFieldValidator>
        </p>
    
    <asp:Label ID="lblcontactReason" runat="server" Text="Reasons: "></asp:Label>
    <p>
    <asp:TextBox ID="txtcontactReason" runat="server" Width="400px" Height="100px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill in your reason" ForeColor="Red" ControlToValidate="txtcontactReason"></asp:RequiredFieldValidator><br />
        </p>
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
        <br />
    
    <asp:Button ID="BtnContactSubmit" runat="server" Text="Submit" OnClick="BtnContactSubmit_Click" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />    
    </form>
</asp:Content>

