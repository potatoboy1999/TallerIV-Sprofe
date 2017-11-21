<%@ Page Title="" Language="C#" MasterPageFile="~/Esqueleto.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalMYA.Defaultaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /*https://www.w3schools.com/howto/howto_css_modals.asp*/
        #que_somos {
            text-align: center;
            border: 1px solid blue;
        }

            #que_somos p {
                font-size: 100%;
            }

        #motivacion {
            text-align: justify;
        }

            #motivacion h2 {
                text-align: center;
            }

        #video {
            height: 100%;
        }

            #video iframe {
                width:100%;
                height: 350px;
            }

        #boton_empezar {
            text-align: center;
        }

        .botoncito {
            width: 50%;
            height: 60px;
            margin: 10px;
            font-size: 25px;
        }
    </style>
    <section class="container-fluid">
        <div id="que_somos">
            <h1 style="font-size: 50px; color: #3498DB; font-family: 'Arial Rounded MT'">¿Que es MyAppointments?</h1>
            <h3>Es una web diseñada con el fin de poder encontrar medicos particulares de una forma sencilla y confiable para
                que puedas llevar una vida sana y sin problemas.
            </h3>
        </div>
        <br />
        <div class="row">
            <div id="motivacion" class="col-md-7">
                <h2 style="font-size: 35px; color: #3498DB; font-family: 'Arial Rounded MT'">¿Cual es la importancia de MyAppointments?</h2>
                <h3>Nosotros sabemos lo dificil que es poder ver un doctor en el seguro medico y lo caro que es ver un doctor en 
                    una clinica particular, teniendo en cuenta tambien que muchas veces los hospitales o clinicas no estan cerca
                    de tu vivienda.
                    Para esto MyAppointments te ofrece la facilidad de encontrar doctores particulares que tengan un consultorio
                    de forma sencilla y rapida.
                </h3>
            </div>
            <div id="video" class="col-md-5">
                <iframe src="https://www.youtube.com/embed/ugm4MhDTtxQ"></iframe>
            </div>

        </div>
        <br style="clear: both;" />
        <h2 style="font-size: 35px; color: #3498DB; font-family: 'Arial Rounded MT'; margin-top: 20px; text-align:center">Seguridad
        </h2>
        <h3>MyAppoitments vela por tu seguridad, todos los doctores que tenemos registrados son
            profesionales cien por ciento confiables que te brindaran la mejor atención.
        </h3>
        <h2 style="font-size: 35px; color: #3498DB; font-family: 'Arial Rounded MT'; margin-top: 20px; text-align:center">MyAppointments es totalmente gratuito
        </h2>
        <h3>Asi es para poder conocer a los doctores que tenemos registrados no necesitas realizar ningun pago
            o estar registrado solo dale click en el boton "Ver Doctores" que esta debajo de este texto.
        </h3>
        <div id="boton_empezar">
            <a class="btn_opciones" href="Doctores.aspx"  style="vertical-align: middle">
                <div>
                    <img src="imagenes/x-05-64.png" />
                    <p>Ver Doctores</p>
                </div>
            </a>
        </div>

    </section>
</asp:Content>
