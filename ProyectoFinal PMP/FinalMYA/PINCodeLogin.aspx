<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PINCodeLogin.aspx.cs" Inherits="FinalMYA.PINCodeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="cssSinFooter.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <img src="imagenes/logo__0__497%20(1).png" />
        </header>
        <div class="auto-style1">
            <h1>Configurar inicio de sesión por codigo PIN</h1>
            <p>Con el inicio de sesión por código PIN habilitado, le enviaremos un mensaje de texto con un PIN de uso único cada vez que desee iniciar sesión, para que no tenga más que recordar su nombre de usuario o contraseña.</p>
            <p>Para empezar, dejenos saber el número móvil que desee utilizar. Dentro de dos minutos, le enviaremos por mensaje de texto un PIN, el cual deberá introducir aquí para completar la configuración. No es necesario memorizarlo - Los PIN expiran después de 30 minutos, entonces deberá usar uno diferente cada vez que inície sesión.</p>
            <br />
            <br />
            <asp:Button ID="Button2"  CssClass="btn" runat="server" Text="volver" OnClick="Button2_Click" />
            <br />
        </div>
    </form>
    <footer>
        <p>My Appointments</p>
    </footer>
    </form>
</body>
</html>
