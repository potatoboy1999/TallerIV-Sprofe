<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="Log.master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Tarea.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilo/LogIn_Style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron centroPag" id="caja_registro" aria-autocomplete="none">
        <div class="form-group">
            <h1>¡Ingrese ahora!</h1>
            <label>Correo:</label>
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Complete el campo correo" CssClass="error" ControlToValidate="txtCorreo" Display="Dynamic">Complete este campo</asp:RequiredFieldValidator>
            <br />
            <label>Clave:</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" CssClass="error" ControlToValidate="txtPassword">Complete este campo</asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Empecemos!" OnClick="Button1_Click" />
            
            <a href="Registro.aspx" class="btn btn-warning" onclick="location.href='../Default.aspx';">Registrate!</a>
        </div>
    </div>
</asp:Content>