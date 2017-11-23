<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rPresupuestoDetalle.aspx.cs" Inherits="Parcial2_Ap2_EdimarCM.Registros.rPresupuestoDetalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 221px;
        }
        .auto-style2 {
            width: 227px;
        }
        .auto-style3 {
            width: 174px;
        }
        .auto-style4 {
            width: 236px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="iddetalleTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="PresupuestoId"></asp:Label>
                    <asp:TextBox ID="IDTextBox" runat="server"></asp:TextBox>
                    *</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox ID="DescripcionTextBox" runat="server"></asp:TextBox>
                    &nbsp;*
                    <asp:Button ID="Buscar1Button" runat="server" OnClick="Buscar1Button_Click" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Meta"></asp:Label>
                    <asp:TextBox ID="MetaTextBox" runat="server"></asp:TextBox>
                    *</td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Logrado"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="LogradoTextBox" runat="server"></asp:TextBox>
                    *</td>
                <td>
                    <asp:Button ID="AgregarButton" runat="server" OnClick="AgregarButton_Click" Text="Agregar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="GuardarButton" runat="server" Height="53px" OnClick="GuardarButton_Click" Text="Guardar" Width="118px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="BuscarButton" runat="server" Height="49px" Text="Buscar" Width="103px" OnClick="BuscarButton_Click" />
                </td>
                <td>
                    <asp:Button ID="NuevoButton" runat="server" Height="56px" Text="Nuevo" Width="137px" OnClick="NuevoButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
