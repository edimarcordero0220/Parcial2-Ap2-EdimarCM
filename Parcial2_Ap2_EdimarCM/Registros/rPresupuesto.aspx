<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rPresupuesto.aspx.cs" Inherits="Parcial2_Ap2_EdimarCM.Registros.rPresupuesto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 177px;
        }
        .auto-style2 {
            width: 179px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="idpreTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Fecha"></asp:Label>
                    <asp:TextBox ID="FechaTextBox" runat="server"></asp:TextBox>
                    *</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
                    *</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Monto"></asp:Label>
                    <asp:TextBox ID="MontoTextBox" runat="server"></asp:TextBox>
                    *</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="GuardarButton" runat="server" Height="42px" OnClick="GuardarButton_Click" Text="Guardar" Width="97px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="BuscarButton" runat="server" Height="40px" Text="Buscar" Width="91px" OnClick="BuscarButton_Click" />
                </td>
                <td>
                    <asp:Button ID="NuevoButton" runat="server" Height="38px" Text="Nuevo" Width="88px" OnClick="NuevoButton_Click" />
                </td>
            </tr>
        </table>
    </form>
    

     <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
