<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesor.aspx.cs" Inherits="Tarea.Profesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        p {
            font-size:medium;
            
        }

        h1{
            /*border: solid;*/
        }

        #Profe {
            margin: 20px;
            padding: 25px;
            border-radius: 10px;
            background-color: white;
        }

        #info {
            border-bottom: solid;
            border-bottom-color:cadetblue;
            margin-bottom: 30px;
        }

        span {
            color: cadetblue;
            font-weight: bold;
        }
        .comentarios{
            border-radius: 10px;
            background-color: lightgrey;
            padding: 5px;
        }

    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container" id="Profe">
        <div class="row">
            <h1>Samir Perez Navido</h1>            
        </div>
        <div class="row">
            <div class="col-md-4">
                <img src="Imagenes/profe.PNG"  class="img-rounded img-responsive" height="450" width="300"/>
                <p class="text-left">Ing. Musical  </p>
                <p class="text-left">Máster en musicología </p>
                <p class="text-left">Máster de la música </p>
                <p class="text-left">Máster Dj prodcutor</p>
                <p class="text-left">Máster etnomusicología</p>
                <p class="text-left">Fundador de SPB (Sociedad de polladas bailables) </p>
                <p class="text-left">Dj Sans</p>
               
            </div>
            <div class="col-md-8">
                <div class="row" style="height:400px;">
                    <div class="col-md-8">
                        <h1 id="info">Información General</h1>
                        <p><span>Curso: </span>Entrenamiento Rítmico y Auditivo I</p>
                        <p><span>% de aceptación: </span>85%</p>
                        <p><span>% de aprobados por ciclo: </span>80%</p>
                        <p><span>Años de experiencia: </span>6 años</p>
                    </div>                    
                </div>
                <div class="row">
                    <h1>Comentarios:</h1>
                    <h2>Comentario positivo más reciente:</h2>
                    <div class="comentarios">
                        <h3>El profesor es divertido</h3>
                        <p>Si quieres divertirte y aprender yo recomiendo a este profe</p>
                    </div>
                    
                    <h2>Comentario negativo más reciente:</h2>
                    <div class="comentarios">
                        <h3>No sabe enseñar</h3>
                        <p>Muchas veces no se le entiende cuando explica, al final tienes que estudiar por tu cuenta para entender los temas </p>
                    </div>
                    
                <a>Ver más comentarios</a>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
