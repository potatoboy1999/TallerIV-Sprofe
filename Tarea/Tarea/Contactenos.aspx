<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="Tarea.Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #contacto {
            background-color: cornflowerblue;
        }

        .titulo {
            margin-top: -10px;
            margin-bottom: 40px;
        }
        #TextArea1{            
            height:200px;
            width:90%;
        }
        .input{
            border-radius:4px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="jumbotron">
            <h1>Tu opinión es muy importante... <small>Ayúdanos a mejorar la plataforma</small></h1>

        </div>
    </div>

    <div class="container">
        <div class="jumbotron" id="contacto">
            <h1 class="text-center titulo">Déjanos un comentario</h1>
            <div class="row">
                <div class="col-md-6">
                    <p>Nuestro número <span class="glyphicon glyphicon-earphone"></span>: <span>555-5555</span></p>                    
                    <p>Email <span class="glyphicon glyphicon-envelope"></span>: <span>elgabo@gmail.com</span></p> 
                    <br />
                    <br />
                    <p><span class="glyphicon glyphicon-heart"></span></p>
                </div>
                
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Nombre" Width="90%" CssClass="input"></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Correo Electrónico" Width="90%" CssClass="input"></asp:TextBox>
                        <br />
                        <br />
                        <textarea id="TextArea1" ></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
