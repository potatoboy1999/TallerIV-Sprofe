<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profes.aspx.cs" Inherits="Profes.Profes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <h1>El Profe...!</h1>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <img src="Imagenes/profe.PNG" class="img-rounded img-responsive" height="450" width="300" />
                        <h3 class="text-left">Aquí hay un suculento párrafo poco imaginativo que quiere llamar tu atención para esta entrega del día 18 de Septiembre del 2017</h3>
                    </div>
                    <div class="col-md-8">
                        <div class="row" style="height: 400px;">
                            <div class="col-md-8">
                                <h1>Los stats</h1>
                                <p>Stat 1</p>
                                <p>Stat 2</p>
                                <p>Stat 3</p>
                                <p>Stat 4</p>
                            </div>
                            <div class="col-md-4" style="overflow: scroll;">
                                <img src="Imagenes/publicidad1.JPG" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="comentarios">
            <div><p>Acá irán los comentarios</p></div>
            <h2>
                ¿Qué tal te pareció este profe?
                Déjanos tu comentario
            </h2>
            <div>
                <asp:TextBox ID="comentario" runat="server" Width="80%" Height="200" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Button ID="env_comentario" runat="server" Text="Enviar Comentario" OnClick="env_comentario_Click" />
        </div>
        <footer>© 2017 Sprofe</footer>
    </form>
</body>
</html>
