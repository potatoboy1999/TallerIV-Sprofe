<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carla.aspx.cs" Inherits="acordeon.oftalmologia.Carla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 285px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="fotoMedico" class="auto-style1">
            <br />
            <br />
            <img src="../FotosDoctores/DocM.png" />
        </div>
        <div id="infoMedico">
            <h2 style="text-align: center; color: #2471A3;">Carla Nuñez</h2>
            <div id="infoMedico2">
                <h4>Especialidad:</h4>
                <p>Oftalmologa</p>
                <h4>Sexo:</h4>
                <p>Femenino</p>
                <h4>Edad</h4>
                <p>30</p>
                <h4>Telefono</h4>
                <p>99999999</p>
                <h4>Código</h4>
                <p>xxxxxxxxxx</p>
                <h4>Dirección</h4>
                <p>Av.Larco 155</p>
            </div>

            <asp:Button ID="Button1" CssClass="buttonatras" runat="server" Text="<" OnClick="Button1_Click" />
        </div>
        <br style="clear: both" />
        &nbsp;<asp:Button ID="Button2" CssClass="buttonatras" runat="server" Text="< Atrás" OnClick="Button1_Click" />
        <div>
            <h1 style="font-size: 60px; color: #2471A3; font-weight: bold;">Experiencia Laboral y titulos</h1>
        </div>
        <ul>
            <li>Egresado de Medicina General en la universidad de Oxford
            </li>
            <li>Postgrado de Cirugía de la Mano y de la Extremidad Superior en Universitat Autònoma de Barcelona  
            </li>
            <li>15 años de experiencia laboral en el Hospital Johns Hopkins en Baltimore
            </li>
        </ul>

    </form>
    <footer>
        <p>My Appointments</p>
    </footer>
    <br />
    <br />
    <div style="text-align: center;" class="container">
        <!-- Trigger the modal with a button -->
        <button type="button" id="btnH" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Horario</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 style="text-align: center;" class="modal-title">Ver Horario</h4>
                    </div>
                    <div class="modal-body">
                        <table summary="Horario">
                            <thead>
                                <tr>
                                    <th scope="col">Hora</th>
                                    <th scope="col">Lunes</th>
                                    <th scope="col">Martes</th>
                                    <th scope="col">Miercoles</th>
                                    <th scope="col">Jueves</th>
                                    <th scope="col">Viernes</th>
                                    <th scope="col">Sabado</th>
                                    <th scope="col">Domingo</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <th scope="row">08:00</th>
                                    <td id="ocupado"></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th scope="row">09:00</th>
                                    <td id="ocupado"></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <tr>
                                        <th scope="row">10:00</th>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">11:00</th>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">12:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">13:00</th>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">14:00</th>
                                        <td></td>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">15:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td id="ocupado"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">16:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">17:00</th>
                                        <td></td>
                                        <td id="ocupado"></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">18:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">19:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">20:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">21:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">22:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">23:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">24:00</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>

            </div>
        </div>

    </div>
    </form>
</body>
</html>
