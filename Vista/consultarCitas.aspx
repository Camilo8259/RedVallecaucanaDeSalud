<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="consultarCitas.aspx.cs" Inherits="Vista.consultarCitas1" %>

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
    <title>Consultar citas</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%
        if (int.Parse(Session["idRol"].ToString()) == 3)
        {
    %>
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Calificar citas</h4>
        </div>
    </div>
    <%} %><%
        if (int.Parse(Session["idRol"].ToString()) == 1)
        {
    %>
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Consultar citas</h4>
        </div>
    </div>
    <%} %>
    <hr>
    <asp:Panel ID="PanelGrid" runat="server">
        <asp:GridView Width="100%" CellSpacing="0" class="table table-bordered table-hover tabla" ID="gdgGrid" runat="server" AutoGenerateColumns="False" OnRowCommand="gdgGrid_RowCommand" OnRowDataBound="gdgGrid_RowDataBound" OnSelectedIndexChanged="gdgGrid_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id_cita" HeaderText="Id cita" />
                <asp:BoundField DataField="fecha_cita" HeaderText="Fecha" />
                <asp:BoundField DataField="id_hora" HeaderText="Hora" />
                <asp:BoundField DataField="especialista" HeaderText="Atendido por:" />
                <asp:BoundField DataField="especialidad" HeaderText="Especialidad" />
                <asp:BoundField DataField="calificacion" HeaderText="Calificación" />
                <asp:BoundField DataField="estado" HeaderText="Estado" />

                <asp:TemplateField HeaderText="Calificación">
                    <ItemTemplate>
                        <asp:DropDownList class="js-example-basic-single form-control" ID="ddlCalificar" runat="server"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Calificar">
                    <ItemTemplate>
                        <asp:Button CssClass="btn btn-success" CommandName="Calificar" ID="bntCalificar" runat="server" Text="Calificar" />
                    </ItemTemplate>
                </asp:TemplateField>
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
</asp:Content>