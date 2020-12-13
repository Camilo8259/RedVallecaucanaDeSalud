<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="especialidades.aspx.cs" Inherits="Vista.especialidades" %>

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
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">    <title>Especialidades</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Consultar especialistas</h4>
        </div>
    </div>
    <hr>
    <div class="col-12 table-responsive-md mt-3 mb-3">
        <asp:GridView Width="100%" CellSpacing="0" class="table table-bordered table-hover tabla" ID="gdgGrid" runat="server" AutoGenerateColumns="False" OnRowDataBound="gdgGrid_RowDataBound" OnRowCommand="gdgGrid_RowCommand">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id"/>
                <asp:BoundField DataField="licencia" HeaderText="Nº Licencia"/>
                <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="ente" HeaderText="Ente de salud" />
                <asp:BoundField DataField="correo" HeaderText="Correo" />
                <asp:BoundField DataField="celular" HeaderText="Celular" />
                <asp:BoundField DataField="especialidad" HeaderText="Especialidad" />
                <asp:BoundField DataField="ciudad" HeaderText="Ciudad" />

                <asp:TemplateField HeaderText="Agendar cita">
                    <ItemTemplate>
                        <center>
                            <asp:ImageButton ID="imgSelec" CommandName="Seleccionar" ImageUrl="~/img/calendar.png" Width="25px" runat="server" />
                        </center>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>No hay datos por mostrar.</EmptyDataTemplate>
        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <!-- bootstrap, popper y jquery -->
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <!-- Datatables -->
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
    <script src="js/dataTables/datatables.min.js"></script>
    <!-- searchPanes -->
    <script src="https://cdn.datatables.net/searchpanes/1.0.1/js/dataTables.searchPanes.min.js"></script>
    <!-- select -->
    <script src="https://cdn.datatables.net/select/1.3.1/js/dataTables.select.min.js"></script>


    <!-- Botones datatable -->
    <script src="js/dataTables/dataTables.buttons.min.js"></script>
    <script src="js/dataTables/jszip.min.js"></script>
    <script src="js/dataTables/pdfmake.min.js"></script>
    <script src="js/dataTables/vfs_fonts.js"></script>
    <script src="js/dataTables/buttons.html5.min.js"></script>
    <script src="js/dataTables/exportar_tablas.js"></script>
</asp:Content>




