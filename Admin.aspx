<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication1.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    DataKeyNames="BookID" DataSourceID="SqlDataSource1" Height="50px" 
        Width="466px" AllowPaging="True">
        <Fields>
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" />
            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
            <asp:BoundField DataField="BookQty" HeaderText="BookQty" SortExpression="BookQty" />
            <asp:CheckBoxField DataField="BookSale" HeaderText="BookSale" SortExpression="BookSale" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" 
    SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
   

   <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Качване на файл" />
    <asp:Label ID="lblMessageText" runat="server"></asp:Label>
</asp:Content>
