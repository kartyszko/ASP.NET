﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="formclass">

        <h2>Formularz logowania</h2>

        <asp:TextBox ID="txtuser" CssClass="input" placeholder="User Name" runat="server"></asp:TextBox> <br/><br/>

        <asp:TextBox ID="txtpass" CssClass="input" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox> <br/><br/>

        <asp:Button ID="btnlogin" CssClass="input" runat="server" Text="Zaloguj" OnClick="btnlogin_Click" />

    </div>
</asp:Content>
