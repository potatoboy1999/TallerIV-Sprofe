<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="Log.master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Tarea.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilo/LogIn_Style.css" rel="stylesheet" />
    <style>
        table h1 {
            text-align: center;
            padding: 10px 0 20px 0 ;
            border-bottom: 1px solid black;
            margin-bottom : 25px;
        }

        table {
            width: 100%;
        }

            table td {
                padding: 10px 5px;
            }

        .row {
            text-align: center;
            margin-bottom: 15px;
        }

        .logLabel {
            font-size: 18px;
        }

        .logError {
            color: red;
            font-size: 13px;
        }

        #logCheck {
            padding: 15px 50px;
        }
        #logBtns{
            padding: 0 5%;
        }
        .logInput{
            width: 62%;
        }
    </style>
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

                <%--<table cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" colspan="2"><h1>¡Ingrese ahora!</h1></td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:Label></td>
                                    <td>
                                        <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label></td>
                                    <td>
                                        <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <%--<tr>
                                    <td colspan="2">
                                        <asp:CheckBox runat="server" Text="Mantener la sesión abierta." ID="RememberMe"></asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color: Red;">
                                        <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button CssClass="btn btn-primary" runat="server" CommandName="Login" Text="¡Empecemos!" ValidationGroup="Login1" ID="LoginButton"></asp:Button>
                                        <a href="Registro.aspx" class="btn btn-warning" onclick="location.href='../Default.aspx';">¡Registrate!</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>--%>
            </LayoutTemplate>
        </asp:Login>

    </div>
</asp:Content>
