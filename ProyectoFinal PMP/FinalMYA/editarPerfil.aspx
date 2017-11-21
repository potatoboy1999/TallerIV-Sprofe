<%@ Page Title="" Language="C#" MasterPageFile="~/Esqueleto.Master" AutoEventWireup="true" CodeBehind="editarPerfil.aspx.cs" Inherits="FinalMYA.editarPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h1 style="color:white;font-size:50px;text-align:center">Edita tu perfil</h1>
    <br />
    <br />
    <br />
    <div style="float:left;text-align:center; width:50%">
        <img src="Imagenes/profle-256.png" />
    </div>
    <div style="width: 50%;float:right">
        <div style="width:50%; float:left; color:white;">
            <h4 style="margin: 3px;">Nombre:</h4>
            <h4 style="margin: 3px;">Apellido:</h4>
            <h4 style="margin: 3px;">Telefono:</h4>
            <h4 style="margin: 3px;">Sexo:</h4>
            <h4 style="margin: 3px;">Especialidad:</h4>
            <h4 style="margin: 3px;">Dirección:</h4>
            <h4 style="margin: 3px;">Descripción:</h4>
        </div>
        <div style="width: 45%;float:right;">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
            <br  style="clear"/>
        </div>
    </div>
    <div style="width:100%;text-align:center;"><asp:Button ID="Button1"  runat="server" Text="Editar" /></div>
    

</asp:Content>
