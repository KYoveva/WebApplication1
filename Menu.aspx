<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApplication1.Menu" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table style="width:100%;">
            <tr>
                <td>
    
        <asp:Label ID="Label1" runat="server" Text="Меню и категории" meta:resourcekey="Label1Resource1"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Vertical" ShowHeader="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" meta:resourcekey="GridView1Resource1">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:TemplateField HeaderText="BookType" meta:resourcekey="TemplateFieldResource1">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Text='<%# Eval("BookType") %>' meta:resourcekey="LinkButton6Resource1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Text='<%# Eval("BookType") %>' OnCommand="LinkButton5_Command" meta:resourcekey="LinkButton5Resource1"></asp:LinkButton>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT DISTINCT [BookType] FROM [Books]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" meta:resourcekey="GridView2Resource1">
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
                            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
                            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
                            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
                            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource5" />
                            <asp:CommandField SelectText="Виж детайли за книгата" ShowSelectButton="True" meta:resourcekey="CommandFieldResource1" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;<br />
                    <asp:Label ID="Label3" runat="server" style="text-align: center" Text="Търсене:" meta:resourcekey="Label3Resource1"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Търси" meta:resourcekey="Button1Resource1" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Кошница:" meta:resourcekey="Label2Resource1"></asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BookPictures/kosh.jpg" OnClick="ImageButton1_Click" meta:resourcekey="ImageButton1Resource1" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="web" Name="BookType" QueryStringField="Category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </asp:Content>


    
      
