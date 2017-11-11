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

                <asp:DropDownList ID="ddlCarreras" runat="server" AutoPostBack="True"  DataSourceID="sdsCarreras" DataTextField="nombrecarrera" DataValueField="nombrecarrera" OnSelectedIndexChanged="ddlCarreras_SelectedIndexChanged"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="sdsCarreras" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT [nombrecarrera] FROM [carreras] ORDER BY [nombrecarrera]"></asp:SqlDataSource>

                <br />
                <br />

                <label>Curso:</label><br />

                <asp:DropDownList ID="ddlCursos" runat="server" DataSourceID="sdsCursos" DataTextField="nombre" DataValueField="nombre"></asp:DropDownList>
                <asp:SqlDataSource runat="server" ID="sdsCursos" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT cursos.nombre FROM cursooncarrera INNER JOIN carreras ON carreras.idcarrera = cursooncarrera.idcarrera INNER JOIN cursos ON cursooncarrera.idcurso = cursos.idcurso WHERE (carreras.nombrecarrera = @nombrecarrera)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="comunicaciones" Name="nombrecarrera"></asp:Parameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </section>
            <asp:Button CssClass="btn btn-lg btn-primary" ID="Button1" runat="server" Text="A Buscar!" OnClick="Button1_Click" />
        </section>
    </div>
</asp:Content>
