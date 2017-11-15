<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tarea.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .espacio {
            min-height: 25px;
        }

        body {
            background-color: gray;
        }

        .jumbotron img {
            display: block;
            margin: auto;
        }

        .derecha {
            position: relative;
            animation-name: dere;
            animation-duration: 2s;
        }

        @keyframes dere {
            0% {
                left: -300px;
            }

            100% {
                left: 0px;
            }
        }

        .izquierda {
            position: relative;
            animation-name: izqui;
            animation-duration: 2s;
        }

        @keyframes izqui {
            0% {                
                right: -300px;
            }

            100% {                
                right: 0px;
            }
        }
    </style>
    <link href="Estilo/StyleSheet.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="espacio">
    </div>
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-6 derecha">
                    <img class="img-rounded img-responsive" src="Imagenes/Logo.png" width="400" height="184" />
                </div>
                <div class="col-md-6 izquierda">
                    <h2 class="subtitulo">¿QUÉ SOMOS?</h2>
                    <p>
                        SProfe es una página dedicada a guiar a estudiantes universitarios del
                    Perú a despejar sus posibles dudas sobre la elección de profesor en algún curso
                    determinado. (Disponible para estudiantes de la USIL por el momento)
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="subtitulo">DESCUBRE</h2>
                    <p>Explora entre cientos de profesores usando más 7 criterios! Encuentra a tu profesor ideal!</p>
                    <asp:Button ID="btnBuscar" CssClass="btn btn-warning" runat="server" Text="Busca Ahora!" OnClick="btnBuscar_Click" Width="150" />
                </div>
                <div class="col-md-6">
                    <img class="img-rounded img-responsive" src="Imagenes/Descubre.png" width="400" height="184" />
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-6">
                    <img class="img-rounded img-responsive" src="Imagenes/Opina.png " width="400" height="184" />
                </div>
                <div class="col-md-6">
                    <h2 class="subtitulo">TU OPINIÓN NOS IMPORTA</h2>
                    <p>
                        ¿Tuviste un buen ciclo con un profesor? A tu parecer, ¿Su metodología es la mejor?
                Recomiéndaselo a los demás. ¿Tuviste un profesor malo? ¿Te fuiste a la bica? Díselo a los
                demás. Y todo desde el anonimato!
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="jumbotron">
            <h1>Universidades Asociadas</h1>
            <div class="row">
                <div class="col-md-6">

                    <img class="img-responsive" src="Imagenes/Logo_usil3.png" width="300" height="300" />

                </div>
                <div class="col-md-6">
                    <h2><a href="http://www.usil.edu.pe/">Universidad San Ignacio de Loyola</a></h2>
                    <p>
                        Desde el 2017 los alumnos de la universidad San Ignacio de Loyola podrán
                encontrar al profesor ideal en cada una de las asignaturas que cursen
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

