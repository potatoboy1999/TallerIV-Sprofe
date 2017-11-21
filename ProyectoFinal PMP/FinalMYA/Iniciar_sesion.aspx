<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="Iniciar_sesion.aspx.cs" Inherits="FinalMYA.Iniciar_sesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        header {
            text-align: center;
        }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <a href="default.aspx">
                <img src="Imagenes/logo_myappointments.png" />
            </a>
        </header>
        <div>
            <h1>Iniciar sesion</h1>
            <asp:Login ID="Login1" runat="server">

                <LayoutTemplate>
                    <ul>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:Label>
                            <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                        </li>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label>
                            <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                        </li>
                        <li><asp:CheckBox runat="server" Text="Record&#225;rmelo la pr&#243;xima vez." ID="RememberMe"></asp:CheckBox></li>
                        <li><asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal></li>
                    </ul>
                    <asp:Button runat="server" CommandName="Login" Text="Inicio de sesi&#243;n" ValidationGroup="Login1" ID="LoginButton"></asp:Button>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </form>
</body>
</html>
