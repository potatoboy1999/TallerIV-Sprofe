<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesor.aspx.cs" Inherits="Tarea.Profesor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        #xmlPublicidad {
            margin-top: 20px;
            margin: 0 auto;
            text-align:center;
            
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
            margin-bottom: 30px;
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
            border-radius: 10px;
            background-color: lightgrey;
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

        .comentario1{
            padding: 10px;
            padding-left: 0;
        }
        #paddingalinear{
            padding:0;
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
                                <%--
                                <li class="text-left">Ing. Musical  </li>
                                <li class="text-left">Máster en musicología </li>
                                <li class="text-left">Máster de la música </li>
                                <li class="text-left">Máster Dj prodcutor</li>
                                <li class="text-left">Máster etnomusicología</li>
                                <li class="text-left">Fundador de SPB (Sociedad de polladas bailables) </li>
                                <li class="text-left">Dj Sans</li>--%>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="row" style="height: 360px;">
                            <div class="col-md-8" id="paddingalinear">
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
                                    <button type="button" title="Like" onclick="alert('Has recomendado a este profesor')">
                                        <img src="Imagenes/like.png" style="width: 30px; height: 30px" /></button><span class="rate"><%#Eval("likes")%></span>
                                    <button type="button" title="Reportar profesor" onclick="Rform()" style="margin-left: 5%">
                                        <img src="Imagenes/Block.png" style="width: 30px; height: 30px" /></button><span class="rate"></span>
                                </div>

                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-8" id="paddingalinear">
                                <h1 class="info" id="comentarios">Comentarios:</h1>
                                <%--<p><span>El 85% de los comentarios son positivos</span></p>--%>
                                <asp:Label ID="lblComentarios" runat="server" Text="Ingrese su comentario:"></asp:Label><br />
                                <asp:FormView ID="fvComentarios" DefaultMode="Insert" runat="server" DataKeyNames="idprofesor,idusuario" DataSourceID="sdsComentarios" OnItemInserted="fvComentarios_ItemInserted" OnItemInserting="fvComentarios_ItemInserting">
                                    <InsertItemTemplate>
                                        <div class="comentario1">
                                            <p class="_comentario">Título:</p>                            
                                            <asp:TextBox Text='<%# Bind("titulo") %>' runat="server" ID="tituloTextBox" CssClass="textcomentario"/>
                                        </div>
                                        <div class="comentario1">
                                            <p class="_comentario">Comentario:</p>
                                            <asp:TextBox Text='<%# Bind("comentario") %>' runat="server" ID="comentarioTextBox" CssClass="textcomentario" TextMode="MultiLine" Rows="3" Width="500" />
                                        </div>
                                    
                                        <div class="comentario1">
                                            <p class="_comentario">Valoración:</p>
                                            <asp:DropDownList ID="ddlValoracion" runat="server">
                                                <asp:ListItem Selected="True" Value="Positivo" Text='Positivo'></asp:ListItem>
                                                <asp:ListItem Value="Negativo" Text='Negativo'></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    

                                        <asp:Button CssClass="btn btn-primary" runat="server" Text="Insertar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />

                                    </InsertItemTemplate>
                                </asp:FormView>


                                <%--<h2>Comentario positivo más reciente:</h2>
                                <div class="comentarios">
                                    <h3>El profesor es divertido</h3>
                                    <p>Si quieres divertirte y aprender yo recomiendo a este profe</p>
                                </div>

                                <h2>Comentario negativo más reciente:</h2>
                                <div class="comentarios">
                                    <h3>No sabe enseñar</h3>
                                    <p>Muchas veces no se le entiende cuando explica, al final tienes que estudiar por tu cuenta para entender los temas </p>
                                </div>

                                <a>Ver más comentarios</a>
                                --%>
                            </div>
                            
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:FormView>

        <h2>Comentarios Pasados:</h2>

        <asp:Panel ID="pNodata" runat="server" Visible="false">
            <p>No se encontraron comentarios</p>
        </asp:Panel>

        <asp:Repeater ID="rComments" runat="server" DataSourceID="sdsComentarios">
            <ItemTemplate>
                <div class="comentarios">
                    <h3><%#Eval("titulo") %></h3>
                    <p><%#Eval("comentario") %></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="xmlPublicidad" />

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

        <asp:SqlDataSource runat="server" ID="sdsTitulos" ConnectionString='<%$ ConnectionStrings:ConeccionSprofe %>' SelectCommand="SELECT [titulo] FROM [Titulos] WHERE ([idprofesor] = @idprofesor)">
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


        <%--
        <div class="row" id="HeaderProfe">
            <h1>Samir Perez Navido</h1>
        </div>
        <div class="row">
            <div class="col-md-4">
                <img src="Imagenes/profe.PNG" class="img-rounded img-responsive" height="450" width="300" />
                <div id="Titulos">
                    <h4><strong>Títulos:</strong></h4>
                    <ul>
                        <li class="text-left">Ing. Musical  </li>
                        <li class="text-left">Máster en musicología </li>
                        <li class="text-left">Máster de la música </li>
                        <li class="text-left">Máster Dj prodcutor</li>
                        <li class="text-left">Máster etnomusicología</li>
                        <li class="text-left">Fundador de SPB (Sociedad de polladas bailables) </li>
                        <li class="text-left">Dj Sans</li>
                    </ul>
                </div>


            </div>
            <div class="col-md-8">
                <div class="row" style="height: 400px;">
                    <div class="col-md-8">
                        <h1 id="info">Información General</h1>
                        <p><span>Curso: </span>Entrenamiento Rítmico y Auditivo I</p><br />
                        <p><span>% de aceptación: </span>77.5%</p><br />
                        <p><span>% de aprobados por ciclo: </span>80%</p><br />
                        <p><span>Años de experiencia: </span>6 años</p><br />
                        <div class="boton">
                            <button type="button" title="Like" onclick="alert('Has recomendado a este profesor')">
                                <img src="Imagenes/like.png" style="width: 30px; height: 30px" /></button><span class="rate">70%</span>
                            <button type="button" title="Reportar profesor" onclick="Rform()" style="margin-left: 5%">
                                <img src="Imagenes/Block.png" style="width: 30px; height: 30px" /></button><span class="rate"></span>
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
                            }</script>
                    </div>
                </div>
                <div class="row">
                    <h1>Comentarios:</h1>
                    <p><span>El 85% de los comentarios son positivos</span></p>
                    <h2>Comentario positivo más reciente:</h2>
                    <div class="comentarios">
                        <h3>El profesor es divertido</h3>
                        <p>Si quieres divertirte y aprender yo recomiendo a este profe</p>
                    </div>

                    <h2>Comentario negativo más reciente:</h2>
                    <div class="comentarios">
                        <h3>No sabe enseñar</h3>
                        <p>Muchas veces no se le entiende cuando explica, al final tienes que estudiar por tu cuenta para entender los temas </p>
                    </div>

                    <a>Ver más comentarios</a>
                </div>
            </div>
        </div>--%>
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
