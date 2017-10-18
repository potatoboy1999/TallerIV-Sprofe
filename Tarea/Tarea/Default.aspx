<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tarea.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: gray;
        }
    </style>
    <link href="Estilo/StyleSheet.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Superior" runat="server">
    <div class="container">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-6">
                    <img class="img-rounded img-responsive" src="Imagenes/Logo.png" width="400" height="184" />
                </div>
                <div class="col-md-6">
                    <h2>¿Qué somos?</h2>
                    <p>SProfe es una página dedicada a guiar a estudiantes universitarios del
                    Perú a despejar sus posibles dudas sobre la elección de profesor en algún curso
                    determinado. (Disponible para estudiantes de la USIL por el momento)</p>
                </div>
            </div>            
        </div>
    </div>
    <div class="container">
        <div class="jumbotron">
            <div class="row">
            <div class="col-md-6">
                <h2>Descubre</h2>
                <p>Explora entre cientos de profesores usando más 7 criterios! Encuentra a tu profesor ideal!</p>
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
                <h2>Tu opinión nos importa</h2>
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

                <img class="img-responsive" src="Imagenes/Logo_usil.png" />

            </div>
            <div class="col-md-6">
                <h2>Universidad San Ignacio de Loyola</h2>
                <p>
                    Desde el 2017 los alumnos de la universidad San Ignacio de Loyola podrán
                encontrar al profesor ideal en cada una de las asignaturas que cursen
                </p>
            </div>
                </div>
        </div>
    </div>
</asp:Content>

