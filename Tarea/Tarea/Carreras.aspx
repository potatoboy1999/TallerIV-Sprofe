<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carreras.aspx.cs" Inherits="Tarea.startSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #wrapper {
            min-height: 84vh;
        }

        label {
            color: black;
            padding: 0 15px;
        }

        .tituloCarreras {
            color: white;
            padding: 5px 10px;
            background-color: black;
        }

        .centroPag {
            border-radius: 25px;
            margin: auto auto;
            width: 520px;
            padding: 15px;
            margin-top: 10%;
            /*
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);*/

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
            <h2>Encuentra a tu profe!</h2>
        </section>
        <section class="jumbotron centroPag" id="formulario">
            <section id="form">
                <label>Carrera: </label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="394px">
                    <asp:ListItem>Seleccione Carrera</asp:ListItem>
                    <asp:ListItem>Arquitectura</asp:ListItem>
                    <asp:ListItem>Comunicaciones</asp:ListItem>
                    <asp:ListItem>Gastronomia</asp:ListItem>
                    <asp:ListItem>Ingenieria Informatica y de Sistemas</asp:ListItem>
                    <asp:ListItem>Ingenieria Ambiental</asp:ListItem>
                    <asp:ListItem>Ingenieria Civil</asp:ListItem>
                    <asp:ListItem>Ingenieria Industrial</asp:ListItem>
                    <asp:ListItem>Psicologia</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <label>Curso:</label><br />
                <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="394px">
                    <asp:ListItem>Seleccione Curso</asp:ListItem>
                    <asp:ListItem>Fisica I</asp:ListItem>
                    <asp:ListItem>Fisica II</asp:ListItem>
                    <asp:ListItem>Taller de Software I</asp:ListItem>
                    <asp:ListItem>Taller de Software II</asp:ListItem>
                    <asp:ListItem>Taller de Software III</asp:ListItem>
                    <asp:ListItem>Taller de Software IV</asp:ListItem>
                    <asp:ListItem>Programacion orientada a objetos</asp:ListItem>
                    <asp:ListItem>Analisis y diseño de base de datos</asp:ListItem>
                </asp:DropDownList>
            </section>
            <asp:Button CssClass="btn btn-lg btn-primary" ID="Button1" runat="server" Text="A Buscar!" OnClick="Button1_Click" />
        </section>
    </div>
</asp:Content>
