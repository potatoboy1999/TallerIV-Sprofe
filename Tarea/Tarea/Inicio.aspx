<%@ Page Title="" Language="C#" MasterPageFile="~/Log.master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container jumbotron" id="presentacion"> 
        <h1>Bienvenido a SProfe</h1>
        <button type="button" onclick="location.href='Registro.aspx';" class="btn btn-success">Regístrese</button>
        <button type="button" onclick="location.href='LogIn.aspx';" class="btn btn-primary">Logueo</button>
    </div>
</asp:Content>
