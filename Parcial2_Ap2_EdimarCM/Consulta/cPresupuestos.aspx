<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cPresupuestos.aspx.cs" Inherits="Parcial2_Ap2_EdimarCM.Consulta.cPresupuestos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 371px;
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
                    <asp:Label ID="Label1" runat="server" Text="Buscar Por:"></asp:Label>
                    <asp:DropDownList ID="DropDownList" runat="server">
                    </asp:DropDownList>
                    <asp:TextBox ID="BuscarTextBox" runat="server"></asp:TextBox>
                    <asp:Button ID="FiltrarButton" runat="server" OnClick="BuscarButton_Click" Text="Filtrar" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Desde"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Hasta"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PresupuestoId" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="PresupuestoId" HeaderText="PresupuestoId" InsertVisible="False" ReadOnly="True" SortExpression="PresupuestoId" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [Presupuestos]"></asp:SqlDataSource>
    </form>
</body>
</html>
