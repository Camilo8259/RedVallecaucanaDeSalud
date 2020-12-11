<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="agregarEnte.aspx.cs" Inherits="Vista.agregarEnte" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <title>Agregar ente</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Agregar ente de salud</h4>
        </div>
    </div>  
    <hr>
    <div class="row justify-content-center">
        <div class="col-6 mb-3">
            <label>Nit:</label>
            <asp:TextBox CssClass="form-control" placeholder="Nit" type="number" runat="server" name="nit" ID="TextNit" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6">
            <label>Razón social</label>
            <asp:TextBox CssClass="form-control" placeholder="Razon Social" name="paterno" runat="server" ID="TextRazonS" type="text" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
            <label>Representante legal:</label>
            <asp:TextBox CssClass="form-control" runat="server" placeholder="Representante" name="representante" ID="TextRepresentante" type="text" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6">
            <label>Correo:</label>
            <asp:TextBox CssClass="form-control" placeholder="Correo" runat="server" name="correo" ID="TextCorreo" type="email" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
            <label>Telefono</label>
            <asp:TextBox CssClass="form-control" placeholder="telefono" runat="server" name="telefono" ID="TextTelefono" type="number" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6">
            <label for="sitioWeb">Sitio web:</label>
            <asp:TextBox CssClass="form-control" placeholder="Sitio Web" runat="server" name="sitioWeb" ID="textSitioW" type="text" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6">
            <label for="Ciudad">Ciudad o municipo:</label>
            <asp:DropDownList class="js-example-basic-single form-control" ID="DropDownList" runat="server">
            </asp:DropDownList>
        </div>
        <div class="col-6">
            <label for="Capacidad">Capacidad de pacientes:</label>
            <asp:TextBox CssClass="form-control" placeholder="Capacidad" runat="server" name="capacidad" ID="TextCapacidad" type="number" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-12 mt-4 justify-content-center">
            <center>
                <asp:Button runat="server" class="btn btn-success" name="registro" ID="btnRegistrarEnte" Text="Registrar" OnClick="btnRegistrarEnte_Click" />
            </center>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <!-- select2 js -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.js-example-basic-single').select2({
                placeholder: "Filtra",
                language: "es"
            });
        });
    </script>
</asp:Content>
