<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="agregarEspecialista.aspx.cs" Inherits="Vista.agregarEspecialista1" %>

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
    <title>Agregar especialista</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Agregar especialista</h4>
        </div>
    </div>    
    <hr>
    <%
        if (int.Parse(Session["idRol"].ToString()) == 1)
        {%>
    <p class="text-center"><b>Nota:</b> El especialista a crear no estara asociado con un ente de salud. Este ofrecera un servicio en particular.</p>
    <%} %>
    <div class="row justify-content-center">
        <div class="col-6 mb-3">
            <label>Nombre:</label>
            <asp:TextBox CssClass="form-control" placeholder="Nombre" type="text" runat="server" name="nombre" ID="TextNombre" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
            <label>Correo</label>
            <asp:TextBox CssClass="form-control" placeholder="Correo" name="correo" runat="server" ID="TextCorreo" type="email" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
            <label>Celular</label>
            <asp:TextBox CssClass="form-control" runat="server" placeholder="Celular" name="celular" ID="TextCelular" type="number" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
            <label for="Ciudad">Ciudad o municipio:</label>
            <asp:DropDownList class="js-example-basic-single form-control" ID="drpCiudad" runat="server"></asp:DropDownList>
        </div>
        <div class="col-6 mb-3">
            <label>Número de licencia:</label>
            <asp:TextBox CssClass="form-control" placeholder="Num.Licencia" runat="server" name="licencia" ID="TextNumLicencia" type="number" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
            <label>Fecha de expedición</label>
            <asp:TextBox CssClass="form-control" placeholder="Fecha" runat="server" name="fechaE" ID="TextFechaE" type="date" required autocomplete="off"></asp:TextBox>
        </div>
        <div class="col-6 mb-3">
            <label for="Especialidad">Especialidad:</label>
            <asp:DropDownList class="js-example-basic-single form-control" ID="drpEspecialidad" runat="server"></asp:DropDownList>
        </div>
        <%
            if (int.Parse(Session["idRol"].ToString()) == 2)
            {%>
        <div class="col-6 mb-3">
            <label for="Especialidad">Ente de salud:</label>
            <asp:DropDownList class="js-example-basic-single form-control" ID="ddlEnte" runat="server"></asp:DropDownList>
        </div>
        <%} %>
        <div class="col-12 mt-4 justify-content-center">
            <center>
                <asp:Button runat="server" class="btn btn-success" name="registro" ID="btnRegistarEspecialista" Text="Registrar" OnClick="btnRegistarEspecialista_Click" /><br />
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
