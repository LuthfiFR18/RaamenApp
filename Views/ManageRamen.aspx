<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="ManageRamen.aspx.cs" Inherits="Raamen.Views.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridRamen" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnRowDeleting="Unnamed1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Broth" HeaderText="Broth" SortExpression="Broth" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="MeatId" HeaderText="MeatId" SortExpression="MeatId" />
                <asp:CommandField ButtonType="Button" HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ramen]"></asp:SqlDataSource>
    </div>
    <asp:Button ID="NewBtn" runat="server" Text="New Ramen" OnClick="NewBtn_Click" Width="447px" />
</asp:Content>
