<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Vista.dashboard" %>

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
    <title>Inicio | Dashboard</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Inicio</h4>
        </div>
    </div>
    <hr>
    <div class="row">
        <% if (int.Parse(Session["idRol"].ToString()) == 1)
            { %>
        <h5>Entes de salud pendientes por asignar usuario de contenido</h5>
        <asp:GridView Width="100%" CellSpacing="0" class="table table-bordered table-hover tabla" ID="gdgGrid" runat="server" AutoGenerateColumns="False" OnRowDataBound="gdgGrid_RowDataBound" OnRowCommand="gdgGrid_RowCommand">
            <Columns>
                <asp:BoundField DataField="id_ente" HeaderText="Id" />
                <asp:BoundField DataField="nit" HeaderText="Nit" />
                <asp:BoundField DataField="razon" HeaderText="Razón social" />
                <asp:BoundField DataField="representante" HeaderText="Representante" />
                <asp:BoundField DataField="ciudad" HeaderText="Ciudad" />
                <asp:BoundField DataField="capacidad" HeaderText="Capacidad de pacientes" />
                <asp:TemplateField HeaderText="Asignar u. de contenido">
                    <ItemTemplate>
                        <asp:DropDownList class="js-example-basic-single form-control" ID="ddlUsuario" runat="server"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Confirmar">
                    <ItemTemplate>
                        <asp:Button CssClass="btn btn-success" CommandName="Asignar" ID="bntAsignar" runat="server" Text="Asignar" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>No hay datos por mostrar.</EmptyDataTemplate>
        </asp:GridView>
        <%} %>
        <% if (int.Parse(Session["idRol"].ToString()) == 2)
            { %>
        <div class="col-12">
            <h5 class="text-center">Entes de salud asociados.</h5>
        </div>

        <asp:GridView Width="100%" CellSpacing="0" class="table table-bordered table-hover tabla" ID="gdvEnte" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="nit" HeaderText="Nit" />
                <asp:BoundField DataField="razon" HeaderText="Razón social" />
                <asp:BoundField DataField="representante" HeaderText="Representante" />
                <asp:BoundField DataField="correo" HeaderText="Correo" />
                <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                <asp:BoundField DataField="sitio" HeaderText="Sitio web" />
                <asp:BoundField DataField="ciudad" HeaderText="Ciudad" />
                <asp:BoundField DataField="capacidad" HeaderText="Capacidad de pacientes" />
            </Columns>
            <EmptyDataTemplate>No hay datos por mostrar.</EmptyDataTemplate>
        </asp:GridView>
        <%} %>
        <% if (int.Parse(Session["idRol"].ToString()) == 3)
            { %>
        <div class="col-12">
            <h5 class="text-center">Historico de citas.</h5>
        </div>
        <asp:GridView Width="100%" CellSpacing="0" class="table table-bordered table-hover tabla" ID="gdvCita" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id_cita" HeaderText="Id" />
                <asp:BoundField DataField="fecha_cita" HeaderText="Fecha cita" />
                <asp:BoundField DataField="id_hora" HeaderText="Hora cita" />
                <asp:BoundField DataField="especialista" HeaderText="Especialista" />
                <asp:BoundField DataField="especialidad" HeaderText="Especialidad" />
                <asp:BoundField DataField="calificacion" HeaderText="Calificación" />
                <asp:BoundField DataField="estado" HeaderText="Estado" />
            </Columns>
            <EmptyDataTemplate>No hay datos por mostrar.</EmptyDataTemplate>
        </asp:GridView>
        <%} %>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/raphael.min.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/js/startmin.js"></script>
</asp:Content>
