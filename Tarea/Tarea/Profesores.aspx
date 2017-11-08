<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="Tarea.Profesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #titulo {
            background-color: black;
            padding: 10px;
            color: white;
        }

        .row {
            color: #48494f;
        }

        #destacado {
            background-color: white;
            border-radius: 15px;
        }


        #destacado img {
            width: 300px;
            height: 200px;
            margin: 0 auto;
        }

        #publicidad {
            padding: 0;
            padding-left: 1px;
            height:543px;
        }
        #publicidad img{
            height:543px;
        }

        #profes {
            background-color: #ffffff;
            border-radius: 10px;
            text-align: center;
            width: 580px;
            margin-left: 1px;
        }

        .cuadritos td {
            padding: 30px;
        }

        #profes img {
            width: 300px;
            height: 150px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <section class="container">
        <div class="row" id="titulo">
            <h1 class="text-center">Nuestros Docentes </h1>
        </div>
        <div class="row">
            <div id="destacado" class="col-md-4">
                <div id="subdestacado">
                    <h2 class="text-center">Mejor Profe del ciclo</h2>
                    <a href="Profesor.aspx">
                        <img src="Imagenes/Profesores/destacado.jpg" class="img-rounded img-responsive" /></a>
                    <p class="text-center">El mejor profesor del curso de Lenguaje 2 :D</p>
                </div>

            </div>
            <div id="profes" class="col-md-6">
                <h2 class="text-center">Matematica para virgenieros</h2>
                <asp:DataList ID="profesores" CssClass="cuadritos" RepeatColumns="2" runat="server" DataSourceID="XmlDataSource1">
                    <ItemTemplate>
                        <div>
                            <img src="<%#XPath("imagen") %>" class="img-rounded img-responsive" />
                            <p class="text-center"><%#XPath("Nombre") %></p>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/Profesores.xml"></asp:XmlDataSource>
            </div>
            <div id="publicidad" class="col-md-2">
                <img src="Imagenes/publicidad2.jpg" class="img-rounded img-responsive" />
            </div>
            <div class="clear">
            </div>
        </div>
    </section>

</asp:Content>
