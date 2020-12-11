<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="enciclopedia.aspx.cs" Inherits="Vista.enciclopedia1" %>

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


    <!-- select 2 -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <title>Enfermedades</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Consultar enfermedades</h4>
        </div>
    </div>
    <hr>
    <asp:Panel ID="PanelForm" runat="server">
        <center>
        <div class="row">
                <div class="col-3">
                    <div class="field-wrap">
                        <label for="Enfermedad">Enfermedad</label>
                        <asp:DropDownList class="js-example-basic-single form-control" ID="DropDownEnfermedad" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-3">
                    <div class="field-wrap">
                        <label for="Sintoma">Sintoma</label>
                        <asp:DropDownList class="js-example-basic-single form-control" ID="DropDownSintoma" runat="server">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col">
                    <asp:Button runat="server" class="btn btn-primary" name="sintoma" ID="btnConsultarSintoma" Text="Consultar" OnClick="btnConsultarSintoma_Click" />
                </div>
        </div>
            </center>

        <asp:GridView Width="100%" CellSpacing="0" class="table table-bordered table-hover tabla" ID="gdgGrid" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="recomendacion" HeaderText="Recomendacion" />
            </Columns>
            <EmptyDataTemplate>No hay datos por mostrar.</EmptyDataTemplate>
        </asp:GridView>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <!-- DataTables -->
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function () {
            // Cambiar idioma a español
            $('.tabla').DataTable({
                "language": {
                    "url": "https://cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
                }
            });
        });
    </script>
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