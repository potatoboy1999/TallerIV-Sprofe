<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="Tarea.Profesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #titulo {
            background-color: black;
            padding: 10px;
            color: white;
        }
        .bestoprofe{
            width:100%;
        }

        .cuadrito {
            color: darkgoldenrod;
            background-color: white;
            border-radius: 15px;
            padding:20px;
            margin:3px;
        }

        .profe {
            margin: 0 auto;
            width:350px;
            height:230px;
        }
        .contenedor-profesores{
            width:100%;
        }
        .profesores{
            margin:0 auto;
            width:300px;
            height:200px;

        }
        .contenedor-profesores td{
            width:50%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <section class="container-fluid">
        <div class="row" id="titulo">
            <h1 class="text-center">Nuestros Docentes </h1>
        </div>
        <div class="row" id="contenido">
            <div class="col-md-4">
                <h2 class="text-center">Besto profe ever</h2>
                <div class="text-center cuadrito">

                    <asp:FormView CssClass="bestoprofe" runat="server" DataSourceID="sdsMejorProfe" DataKeyNames="idprofesor">
                        <ItemTemplate>

                            <asp:Label Text='<%# Eval("nombre") %>' runat="server" ID="nombreLabel" />
                            <asp:Label Text='<%# Eval("apellido_paterno") %>' runat="server" ID="apellido_paternoLabel" /></h2>
                            <img src="<%# Eval("imagen") %>" class="img-responsive profe" />
                            <asp:Label Text='<%# Eval("descripcion") %>' runat="server" ID="descripcionLabel" /><br />
                            <asp:Label Text='<%# Eval("puntuaje") %>' runat="server" ID="puntuajeLabel" /><br />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource runat="server" ID="sdsMejorProfe" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT TOP (1) profesores.nombre, profesores.apellido_paterno, profesores.descripcion, profesores.imagen, profesores.puntuaje, profesores.idprofesor FROM profeoncursos INNER JOIN profesores ON profeoncursos.idprofesor = profesores.idprofesor WHERE (profeoncursos.idcurso = @idcurso) ORDER BY profesores.puntuaje DESC">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="codigocurso" Name="idcurso"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="col-md-8">
                <h2 class="text-center">Bestos profes</h2>
                <asp:DataList CssClass="contenedor-profesores" RepeatColumns="2" runat="server" DataKeyField="idprofesor" DataSourceID="sdsProfes">
                    <ItemTemplate>
                        <div class="text-center cuadrito">

                            <asp:Label Text='<%# Eval("nombre") %>' runat="server" ID="nombreLabel" />
                            <asp:Label Text='<%# Eval("apellido_paterno") %>' runat="server" ID="apellido_paternoLabel" /></h2>
                            <img src="<%# Eval("imagen") %>" class="img-responsive profesores" />
                            <asp:Label Text='<%# Eval("puntuaje") %>' runat="server" ID="puntuajeLabel" /><br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>

                <asp:SqlDataSource runat="server" ID="sdsProfes" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT profesores.nombre, profesores.apellido_paterno, profesores.descripcion, profesores.imagen, profesores.puntuaje, profesores.idprofesor FROM profeoncursos INNER JOIN profesores ON profeoncursos.idprofesor = profesores.idprofesor WHERE (profeoncursos.idcurso = @idcurso)  ORDER BY profesores.puntuaje DESC">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="codigocurso" Name="idcurso"></asp:QueryStringParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>


        </div>
    </section>
</asp:Content>
