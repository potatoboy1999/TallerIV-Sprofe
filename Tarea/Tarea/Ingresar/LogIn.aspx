<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="Log.master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Tarea.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron centroPag" id="caja_registro" aria-autocomplete="none">

        <asp:Login ID="Login1" runat="server">
            <LayoutTemplate>
                <h1>¡Ingrese ahora!</h1>

                <div class="row">
                    <asp:Label CssClass="logLabel" runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario</asp:Label><br />
                    <asp:TextBox CssClass="logInput" runat="server" ID="UserName"></asp:TextBox><br />
                    <asp:RequiredFieldValidator CssClass="logError" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">Nombre Obligatorio</asp:RequiredFieldValidator>
                </div>
                <div class="row">
                    <asp:Label CssClass="logLabel" runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña</asp:Label><br />
                    <asp:TextBox CssClass="logInput" runat="server" TextMode="Password" ID="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator CssClass="logError" runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="RequiredFieldValidator1" Display="Dynamic">Contraseña Obligatoria</asp:RequiredFieldValidator>
                </div>
                <div id="logCheck">
                    <asp:CheckBox runat="server" Text="Mantener la sesión abierta." ID="RememberMe"></asp:CheckBox><br />
                </div>
                <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>

                <div id="logBtns">
                    <asp:Button CssClass="btn btn-primary" runat="server" CommandName="Login" Text="¡Empecemos!" ValidationGroup="Login1" ID="LoginButton"></asp:Button>
                    <a href="Registro.aspx" class="btn btn-warning" onclick="location.href='../Default.aspx';">¡Registrate!</a>
                </div>

            </LayoutTemplate>
        </asp:Login>

    </div>
</asp:Content>
