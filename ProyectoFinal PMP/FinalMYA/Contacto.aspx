<%@ Page Title="" Language="C#" MasterPageFile="~/Esqueleto.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="FinalMYA.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="background-color: #5DADE2; border-top: 2px solid black; padding: 15px; color: white;">
        <h1 style="margin: 10px; font-size: 50px; font-family: 'Eras ITC'; color: #5A5957;">Contactenos</h1>
        <h2>Tu opinion es importante para nosotros</h2>
        <h2>En caso de que tengas una queja, sugerencia o reclamo por favor ayudanos mandando un correo.
        </h2>
        <h3 style="text-align: center;">MyAppointments@usil.pe</h3>
        <h2>Tambien puedes llamarnos y con gusto te atendermos </h2>
        <h3 style="text-align: center;">999999999</h3>
        <h3 style="text-align: center;">333-1111</h3>
    </div>
    <br />
    <br />
    <div style="background-color: #5DADE2; padding: 15px; color: white;">
        <h1 style="margin: 10px; font-size: 50px; font-family: 'Eras ITC'; color: #5A5957;">Soy Doctor!</h1>
        <h2>Si quieres ser parte de MyAppointments para que asi puedan contactarte por medio de nuestra web haz clic
                en nuestro boton de registrarme que se encuentra en la parte inferior.
        </h2>
        <div style="text-align: center">
            <asp:Button ID="QuieroR" runat="server" Text="Quiero Registrarme"/>
        </div>
    </div>
</asp:Content>
