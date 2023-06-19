<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Raamen.Views.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Order Ramen
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Broth" HeaderText="Broth" SortExpression="Broth" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Meat" HeaderText="Meat" SortExpression="Meat" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Order" ShowHeader="True" Text="Order" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT a.Name, a.Broth, a.Price, b.Name AS Meat
FROM Ramen  a  JOIN Meat  b ON a.MeatId = b.Id"></asp:SqlDataSource>
    </div>
</asp:Content>
