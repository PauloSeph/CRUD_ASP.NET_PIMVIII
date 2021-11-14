<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PIMCRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="font-size: x-large" align="center">Estudando Formulário</div>
    <table class="nav-justified">
        <tr>
            <td style="width: 189px; height: 20px">&nbsp;</td>
            <td style="height: 20px; width: 280px">ID Estudante</td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="194px"></asp:TextBox>
            &nbsp;
              
                <asp:Button ID="Button5" runat="server" Text="GET" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button5_Click" />
              
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 24px;"></td>
            <td style="width: 280px; height: 24px;">Nome Estudante</td>
            <td style="height: 24px">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px">&nbsp;</td>
            <td style="width: 280px">Endereço</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>SP</asp:ListItem>
                    <asp:ListItem>RS</asp:ListItem>
                    <asp:ListItem>RJ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 189px">&nbsp;</td>
            <td style="width: 280px">Idade</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px; height: 20px"></td>
            <td style="height: 20px; width: 280px">Contato</td>
            <td style="height: 20px">
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 189px">&nbsp;</td>
            <td style="width: 280px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 189px">&nbsp;</td>
            <td style="width: 280px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Inserir" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button1_Click1" />
            &nbsp;
              
                <asp:Button ID="Button2" runat="server" Text="Update" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button2_Click" />
              
        &nbsp;
              
                <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button3_Click" onClientClick="return confirm('Tem certeza que quer deletar?')"/>
              
        &nbsp;
              
                <asp:Button ID="Button4" runat="server" Text="Procurar" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button4_Click" />
              
        </tr>

        <tr>
            <td style="width: 189px">&nbsp;</td>
            <td style="width: 280px">&nbsp;</td>
            <td>
        </tr>
        <tr>
            <td style="width: 189px">&nbsp;</td>
            <td style="width: 280px">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" Width="622px">
                </asp:GridView>
        </tr>


    </table>
    <br />


</asp:Content>
