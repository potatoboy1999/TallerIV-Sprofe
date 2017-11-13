<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="Tarea.Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .contacto {
            background-color: white;
            height:auto;
        }
        .space{
            min-height: 15px;
        }
        .titulo {
            margin-top: -10px;
            margin-bottom: 40px;
        }
        #TextArea1{            
            height:200px;
            width:90%;
            resize:none;
        }
        #TextArea2{            
            height:150px;
            width:90%;
            resize:none;
        }
        .input{
            border-radius:4px;
            padding:5px;
        }
        @media (min-width:992px){
            .tamaño{
                height:565px;
            }
        }  
        .contacto_div{
            background-color: #2d2d30;
            color: white;
        }

        .contacto_div small{
            color: lightgray;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="space"></div>
    <div class="container">
        <div class="jumbotron contacto_div">
            <h1>Tu opinión es muy importante... <small>Ayúdanos a mejorar la plataforma</small></h1>

        </div>
    </div>

    <div class="container">        
        <div class="row">
                <div class="col-md-6">
                    <div class="jumbotron contacto">
                        <h1 class="text-center titulo">Ayúdanos a mejorar !!</h1>
                         <asp:TextBox ID="TextBox6" runat="server" placeholder="Nombre" Width="90%" CssClass="input"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Correo Electrónico" Width="90%" CssClass="input"></asp:TextBox>
                        <br />
                        <br />
                        <textarea id="TextArea2" placeholder="Escribenos aquí..."></textarea>
                        <button type="button" onclick="alert('Gracias por escribirnos, te responderemos lo más pronto posible!')" class="btn btn-default" style="margin-top:4px;">Enviar</button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="jumbotron contacto tamaño">
                        <h1 class="text-center titulo">Comunícate con nosotros </h1>
                        <p><span class="glyphicon glyphicon-earphone"></span> <span>555-5555</span></p>                    
                        <p><span class="glyphicon glyphicon-envelope"></span> <span>elgabo@gmail.com</span></p>
                        <p><img src="https://user-images.githubusercontent.com/11203357/29274582-4be0c7e2-8100-11e7-83c8-0435aee88626.png" width="21" height="21"/> <i>S</i>profe</p>
                    </div>                    
                </div>
            </div>
    </div>


</asp:Content>
