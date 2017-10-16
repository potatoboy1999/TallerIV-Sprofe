<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="Tarea.chooseCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #wrapper{
            background-image:url(Imagenes/courses.png);
            background-size: 1500px 900px;
            min-height: 600px;
        }
        .tituloCurso{
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

        .tituloCurso {
            padding: 15px 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div id="wrapper">
        <section class="tituloCurso">
            <h2>Selecciona un curso...</h2>
        </section>
        <section id="formulario">
            <section id="form">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="394px">
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
            <button class="btn btn-lg btn-info">A buscar!</button>
        </section>
    </div>
</asp:Content>
