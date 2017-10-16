<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profesor.aspx.cs" Inherits="Tarea.Profesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row">
            <h1>El Profe...!</h1>            
        </div>
        <div class="row">
            <div class="col-md-4">
                <img src="Imagenes/profe.PNG"  class="img-rounded img-responsive" height="450" width="300"/>
                <h3 class="text-left">Aquí hay un suculento párrafo poco imaginativo que quiere llamar tu atención para esta entrega del día 18 de Septiembre del 2017</h3>
            </div>
            <div class="col-md-8">
                <div class="row" style="height:400px;">
                    <div class="col-md-8">
                        <h1>Los stats</h1>
                        <p>Stat 1</p>
                        <p>Stat 2</p>
                        <p>Stat 3</p>
                        <p>Stat 4</p>
                    </div>
                    <div class="col-md-4" style="overflow:scroll;">
                        <img src="Imagenes/publicidad1.JPG" />
                    </div>
                </div>
                <div class="row">
                    <h1>Floroo</h1>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
