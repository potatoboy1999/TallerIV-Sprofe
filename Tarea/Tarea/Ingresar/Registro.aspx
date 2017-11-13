<%@ Page UnobtrusiveValidationMode="none" Title="" Language="C#" MasterPageFile="Log.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Tarea.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td input[type="submit"] {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centroPag jumbotron" id="caja_registro">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ActiveStepIndex="0">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <h1>Regístrate</h1>
                        <div id="logLeft">
                            <div class="row">
                                <asp:Label CssClass="logLabel" runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:Label>
                            </div>
                            <div class="row">
                                <asp:Label CssClass="logLabel" runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label>
                            </div>
                            <div class="row">
                                <asp:Label CssClass="logLabel" runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel">Confirmar contraseña:</asp:Label>
                            </div>
                            <div class="row">
                                <asp:Label CssClass="logLabel" runat="server" AssociatedControlID="Email" ID="EmailLabel">Correo electrónico:</asp:Label>
                            </div>
                        </div>

                        <div id="logRight">
                            <div class="row">
                                <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired" Display="Dynamic">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row">
                                <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="CreateUserWizard1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired" Display="Dynamic">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row">
                                <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirmar contrase&#241;a es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="Confirmar contrase&#241;a es obligatorio." ID="ConfirmPasswordRequired" Display="Dynamic">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="row">
                                <asp:TextBox runat="server" ID="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="El correo electr&#243;nico es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="El correo electr&#243;nico es obligatorio." ID="EmailRequired" Display="Dynamic">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Contrase&#241;a y Confirmar contrase&#241;a deben coincidir." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                        <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>

                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
</asp:Content>
