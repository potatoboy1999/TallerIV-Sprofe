<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carreras.aspx.cs" Inherits="Tarea.startSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #wrapper{
            background-image:url(Imagenes/estudios.jpg);
            background-size: 1800px 1200px;
            min-height: 600px;
        }
        .tituloCarreras{
            color: white;
            padding: 5px 10px;
            background-color: black;
        }
        button {
            margin: 15px;
        }

        #formulario {
            padding: 10px 50px;
        }

        #form {
            padding: 15px;
        }

        .tituloCarreras {
            padding: 15px 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div id="wrapper">
        <section class="tituloCarreras">
            <h2>Selecciona tu carrera...</h2>
        </section>
        <section id="formulario">
            <section id="form">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="394px">
                    <asp:ListItem>Arquitectura</asp:ListItem>
                    <asp:ListItem>Comunicaciones</asp:ListItem>
                    <asp:ListItem>Gastronomia</asp:ListItem>
                    <asp:ListItem>Ingenieria Informatica y de Sistemas</asp:ListItem>
                    <asp:ListItem>Ingenieria Ambiental</asp:ListItem>
                    <asp:ListItem>Ingenieria Civil</asp:ListItem>
                    <asp:ListItem>Ingenieria Industrial</asp:ListItem>
                    <asp:ListItem>Psicologia</asp:ListItem>
                </asp:DropDownList>
            </section>
            <button class="btn btn-lg btn-primary" onclick="location.href='Cursos.aspx'">Continuemos</button>
        </section>
    </div>
</asp:Content>
