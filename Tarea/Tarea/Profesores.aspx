<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="Tarea.Profesores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #titulo {
            background-color: black;
            padding: 10px;
            color: white;
        }

        .bestoprofe {
            width: 100%;
        }

        .cuadrito {
            color: darkgoldenrod;
            background-color: white;
            border-radius: 15px;
            padding: 20px;
            margin: 3px;
        }

        .profe {
            margin: 0 auto;
            width: 350px;
            height: 230px;
        }

        .contenedor-profesores {
            width: 100%;
        }

        .profesores {            
            margin: auto;
            width: 300px;
            height: 200px;
        }

        .contenedor-profesores td {
            width: 50%;
        }

        #contenido {
            min-height: 600px;
        }

        .relleno {
            min-height: 356px;
        }

        #infoprofe {
            margin: 0;
        }

        .sinmargen {
            margin: 0;
            margin-top: 5px;
            color: darkgoldenrod;
        }

        .puntuaje{
            padding-top:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:Panel ID="PanelTrabajador" runat="server">
        <section class="container-fluid">
            <div class="row" id="titulo">
                <h1 class="text-center">Nuestros Docentes </h1>
            </div>
            <br />
            <div class="row" id="contenido">
                <div class="col-md-4">
                    <div class="text-center cuadrito">
                        <asp:FormView CssClass="bestoprofe" runat="server" DataSourceID="sdsMejorProfe" DataKeyNames="idprofesor">
                            <ItemTemplate>
                                <a href="Profesor.aspx?codProf=<%#Eval("idprofesor")%>">
                                    <img src="Imagenes/Profesores/<%# Eval("imagen") %>" class="img-responsive profe" /></a>
                                <h2>
                                    <asp:Label Text='<%# Eval("nombre") %>' runat="server" ID="nombreLabel" />
                                    <asp:Label Text='<%# Eval("apellido_paterno") %>' runat="server" ID="apellido_paternoLabel" /></h2>
                                <div class="row">
                                    <div class="col-md-10" id="infoprofe">
                                        <h4>
                                            <asp:Label Text='<%# Eval("descripcion") %>' runat="server" ID="descripcionLabel" /></h4>
                                        <br />
                                    </div>
                                    <div class="col-md-2">
                                        <h3 class="sinmargen">
                                            <asp:Label Text='<%# Eval("puntaje") %>' runat="server" ID="puntajeLabel" /></h3>
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource runat="server" ID="sdsMejorProfe" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT TOP (1) profesores.nombre, profesores.apellido_paterno, profesores.descripcion, profesores.imagen, profesores.puntaje, profesores.idprofesor FROM profeoncursos INNER JOIN profesores ON profeoncursos.idprofesor = profesores.idprofesor WHERE (profeoncursos.idcurso = @idcurso) ORDER BY profesores.puntaje DESC" OnSelected="sdsMejorProfe_Selected">
                            <SelectParameters>
                                <asp:QueryStringParameter QueryStringField="codigocurso" Name="idcurso"></asp:QueryStringParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-md-8">
                    <asp:DataList CssClass="contenedor-profesores" RepeatColumns="2" runat="server" DataKeyField="idprofesor" DataSourceID="sdsProfes">
                        <ItemTemplate>
                            <div class="text-center cuadrito">
                                <a href="Profesor.aspx?codProf=<%#Eval("idprofesor")%>">
                                    <img src="Imagenes/Profesores/<%# Eval("imagen") %>" class="img-responsive profesores" /></a>
                                <div class="row">
                                    <div class="col-md-10" id="infoprofe">
                                        <h2>
                                            <asp:Label Text='<%# Eval("nombre") %>' runat="server" ID="nombreLabel" />
                                            <asp:Label Text='<%# Eval("apellido_paterno") %>' runat="server" ID="apellido_paternoLabel" /></h2>
                                    </div>
                                    <div class="col-md-2">
                                        <h3 class="puntuaje"><asp:Label Text='<%# Eval("puntaje") %>' runat="server" ID="puntajeLabel" /></h3><br />                                        
                                    </div>
                                </div>                                
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource runat="server" ID="sdsProfes" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT profesores.nombre, profesores.apellido_paterno, profesores.descripcion, profesores.imagen, profesores.puntaje, profesores.idprofesor FROM profeoncursos INNER JOIN profesores ON profeoncursos.idprofesor = profesores.idprofesor WHERE (profeoncursos.idcurso = @idcurso)  ORDER BY profesores.puntaje DESC">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="codigocurso" Name="idcurso"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </section>
    </asp:Panel>
    <asp:Panel ID="PanelVago" runat="server" Visible="false">
        <br />
        <div class="container">
            <div class="jumbotron">
                <h1>Perdón profe! :( <small>No tuvimos tiempo de llenar la base de datos</small></h1>

            </div>
        </div>
        <div class="relleno"></div>
    </asp:Panel>
</asp:Content>
