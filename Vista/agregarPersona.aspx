<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="agregarPersona.aspx.cs" Inherits="Vista.agregarPersona" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet" />

    <!-- Timeline CSS -->
    <link href="css/timeline.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="css/startmin.css" rel="stylesheet" />

    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <title>Registro persona</title>
</head>
<body>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="container">
                <div class="row justify-content-center">
                    <form runat="server" method="post">
                        <!--<img class="avatar" src="img/avatar_male.svg" />-->
                        <h2>
                            <a href="login.aspx">
                                <i class="far fa-arrow-alt-circle-left"></i>
                            </a>
                            Registro persona
                        </h2>

                        <div class="input-div one">
                            <div class="col-6 mb-3">
                                <h5>Nombre</h5>
                                <asp:TextBox runat="server" class="input" ID="TextNombre" name="nombre" type="text" required="true" autofocus=""></asp:TextBox>
                            </div>
                        </div>

                        <div class="input-div one">
                            <div class="col-6 mb-3">
                                <h5>Apellido</h5>
                                <asp:TextBox runat="server" class="input" ID="TextApellido" name="paterno" type="text" required="true" autofocus=""></asp:TextBox>
                            </div>
                        </div>

                        <div class="input-div two">
                            <div class="col-6 mb-3">
                                <h5>Celular</h5>
                                <asp:TextBox runat="server" class="input" name="edad" ID="TextCelular" type="number" required="true" autofocus=""></asp:TextBox>
                            </div>
                        </div>

                        <div class="input-div two">
                            <div class="col-6 mb-3">
                                <h5>Correo</h5>
                                <asp:TextBox runat="server" class="input" name="correo" ID="TextCorreo" type="email" required="true" autofocus=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="input-div two">
                            <div class="col-6 mb-3">
                                <h5>Cedula</h5>
                                <asp:TextBox runat="server" class="input" name="user" ID="TextCedula" type="number" required="true" autofocus=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="input-div two">
                            <div class="col-6 mb-3">
                                <h5>Contraseña</h5>
                                <asp:TextBox runat="server" class="input" name="pass" ID="textPassword" type="password" required="true" autofocus="" OnTextChanged="textPassword_TextChanged"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-12 mt-4 justify-content-center">
                            <asp:Button runat="server" class="btn" name="registro" ID="btnRegistra" Text="Registrarme" OnClick="btnRegistra_Click" />
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script type="text/javascript">
        function alertSuccess() {
            Swal.fire({
                icon: 'success',
                title: 'Your work has been saved',
                showConfirmButton: false,
                timer: 1500
            })
        }
    </script>

</body>
</html>
