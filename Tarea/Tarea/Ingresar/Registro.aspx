<%@ Page UnobtrusiveValidationMode="none" Title="" Language="C#" MasterPageFile="Log.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Tarea.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            width:100%;
        }
        table td{
            padding:5px 15px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centroPag jumbotron">
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2"><h1>Regístrate</h1></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="CreateUserWizard1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel">Confirmar contraseña:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirmar contrase&#241;a es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="Confirmar contrase&#241;a es obligatorio." ID="ConfirmPasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Email" ID="EmailLabel">Correo electrónico:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="El correo electr&#243;nico es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="El correo electr&#243;nico es obligatorio." ID="EmailRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Question" ID="QuestionLabel">Pregunta de seguridad:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="Question"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Question" ErrorMessage="La pregunta de seguridad es obligatoria." ValidationGroup="CreateUserWizard1" ToolTip="La pregunta de seguridad es obligatoria." ID="QuestionRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label runat="server" AssociatedControlID="Answer" ID="AnswerLabel">Respuesta de seguridad:</asp:Label></td>
                                <td>
                                    <asp:TextBox runat="server" ID="Answer"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Answer" ErrorMessage="La respuesta de seguridad es obligatoria." ValidationGroup="CreateUserWizard1" ToolTip="La respuesta de seguridad es obligatoria." ID="AnswerRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Contrase&#241;a y Confirmar contrase&#241;a deben coincidir." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>

                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
</asp:Content>
