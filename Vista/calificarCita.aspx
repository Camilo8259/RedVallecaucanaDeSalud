<%@ Page Title="" Language="C#" MasterPageFile="~/Contenido.Master" AutoEventWireup="true" CodeBehind="calificarCita.aspx.cs" Inherits="Vista.calificarCita1" %>

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
    <title>Calificar Cita></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <h4 class="page-header"><i></i>Calificar cita</h4>
        </div>
    </div>

    <div class="row">
        <div class="col-4" style="border-right: 1px solid rgba(0,0,0,.1);">
            <br />
            <label>Datos de la cita</label/>
            <br />
            <asp:Label ID="lblnombre" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblfecha" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblente" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblhora" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblespecialista" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblespecialidad" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblestado" runat="server"></asp:Label>
        </div>
        <div class="form-row">
            <hr>

            <div class="form-group col-md-4">
                <label>Seleccione la calificacion de acuerdo a la atencion recibida:</label>
                <asp:DropDownList class="form-control" ID="DropDownListCal" runat="server" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <center>
    <br />
        <div class="form row">
            <asp:Button runat="server" class="btn btn-success" name="registro" ID="btnCalificarCita" Text="Calificar cita" OnClick="btnCalificarCita_Click" />
        </div>
    </center>
</asp:Content>
