<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Admin_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 <form id="editform1" runat="server">
     <asp:Image ID="ImageProducts" runat="server" />   
     <asp:FormView ID="EditView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1">   
            <EditItemTemplate>
                Product_ID:
                <asp:DynamicControl ID="Product_IDDynamicControl" runat="server" DataField="Product_ID" Mode="Edit" />
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
             
            </ItemTemplate>
        </asp:FormView>
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

