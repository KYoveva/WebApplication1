<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="WebApplication1.Map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:TreeView ID="TreeView1" runat="server" 
        DataSourceID="SiteMapDataSource1" meta:resourcekey="TreeView1Resource1">
        </asp:TreeView>
</asp:Content>
