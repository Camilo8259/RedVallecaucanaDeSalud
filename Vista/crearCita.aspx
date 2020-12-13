<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="crearCita.aspx.cs" Inherits="Vista.crearCita1" %>

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
    <title>Crear cita</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Agendar cita</h4>
        </div>
    </div>

    <div class="row">
        <div class="col-4" style="border-right: 1px solid rgba(0,0,0,.1);">
            <br />
            <label>Datos del especialista</label>
            <br />
            <asp:Label ID="lblid" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblnombreE" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblespecialidad" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblnumeroLicencia" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblenteSaludE" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblcorreoE" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblcelularE" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblciudadE" runat="server"></asp:Label>
        </div>
        <div class="form-row">
            <hr>

            <div class="form-group col-md-4">
                <label>Hora de la cita:</label>
                <asp:DropDownList class="form-control" ID="DropDownListHora" runat="server" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged">
                </asp:DropDownList>
            </div>


            <div class="form-group col-md-4">
                <label>Fecha:</label>
                <asp:TextBox class="form-control" ID="txtFecha" runat="server" type="date">
                </asp:TextBox>
            </div>
        </div>
    </div>
    <center>
    <br />
        <div class="form row">
            <asp:Button runat="server" class="btn btn-success" name="registro" ID="btnRegistrarCita" Text="Reservar cita" OnClick="btnRegistrarCita_Click" />
        </div>
    </center>
</asp:Content>
