<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="Raamen.Views.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Label ID="LblUsername" runat="server" Text="Username"></asp:Label>
                <br />
                <asp:TextBox ID="TbUsername" runat="server" Width="196px"></asp:TextBox>
                <br />
                <asp:Label ID="LblError1" runat="server" Text=" " ForeColor="red"></asp:Label>
                <br />
                Email
    <br />
                <asp:TextBox ID="TbEmail" runat="server" Width="196px"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server" Text=" " ForeColor="red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="LblGender" runat="server" Text="Gender"></asp:Label>
                <asp:DropDownList ID="GenderList" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
                <br />
                <asp:TextBox ID="TbPassword" runat="server" Width="196px"></asp:TextBox>
                <br />
                <asp:Label ID="LblError2" runat="server" Text=" " ForeColor="red"></asp:Label>
                
                <br />
                <asp:Button ID="Update" runat="server" Text="Log In" OnClick="Update_Click" Width="207px" />
</asp:Content>