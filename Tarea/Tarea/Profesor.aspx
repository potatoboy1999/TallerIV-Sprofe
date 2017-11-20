<%@ Page Title="" UnobtrusiveValidationMode="none" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesor.aspx.cs" Inherits="Tarea.Profesor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #xmlPublicidad {
            margin-top: 20px;
            margin: 0 auto;
            text-align: center;
        }

        p {
            font-size: medium;
        }

        #Titulos {
            padding: 10px 5px;
        }

        #Profe {
            margin: 20px auto;
            padding: 25px;
            border-radius: 10px;
            background-color: white;
        }

        #HeaderProfe {
            margin-top: -25px;
            margin-right: -25px;
            margin-left: -25px;
            margin-bottom: 15px;
            padding: 0 15px;
            background-color: #000000;
            color: white;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .info {
            border-bottom: solid;
            border-bottom-color: cadetblue;
            margin-bottom: 20px;
        }

        aside {
            margin-top: 85px
        }

        span {
            color: cadetblue;
            font-weight: bold;
        }

        .boton {
            margin-bottom: 5px;
        }

        .comentarios {
            border-bottom: solid;
            border-bottom-color: cadetblue;
            border-width: 1px;
            padding: 5px;
        }

        .rate {
            color: black;
            text-align: center;
            padding-bottom: 50%;
            font-weight: normal;
            margin-left: 1%;
        }

        li {
            animation-duration: 3s;
            animation-name: slidein;
            font-size: medium;
        }

        @keyframes slidein {
            from {
                margin-top: 100%;
                width: 300%;
            }

            to {
                margin-bottom: 0%;
                width: 100%;
            }
        }

        .comentario1 {
            padding: 10px;
            padding-left: 0;
        }

        .paddingalinear {
            padding: 0;
        }
        .comentarios .leftCol{
            float:left;
            width:70px;
            margin-top:20px;
        }
        .comentarios .rightCol{
            margin-left: 70px;
        }
        #ads{
            padding: 10px 0;
            text-align:center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="container" id="Profe">

        <asp:FormView ID="fvProfe" Width="100%" runat="server" DataSourceID="sdsProfe">
            <ItemTemplate>
                <div class="row" id="HeaderProfe">
                    <h1><%#Eval("nombre") %>&nbsp;<%#Eval("apellido_paterno")%></h1>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <img src="Imagenes/Profesores/<%# Eval("imagen") %>" class="img-rounded img-responsive" height="450" width="300" />
                        <div id="Titulos">

                            <h4><strong>Títulos:</strong></h4>
                            <ul>
                                <asp:Repeater ID="rTitulos" runat="server" DataSourceID="sdsTitulos">
                                    <ItemTemplate>
                                        <li class="text-left"><%#Eval("titulo")%></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="row" style="height: 360px;">
                            <div class="col-md-8 paddingalinear">
                                <h1 class="info">Información General</h1>
                                <p><span>Curso:</span></p>
                                <ul>
                                    <asp:Repeater ID="rCursos" runat="server" DataSourceID="sdsCursos">
                                        <ItemTemplate>
                                            <li><%#Eval("nombre") %></li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                                <br />
                                <p><span>Puntaje Sprofe: </span><%#Eval("puntaje")%></p>
                                <br />
                                <%--                             

                                No incluyamos esta hasta que no sepamos como sacarla de la base de datos

                                <p><span>% de aprobados por ciclo: </span>80%</p>
                                <br />
                                <p><span>Años de experiencia: </span>6 años</p>
                                <br />--%>
                                <div class="boton">
                                    <asp:Button ID="btnLike" runat="server" Text="Me gusta!" OnClick="btnLike_Click" /><img src="Imagenes/like.png" style="width: 30px; height: 30px" />
                                    <span class="rate"><%#Eval("likes")%></span>
                                    <%--<button type="button" title="Like" onclick="alert('Has recomendado a este profesor')">
                                        </button>--%>
                                    <button type="button" title="Reportar profesor" onclick="Rform()" style="margin-left: 5%">
                                        <img src="Imagenes/Block.png" style="width: 30px; height: 30px" /></button><span class="rate"></span>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-8 paddingalinear">
                                <h1 class="info" id="comentarios">Ingrese su comentario</h1>
                                <asp:FormView ID="fvComentarios" DefaultMode="Insert" runat="server" DataKeyNames="idprofesor,idusuario" DataSourceID="sdsComentarios" OnItemInserted="fvComentarios_ItemInserted" OnItemInserting="fvComentarios_ItemInserting">
                                    <InsertItemTemplate>
                                        <div class="comentario1">
                                            <p class="_comentario">Título:</p>
                                            <asp:TextBox Text='<%# Bind("titulo") %>' runat="server" ID="tituloTextBox" CssClass="textcomentario" />
                                            <asp:RequiredFieldValidator ID="rfvTitulo" CssClass="error" runat="server" ErrorMessage="ErrorTitulo" ControlToValidate="tituloTextBox" Text="* Ingrese un Título"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="comentario1">
                                            <p class="_comentario">Comentario:</p>
                                            <asp:TextBox Text='<%# Bind("comentario") %>' runat="server" ID="comentarioTextBox" CssClass="textcomentario" TextMode="MultiLine" Rows="3" Width="500" />
                                            <asp:RequiredFieldValidator ID="rfvComentario" CssClass="error" runat="server" ErrorMessage="ErrorComentario" ControlToValidate="comentarioTextBox" Text="* Ingrese su comentario"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="comentario1">
                                            <p class="_comentario">Valoración:</p>
                                            <asp:RadioButtonList ID="rblValoracion" runat="server">
                                                <asp:ListItem Value="Positiva" Text='Positiva'></asp:ListItem>
                                                <asp:ListItem Value="Negativa" Text='Negativa'></asp:ListItem>
                                            </asp:RadioButtonList>

                                            <asp:RequiredFieldValidator ID="rfvValoracion" CssClass="error" runat="server" ErrorMessage="ErrorValoracion" ControlToValidate="rblValoracion" Text="* Ingrese su valoración"></asp:RequiredFieldValidator>
                                            <%--<asp:DropDownList ID="ddlValoracion" runat="server">
                                                <asp:ListItem Selected="True" Value="Positivo" Text='Positivo'></asp:ListItem>
                                                <asp:ListItem Value="Negativo" Text='Negativo'></asp:ListItem>
                                            </asp:DropDownList>--%>
                                        </div>


                                        <asp:Button CssClass="btn btn-primary" runat="server" Text="Insertar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />

                                    </InsertItemTemplate>
                                </asp:FormView>
                            </div>

                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:FormView>


        <h2 class="info">Comentarios</h2>

        <asp:Panel ID="pNodata" runat="server" Visible="false">
            <p>No se encontraron comentarios</p>
        </asp:Panel>

        <asp:Repeater ID="rComments" runat="server" DataSourceID="sdsComentarios">
            <ItemTemplate>

                <div class="comentarios">
                    <div class="leftCol">
                        <img src="Imagenes/<%#Eval("valoracion")%>.jpg" width="50" height="50" />
                    </div>
                    <div class="rightCol">
                        <h3><%#Eval("titulo") %></h3>
                        <p><%#Eval("comentario") %></p>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

        <div id="ads">
            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xmlPublicidad" />
        </div>

        <asp:XmlDataSource runat="server" ID="xmlPublicidad" DataFile="~/App_Data/Publicherryxd.xml"></asp:XmlDataSource>
        <asp:SqlDataSource runat="server" ID="sdsComentarios" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT * FROM [comentarios] WHERE ([idprofesor] = @idprofesor)" OnSelected="sdsComentarios_Selected" DeleteCommand="DELETE FROM [comentarios] WHERE [idcomentario] = @idcomentario" InsertCommand="INSERT INTO [comentarios] ([idprofesor], [usuarionombre], [titulo], [comentario], [valoracion]) VALUES (@idprofesor, @usuarionombre, @titulo, @comentario, @valoracion)" UpdateCommand="UPDATE [comentarios] SET [idprofesor] = @idprofesor, [usuarionombre] = @usuarionombre, [titulo] = @titulo, [comentario] = @comentario, [valoracion] = @valoracion WHERE [idcomentario] = @idcomentario">
            <DeleteParameters>
                <asp:Parameter Name="idcomentario" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idprofesor" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="usuarionombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="titulo" Type="String"></asp:Parameter>
                <asp:Parameter Name="comentario" Type="String"></asp:Parameter>
                <asp:Parameter Name="valoracion" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="codProf" Name="idprofesor" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="idprofesor" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="usuarionombre" Type="String"></asp:Parameter>
                <asp:Parameter Name="titulo" Type="String"></asp:Parameter>
                <asp:Parameter Name="comentario" Type="String"></asp:Parameter>
                <asp:Parameter Name="valoracion" Type="String"></asp:Parameter>
                <asp:Parameter Name="idcomentario" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ID="sdsTitulos" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT [titulo] FROM [Titulos] WHERE ([idprofesor] = @idprofesor) ORDER BY [titulo]">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="codProf" Name="idprofesor" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ID="sdsCursos" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT cursos.nombre FROM cursos INNER JOIN profeoncursos ON cursos.idcurso = profeoncursos.idcurso INNER JOIN profesores ON profeoncursos.idprofesor = profesores.idprofesor WHERE (profesores.idprofesor = @idprofesor) ORDER BY cursos.nombre">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="codProf" Name="idprofesor"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource runat="server" ID="sdsProfe" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT [nombre], [apellido_paterno], [imagen], [puntaje], [likes] FROM [profesores] WHERE ([idprofesor] = @idprofesor)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="codProf" Name="idprofesor" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <script>
        window.open("https://www.codigo.pe/wp-content/uploads/2016/09/Afiche-Carlos-Bernal-717x1024.jpg", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=300,width=400,height=400");
        function Rform() {
            var text;
            var why = prompt("¿Porque reportaste al profesor?");
            if (why == null || why == "") {
                alert("Debes justificar el report ");
                why = prompt("¿Porque reportaste al profesor?");
            } else {
                alert("Has reportado al profesor, tu report se envio correctamente");
            }
        }
    </script>

</asp:Content>
