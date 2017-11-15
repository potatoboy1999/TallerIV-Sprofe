<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="Tarea.Profesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #descripcion {
            margin-left: 6%;
        }

        #titulo {
            background-color: black;
            padding: 10px;
            color: white;
        }

        #destacado {
            color: darkgoldenrod;
            background-color: white;
            border-radius: 15px;
        }

        #contenido {
            margin: 2%;
        }

        #publicidad {
            padding: 0;
            height: 543px;
            width: 12%;
            margin-left: 1%;
        }

            #publicidad img {
                height: 100%;
            }

        #profes {
            background-color: #ffffff;
            border-radius: 10px;
            text-align: center;
            width: 50%
        }

        .cuadritos td {
            padding: 30px;
        }

        #profes img {
            width: 300px;
            height: 150px;
        }

        #imgmejorprofe {
            margin: 0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container-fluid">
        <div class="row" id="titulo">
            <h1 class="text-center">Nuestros Docentes </h1>
        </div>
        <div class="row" id="contenido">
            <div class="col-md-4">
                <div id="destacado" class="text-center">
                    <asp:FormView Width="100%" ID="FormView1" runat="server" DataSourceID="sdsMejorProfe" DataKeyNames="idprofesor">
                        <ItemTemplate>
                            <h2>
                                <asp:Label Text='<%# Bind("nombre") %>' runat="server" ID="nombreLabel" />
                                <asp:Label Text='<%# Bind("apellido_paterno") %>' runat="server" ID="apellido_paternoLabel" /></h2>
                            <img id="imgmejorprofe" src="<%# Eval("imagen") %>" class="img-responsive" />
                            <asp:Label Text='<%# Bind("descripcion") %>' runat="server" ID="descripcionLabel" /><br />
                            <asp:Label Text='<%# Bind("puntuaje") %>' runat="server" ID="puntuajeLabel" /><br />
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

                <asp:DataList ID="DataList1" Width="100%" RepeatColumns="2" runat="server" DataKeyField="idprofesor" DataSourceID="sdsProfes">
                    <ItemTemplate>
                        <div class="text-center" id="destacado">
                            <h2>
                            <asp:Label Text='<%# Bind("nombre") %>' runat="server" ID="nombreLabel" />
                            <asp:Label Text='<%# Bind("apellido_paterno") %>' runat="server" ID="apellido_paternoLabel" /></h2>
                        <img id="imgmejorprofe" src="<%# Eval("imagen") %>" class="img-responsive" width="300" height="300" />                        
                        <asp:Label Text='<%# Bind("puntuaje") %>' runat="server" ID="puntuajeLabel" /><br />
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
    </div>    
</asp:Content>
