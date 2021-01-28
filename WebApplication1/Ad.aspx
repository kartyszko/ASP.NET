<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ad.aspx.cs" Inherits="WebApplication1.Ad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="ad">
        <p class="new">Najważniejsze ogłoszenia</p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ads %>" SelectCommand="SELECT [date], [ogloszenie], [podpis] FROM [tableAd]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="ogloszenie" HeaderText="ogloszenie" SortExpression="ogloszenie" />
                    <asp:BoundField DataField="podpis" HeaderText="podpis" SortExpression="podpis" />
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>
