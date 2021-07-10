<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<link href="StyleSheet1.css" rel="stylesheet" type="text/css">

    <div class="jumbotron">
        <h1><b>RAFA STORE</b></h1>
    </div>

    <div>
        <b><asp:Label ID="usuario" runat="server" Text="Usuario:"></asp:Label></b>
        <asp:TextBox ID="v_usuario" runat="server"  ToolTip="usuario" ></asp:TextBox>
        
    </div>
    <br />
    <div>
         <b><asp:Label ID="contra" runat="server" Text="Contraseña:"></asp:Label></b>
        <asp:TextBox ID="v_contra" runat="server" TextMode="Password" ToolTip="contraseña"></asp:TextBox>
    </div>
    
    <br />
    <asp:Button ID="validar" runat="server" Text="Ingresar" OnClick="validar_Click" class="botoningre" />


</asp:Content>
