<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carreras.aspx.cs" Inherits="Tarea.startSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2 {
            margin: 3px 0;
        }

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
        }

        #formulario {
            padding: 10px 50px;
        }
        #formulario .row{
            margin: 5px 0;
            padding: 10px;
        }

        #form {
            padding: 15px;
        }
        #SearchBtn{
            text-align:center;
        }
        #SearchBtn input{
            width:120px;
        }

        .tituloCarreras {
            padding: 15px 25px;
        }

        select {
            height: 30px;
            width: 250px;
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
                <div class="row">
                    <h2>Carrera: </h2>
                    <asp:DropDownList ID="ddlCarreras" runat="server" AutoPostBack="True" DataSourceID="sdsCarreras" DataTextField="nombrecarrera" DataValueField="nombrecarrera" OnSelectedIndexChanged="ddlCarreras_SelectedIndexChanged"></asp:DropDownList>

                    <asp:SqlDataSource runat="server" ID="sdsCarreras" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT [nombrecarrera] FROM [carreras] ORDER BY [nombrecarrera]"></asp:SqlDataSource>

                </div>
                <div class="row">

                    <h2>Curso:</h2>
                    <asp:DropDownList ID="ddlCursos" runat="server" DataSourceID="sdsCursos" DataTextField="nombre" DataValueField="idcurso"></asp:DropDownList>

                    <asp:SqlDataSource runat="server" ID="sdsCursos" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT cursos.nombre, cursos.idcurso FROM cursooncarrera INNER JOIN carreras ON carreras.idcarrera = cursooncarrera.idcarrera INNER JOIN cursos ON cursooncarrera.idcurso = cursos.idcurso WHERE (carreras.nombrecarrera = @nombrecarrera) ORDER BY cursos.nombre">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Administración" Name="nombrecarrera"></asp:Parameter>
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
            </section>
            <div id="SearchBtn">
                <asp:Button CssClass="btn btn-primary" ID="btnBuscar" runat="server" Text="A Buscar!" OnClick="Button1_Click" />
            </div>
        </section>
    </div>
</asp:Content>
