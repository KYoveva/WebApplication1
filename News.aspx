<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WebApplication1.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 162px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
