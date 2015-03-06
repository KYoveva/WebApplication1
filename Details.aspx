<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication1.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: justify;
            width: 733px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>Детайлна информация за книгата:</strong><br />
&nbsp;<asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1" style="text-align: center" Width="100%">
        <EditItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="auto-style3">
                BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' Visible="False" />
                &nbsp;
                <asp:Image ID="Image" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' />
                <br />
                BookTitle:
                <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' />
                <br />
                BookAuthor:
                <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' />
                <br />
                BookDescription:
                <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' />
                <br />
                BookPrice:
                <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="Label1" runat="server" Height="20px" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" style="text-align: center" Text="Добавете в кошницата" Width="236px" OnClick="Button1_Click" />
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Назад</asp:LinkButton>
                <br />
                            </div>

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [BookAuthor], [BookDescription], [BookPrice] FROM [Books] WHERE ([BookID] = @BookID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
