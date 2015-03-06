<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlDetails.ascx.cs" Inherits="WebApplication1.WebUserControlDetails" %>
<dl>
    <dd>Книга <span style="mso-bidi-font-family:Calibri;mso-bidi-theme-font:
minor-latin">№:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" />
        </span></dd>
    <dd>Заглавие: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </dd>
    <dd>&nbsp;Цена:
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </dd>
    <dd>&nbsp;Количество:
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </dd>
    <dd>&nbsp;Сума:
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </dd>
    <dd>&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за купуване" />
    </dd>
</dl>


