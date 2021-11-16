<%@ Page Title="Novo Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PIMCRUD._Default" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <h2 style="font-size: x-large; font-family: Verdana; color: slategrey; margin: 50px auto 0 auto; text-align: center;">
        <%: Title %>
    </h2>

    <br />
    <br />

    <table style="width: 50%; margin: 0 auto 0 auto;">

        <tr>
            <td class="modal-sm" style="width: 209px; height: 20px; color: coral">
                <br />
                <br />
                Dados pessoais</td>
            <td style="height: 20px; width: 263px;">
                <br />
            </td>
        </tr>

        <tr>
            <td style="width: 209px; height: 24px;">
                <br />
                Nome
                <br />
                <asp:TextBox ID="campoNome" runat="server" Font-Size="Medium" Width="280px"></asp:TextBox>
            </td>

            <td style="height: 24px; width: 260px;">
                <br />
                CPF<br />
                <asp:TextBox ID="campoCPF" runat="server" Font-Size="Medium" Width="280px" Style="margin-left: 0"></asp:TextBox>
            </td>

        </tr>

        <tr>
            <td style="width: 209px; height: 24px;">
                <br />
                Telefone
                <br />
                <asp:TextBox ID="campoTelefone" runat="server" Font-Size="Medium" Width="280px"></asp:TextBox>
            </td>

            <td style="height: 24px; width: 263px;">
                <br />
                Celular<br />
                <asp:TextBox ID="campoCelular" runat="server" Font-Size="Medium" Width="280px" Style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>


        <tr>
            <td class="modal-sm" style="width: 209px">&nbsp;</td>
            <td style="width: 263px" class="modal-sm">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px; height: 20px; color: coral">
                <br />
                Endereço</td>
            <td style="height: 20px; width: 280px;"></td>
        </tr>


        <tr>
            <td style="width: 209px; height: 24px;">

                <br />
                Rua
                <br />
                <asp:TextBox ID="campoRua" runat="server" Font-Size="Medium" Width="280px"></asp:TextBox>
            </td>

            <td style="height: 24px; width: 263px;">
                <br />
                Número<br />
                <asp:TextBox ID="campoNumero" runat="server" Font-Size="Medium" Width="280px" Style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="modal-sm" style="width: 209px">
                <br />
                Cep
                <br />
                <asp:TextBox ID="campoCep" runat="server" Font-Size="Medium" Width="280px"></asp:TextBox>
            </td>
            <td style="width: 263px" class="modal-sm">
                <br />
                Bairro
                <br />
                <asp:TextBox ID="campoBairro" runat="server" Font-Size="Medium" Width="280px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">
                <br />
                Cidade
                <br />
                <asp:TextBox ID="campoCidade" runat="server" Font-Size="Medium" Width="280px"></asp:TextBox>
            </td>
            <td style="width: 127px; height: 32px;">
                <br />
                Estado<br />
                <div>
                    <asp:DropDownList ID="DropDownListEstado" runat="server" Height="30px" Width="80px" BackColor="#6699FF" Font-Bold="True" Font-Names="Consolas" ForeColor="White">
                        <asp:ListItem>SP</asp:ListItem>
                        <asp:ListItem>RS</asp:ListItem>
                        <asp:ListItem>RJ</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 209px">&nbsp;</td>
            <td style="width: 127px; height: 32px;">


                <br />


                <br />

                <div style="text-align: end; margin-right: 1.2rem;">
                    <asp:Button ID="Button1" runat="server" Text="Salvar" BackColor="#6666FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="100px" OnClick="CriandoUsuario" BorderStyle="Solid" BorderWidth="1px" Height="40px" />


                    <asp:Button ID="Button6" runat="server" Text="Cancelar" BackColor="White" BorderColor="#666699" Font-Bold="True" Font-Size="Medium" ForeColor="#666666" Width="100px" BorderStyle="Solid" BorderWidth="1px" Height="40px" OnClick="Clear" />

                </div>

            </td>
        </tr>



    </table>






















</asp:Content>
