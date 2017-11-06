<%@ Page UnobtrusiveValidationMode="none" Title="" Language="C#" MasterPageFile="Log.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Tarea.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron centroPag" id="caja_registro" aria-autocomplete="none">

        <h2>¡Regístrese en SProfe!</h2>
        <div class="form-group">
            <asp:Label class="labelreg" for="TextBox1" ID="Label1" runat="server" Text="Label">Correo Electrónico</asp:Label>
            <asp:TextBox class="form-control" ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" CssClass="validacion" Display="Dynamic">Llene este campo</asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label class="labelreg" for="TextBox2" ID="Label2" runat="server" Text="Label">Código de Alumno</asp:Label>
            <asp:TextBox class="form-control" ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" CssClass="validacion" Display="Dynamic">Llene este campo</asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label class="labelreg" for="TextBox3" ID="Label3" runat="server" Text="Label">Nombres</asp:Label>
            <asp:TextBox class="form-control" ID="TextBox3" runat="server" ControlToValidate="TextBox3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3" CssClass="validacion" Display="Dynamic">Llene este campo</asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label class="labelreg" for="TextBox4" ID="Label4" runat="server" Text="Label">Apellidos</asp:Label>
            <asp:TextBox class="form-control" ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4" CssClass="validacion" Display="Dynamic">Llene este campo</asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:Label class="labelreg" for="TextBox5" ID="Label5" runat="server" Text="Label">Contraseña</asp:Label>
            <asp:TextBox class="form-control" ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5" CssClass="validacion" Display="Dynamic">Llene este campo</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="La contraseña debe tener entre 8 y 12 caracteres" ValidationExpression="[\s\S]{8,12}$" Display="Dynamic" CssClass="validacion" ControlToValidate="TextBox5"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
            <asp:Label class="labelreg" for="TextBox6" ID="Label6" runat="server" Text="Label">Repetir Contraseña</asp:Label>
            <asp:TextBox class="form-control" ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6" CssClass="validacion" Display="Dynamic">Llene este campo</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas no coinciden" EnableViewState="True" Display="Dynamic" ControlToValidate="TextBox6" ControlToCompare="TextBox5" CssClass="validacion"></asp:CompareValidator>
        </div>
        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Registrarme" OnClick="Button1_Click" />
        <asp:Button class="btn" ID="Button2" runat="server" Text="Borrar Campos" />

    </div>
</asp:Content>
