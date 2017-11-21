<%@ Page Title="" Language="C#" MasterPageFile="~/Esqueleto.Master" AutoEventWireup="true" CodeBehind="Doctores.aspx.cs" Inherits="FinalMYA.clienteInt1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#accordion").accordion();
            });
        </script>
        <h2 style="color:white; text-align:center; padding:20px;font-family: 'Eras ITC';">Aquí podras buscar el médico que mas te convenga puedes buscarlo por categorías, dando click
            al nombre iras directamente a su perfil. Si ya sabes a que medico buscaras escribe su codigo en el buscador
            y apreta el bóton buscar para ir a su perfil.
        </h2>

        <div style="margin-left: 10px;">

            <div id="bloqueA">
                <h3 style="color: white;">Elige un médico</h3>
                <br />
                <div id="accordion">
                    <h3>Odontología</h3>
                    <div style="text-decoration: none;">
                        <a href="Odo/Giovana.aspx" style="text-decoration: none;">Giovana Balcazar</a>
                        <br />
                        <br />
                        <a href="Odo/Ammy.aspx" style="text-decoration: none;">Ammy Gonzales</a>
                        <br />
                        <br />
                        <a href="Odo/Melanie.aspx" style="text-decoration: none;">Melanie Estrada</a>
                        <br />
                        <br />
                        <a href="Odo/Nicole.aspx" style="text-decoration: none;">Nicole Sanchez</a>
                        <br />
                        <br />
                        <a href="Odo/Alvaro.aspx" style="text-decoration: none;">Alvaro Avila</a>
                    </div>
                    <h3>Oftalmología</h3>
                    <div id="doctoreshiperv">
                        <a href="ofta/Andrea.aspx" style="text-decoration: none;">Andrea Almarza</a>
                        <br />
                        <br />
                        <a href="ofta/Carla.aspx" style="text-decoration: none;">Carla Nuñez</a>
                        <br />
                        <br />
                        <a href="ofta/Carlos.aspx" style="text-decoration: none;">Carlos Alonso</a>
                        <br />
                        <br />
                        <a href="ofta/Fabrizio.aspx" style="text-decoration: none;">Fabrizio Gil</a>
                        <br />
                        <br />
                        <a href="ofta/Gabriel.aspx" style="text-decoration: none;">Gabriel Ruiz</a>
                    </div>
                    <h3>Ginecología</h3>
                    <div id="doctoreshiperv">

                        <a href="Gine/Fiorella.aspx" style="text-decoration: none;">Fiorella Florez</a>
                        <br />
                        <br />
                        <a href="Gine/Armando.aspx" style="text-decoration: none;">Armando Casas</a>
                        <br />
                        <br />
                        <a href="Gine/Bruno.aspx" style="text-decoration: none;">Bruno Acevedo</a>
                        <br />
                        <br />
                        <a href="Gine/Nicole.aspx" style="text-decoration: none;">Nicole Rosalez</a>
                        <br />
                        <br />
                        <a href="Gine/Leidy.aspx" style="text-decoration: none;">Leidy Bazques</a>
                    </div>
                    <h3>Pediatría</h3>
                    <div id="doctoreshiperv">
                        <a href="Ped/Gianella.aspx" style="text-decoration: none;">Gianella Braga</a>
                        <br />
                        <br />
                        <a href="Ped/Priscilla.aspx" style="text-decoration: none;">Priscilla Sanchez</a>
                        <br />
                        <br />
                        <a href="Ped/Franchesca.aspx" style="text-decoration: none;">Franchesca Garcia</a>
                        <br />
                        <br />
                        <a href="Ped/Mariano.aspx" style="text-decoration: none;">Mariano wong</a>
                        <br />
                        <br />
                        <a href="Ped/Selene.aspx" style="text-decoration: none;">Selene Rojas</a>
                    </div>
                    <h3>Psiquiatría</h3>
                    <div></div>
                    <h3>Cirugía Plástica</h3>
                    <div></div>
                    <h3>Alergia e Inmunología</h3>
                    <div></div>
                    <h3>Traumatología</h3>
                    <div></div>
                </div>
            </div>
        </div>
        <div id="bloqueB">
            <h3 style="color:white;">Si ya conoces el código de tu médico escribelo en el buscador.</h3>
            <div>
                <br />
                <input id="BuscarCodigo" type="text" placeholder="Escribir Código" />
                <br />
            </div>
            <br />
            <asp:Button ID="btnBuscarCodigo" CssClass="btn" runat="server" Text="Buscar" OnClick="btnBuscarCodigo_Click" />
        </div>
        <asp:Button ID="atras" CssClass="buttonatras" runat="server" Text="< Atrás" OnClick="atras_Click" />
</asp:Content>
