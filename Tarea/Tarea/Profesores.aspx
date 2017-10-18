<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="Tarea.Profesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #titulo {
            background-color: black;
            color: white;
        }

        .profesores {
            border: 5px solid green;
            color: blue;
            text-align: center;
        }

        #destacado {
            border: 1px solid red;
            float: left;
            width: 30%;
            text-align: center;
            background-color:white;
        }
            #destacado img {
                width: 350px;
                height: 200px;
            }

        #publicidad{
            float:right;
            width:15%;
            height:1000px;
            border: 2px solid yellow;
        }
        #profes {
            background-color:orange;
            border: 1px solid blue;
            margin-left: 30%;
            text-align: center;
            margin-right:15%;
        }

        .cuadritos {
            text-align: center;
            border: 1px solid yellow;
            margin: 0 auto;
        }

            .cuadritos td {
                padding: 30px;
            }

        #profes img {
            width: 300px;
            height: 200px;
        }
        .clear{
            clear:both;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <article>
        <div id="titulo">
            <h1>Nuestros Docentes </h1>
        </div>

        <div class="profesores">
            <div id="destacado">
                <h2>Mejor Profe del ciclo</h2>
                <a href="Profesor.aspx"><img src="Imagenes/Profesores/destacado.jpg" /></a>
                <p>El mejor profesor de inserte curso de este inserte ciclo :D</p>
            </div>
            <div id="publicidad">
                Aqui va la publicidad
            </div>
            <div id="profes">
                <h2>Matematica para virgenieros</h2>
                <asp:DataList ID="profesores" CssClass="cuadritos" RepeatColumns="2" runat="server" DataSourceID="XmlDataSource1">
                    <ItemTemplate>
                        <div>
                            <img src="<%#XPath("imagen") %>" />
                            <p><%#XPath("Nombre") %></p>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/Profesores.xml"></asp:XmlDataSource>
            </div>
            <div class="clear">

            </div>
        </div>
    </article>

</asp:Content>
