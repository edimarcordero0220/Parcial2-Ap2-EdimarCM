<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cPresupuestoDetalle.aspx.cs" Inherits="Parcial2_Ap2_EdimarCM.Consulta.cPresupuestoDetalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="FiltrarButton" runat="server" Text="Filtrar" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="PresupuestoId" HeaderText="PresupuestoId" SortExpression="PresupuestoId" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="Meta" HeaderText="Meta" SortExpression="Meta" />
                            <asp:BoundField DataField="Logrado" HeaderText="Logrado" SortExpression="Logrado" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStr %>" SelectCommand="SELECT * FROM [PresupuestoDetalles]"></asp:SqlDataSource>
    </form>
</body>
</html>
