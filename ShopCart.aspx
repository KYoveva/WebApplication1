<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShopCart.aspx.cs" Inherits="WebApplication1.ShopCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            font-size: large;
        }
        #asd {}
        .auto-style5 {
            text-align: justify;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
     <style>

    A.epay-button             { border: solid  1px #FFF; background-color: #168; padding: 6px; color: #FFF; background-image: none; font-weight: normal; padding-left: 20px; padding-right: 20px; }
    A.epay-button:hover       { border: solid  1px #ABC; background-color: #179; padding: 6px; color: #FFF; background-image: none; font-weight: normal; padding-left: 20px; padding-right: 20px; }

    A.epay                    { text-decoration: none; border-bottom: dotted 1px #168; color: #168; font-weight: bold; }
    A.epay:hover              { text-decoration: none; border-bottom: solid  1px #179; color: #179; font-weight: bold; }

    TABLE.epay-view    { white-space: nowrap; background-color: #CCC; }

    /********** VIEWES **********************************************************/

    TD.epay-view            { width: 100%; text-align: center; background-color: #DDD; }
    TD.epay-view-header     {                                  background-color: #168; color: #FFF; height: 30px; }
    TD.epay-view-name       { width:  25%; text-align: right;  background-color: #E9E9F9; border-bottom: none;  height: 30px; }
    TD.epay-view-value      { width:  75%; text-align: left;   background-color: #E9E9F9; border-bottom: none; white-space: normal; }

    INPUT.epay-button         { border: solid  1px #FFF; background-color: #168; padding: 4px; color: #FFF; background-image: none; padding-left: 20px; padding-right: 20px; }
    INPUT.epay-button:hover   { border: solid  1px #ABC; background-color: #179; padding: 4px; color: #FFF; background-image: none; padding-left: 20px; padding-right: 20px; }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>Във вашата кошница има:</strong></p>
    <p class="auto-style3">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" Width="913px">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderID") %>' Visible="False"></asp:Label>
                <br />
                BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                BookTitle:
                <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Qty") %>' />
                <br />
                Total:
                <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Отбележете за премахване" />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p class="auto-style3">
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT OrderID, BookID, BookTitle, Price, Qty, Price * Qty AS Total FROM ShopCart" OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Изтриване на маркираните книги" />
    </p>
    <p class="auto-style3">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p class="auto-style3">
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Общо:</td>
                <td style="text-align: left">
                <asp:Label ID="lblTotal" runat="server" meta:resourcekey="Label3Resource1"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <form action="https://www.epay.bg/" method=post>
<table class=epay-view cellspacing=1 cellpadding=4 width=350>
<tr>
<td class=epay-view-header align=center>Поръчка</td>
<td class=epay-view-header align=center>Сума</td>
</tr>
<tr>
<td class=epay-view-value><b>Книги</b></td>
<td class=epay-view-name><input type=text name=TOTAL value="<%=lblTotal.Text %>" size=5>BGN</td>
</tr>
<tr>
<td colspan=2 class=epay-view-name>
<input class=epay-button type=submit name=BUTTON:EPAYNOW value="   Плащане on-line   ">
</td>
</tr>
<tr>
<td colspan=2 class=epay-view-name style="white-space: normal; font-size: 10">
Плащането се осъществява чрез <a class=epay href="https://www.epay.bg/">ePay.bg</a> - Интернет системата за плащане с банкови карти и микросметки
</td>
</tr>
</table>
<input type=hidden name=PAGE value="paylogin">
<input type=hidden name=MIN value="2268455595">
<input type=hidden name=INVOICE value="">
<input type=hidden name=TOTAL value="0.00">
<input type=hidden name=DESCR value="Книги">
<input type=hidden name=URL_OK value="https://www.epay.bg/?p=thanks">
<input type=hidden name=URL_CANCEL value="https://www.epay.bg/?p=cancel">
</form>
    
</asp:Content>
