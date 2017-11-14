<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="Tarea._404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .jumbotron{
            margin-top:15px;
        }
        .relleno{
            min-height:440px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="jumbotron text-center">
            <h1>Página no encontrada</h1>
        </div>
    </div>
    <div class="relleno"></div>

</asp:Content>
