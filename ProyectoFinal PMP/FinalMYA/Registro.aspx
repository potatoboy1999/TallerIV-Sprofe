<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="FinalMYA.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            font-family: Arial;
        }

        header {
            text-align: center;
            border-bottom: 1px solid #dfe0e6;
        }

        footer {
            text-align: center;
        }

        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <a href="Default.aspx">
            <img src="Imagenes/logo_myappointments.png" class="img-responsive" />
        </a>

    </header>
    <form id="form1" runat="server">
        <h1>Registro</h1>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <ul>
                            <li>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre de usuario:</asp:Label>
                                <br></br>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <br></br>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                                <br></br>
                            </li>
                            <li>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                <br></br>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <br></br>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                                <br></br>
                            </li>
                            <li>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirmar contraseña:</asp:Label>
                                <br></br>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <br></br>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirmar contraseña es obligatorio." ToolTip="Confirmar contraseña es obligatorio." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="Contraseña y Confirmar contraseña deben coincidir." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                <br></br>
                            </li>
                            <li>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Correo electrónico:</asp:Label>
                                <br></br>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <br></br>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="El correo electrónico es obligatorio." ToolTip="El correo electrónico es obligatorio." ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                                <br></br>
                            </li>
                        </ul>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                    <ContentTemplate>
                        <h1>Completado :D usted se a registrado exitosamente</h1>
                        <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continuar" ValidationGroup="CreateUserWizard1" OnClick="ContinueButton_Click" />
                    </ContentTemplate>

                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </form>
    <footer>
        MyAppointments &copy;
    </footer>
</body>
</html>
