<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="WebApplication1.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="До:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="331px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="От:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="331px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Относно:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="331px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Запитване:"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" Width="331px" Height="139px"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="[MailMsg]"></asp:Label>
              </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Изпрати" Width="75px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
    <br />
</asp:Content>
