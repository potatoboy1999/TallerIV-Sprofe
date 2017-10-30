<%@ Page Title="" Language="C#" MasterPageFile="~/Log.master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .mini{
            padding:3px;
            margin:0;
        }
        .relleno{
            min-height:15px;
        }
        .profe{
            text-align:center;
            background-color:antiquewhite;
            border: 2px solid black;
            border-radius:5px;
            height:300px;
            width:220px;
        }
        .img-profe{            
            margin:auto;
            margin-top:8px;
        }
        .puntuaje{
            font-size:25px !important;
            padding:0;
            margin:0;            
        }
        @media (min-width:992px){
            .puntuaje{
                padding-right:10px;
            }
        }
        @media (max-width:992px){
            .profe{
                height:340px;
            }            
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" container jumbotron" id="presentacion"> 
        <h1>Bienvenido a <i>S</i>profe</h1>
        <button type="button" onclick="location.href='Registro.aspx';" class="btn btn-success">Regístrate</button>
        <button type="button" onclick="location.href='LogIn.aspx';" class="btn btn-primary">Inicia sesión</button>
    </div>
    <div class="relleno"></div>
    <div class="container contenido">
        <header class="text-center jumbotron mini">
            <h1 class="mini">Los profes que más aprecias</h1>
        </header>
        <div class="relleno"></div>
        <div class="profe">
            <p><img src="Imagenes/profe.PNG" class="img-responsive img-rounded img-profe" width="200" height="200" /></p>
            <div class="row">
                <div class="col-md-8">
                    <p>Smir Perez Navido</p>
                    <p>ENTRENAMIENTO RITMICO Y AUDITIVO I</p>
                </div>
                <div class="col-md-4 puntuaje">
                    <span>9.9</span>
                </div>
            </div>            
        </div>
    </div>
</asp:Content>
