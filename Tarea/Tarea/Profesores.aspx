<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="Tarea.Profesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #titulo {
            background-color: black;
            padding:10px;
            color: white;
        }

        .profesores {
            color: blue;
            text-align: center;
        }

        #destacado {
            float: left;
            width: 28%;
            text-align: center;
            background-color:white;
            border-radius: 15px;
        }
        #destacado img {
            width: 350px;
            height: 200px;
        }

        #publicidad{
            float:right;
            width:13%;
            height:500px;
        }
        #profes {
            background-color:orange;
            border-radius: 10px;
            margin-left: 30%;
            text-align: center;
            margin-right:15%;
            margin-bottom: 15px;
        }
        #profes h2{
            padding: 25px 0 0 0;
        }

        .cuadritos {
            text-align: center;
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
                <p>El mejor profesor del curso de ... :D</p>
            </div>
            <div id="publicidad">
                <img src="Imagenes/publicidad2.jpg" height="645" width="180" />
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
