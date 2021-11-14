<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PIMCRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h2 style="font-size: x-large; font-family: Verdana; color: slategrey; text-align: center; margin-right: 10px;">PIM VIII - CRUD
    </h2>



    &nbsp;
              
                <asp:Button ID="Button2" runat="server" Text="Update" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button2_Click" />

    &nbsp;
              
                <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button3_Click" OnClientClick="return confirm('Tem certeza que quer deletar?')" />

    &nbsp;
              
                <asp:Button ID="Button4" runat="server" Text="Procurar" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button4_Click" />

    <asp:Button ID="Button5" runat="server" Text="GET" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="Button5_Click" />







    <br />
    <br />







    <table class="nav-justified" style="display: flex; width: 50%; margin: 0 auto 0 auto;">

        <tr>
            <td style="height: 24px; width: 260px;">
                ID<br />
                <asp:TextBox ID="campoId" runat="server" Font-Size="Medium" Width="250px" Style="margin-left: 0"></asp:TextBox>
            </td>

        </tr>

        <tr>
            <td style="width: 260px; height: 24px;">
                <br />
                Dados pessoais<br />
                <br />
                Nome
                <br />
                <asp:TextBox ID="campoNome" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
            </td>

            <td style="height: 24px; width: 260px;">
                <br />
                <br />
                <br />
                CPF<br />
                <asp:TextBox ID="campoCPF" runat="server" Font-Size="Medium" Width="250px" Style="margin-left: 0"></asp:TextBox>
            </td>

        </tr>

        <tr>
            <td style="width: 260px; height: 24px;">
                <br />
                Telefone
                <br />
                <asp:TextBox ID="campoTelefone" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
            </td>

            <td style="height: 24px; width: 263px;">
                <br />
                Celular<br />
                <asp:TextBox ID="campoCelular" runat="server" Font-Size="Medium" Width="250px" Style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>


        <tr>
            <td class="modal-sm" style="width: 260px">&nbsp;</td>
            <td style="width: 263px" class="modal-sm">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 260px; height: 20px; color: coral">
                <br />
                Endereço</td>
            <td style="height: 20px; width: 263px;"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 260px">&nbsp;</td>
            <td style="width: 263px" class="modal-sm">&nbsp;</td>
        </tr>

        <tr>
            <td style="width: 260px; height: 24px;">Rua
                <br />
                <asp:TextBox ID="campoRua" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
            </td>

            <td style="height: 24px; width: 263px;">Número<br />
                <asp:TextBox ID="campoNumero" runat="server" Font-Size="Medium" Width="250px" Style="margin-left: 0"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="modal-sm" style="width: 260px">
                <br />
                Cep
                <br />
                <asp:TextBox ID="campoCep" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
            </td>
            <td style="width: 263px" class="modal-sm">
                <br />
                Bairro
                <br />
                <asp:TextBox ID="campoBairro" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 260px">
                <br />
                Cidade
                <br />
                <asp:TextBox ID="campoCidade" runat="server" Font-Size="Medium" Width="250px"></asp:TextBox>
            </td>
            <td style="width: 127px; height: 32px;">
                <br />
                Estado<br />
                <asp:DropDownList ID="DropDownListEstado" runat="server" Height="28px" Width="80px">
                    <asp:ListItem>SP</asp:ListItem>
                    <asp:ListItem>RS</asp:ListItem>
                    <asp:ListItem>RJ</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 260px"></td>
            <td style="width: 127px; height: 32px;">


                <br />


                <br />
                <asp:Button ID="Button1" runat="server" Text="Salvar" BackColor="#6666FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="100px" OnClick="Button1_Click1" BorderStyle="Solid" BorderWidth="1px" Height="40px" />

                &nbsp;
        <asp:Button ID="Button6" runat="server" Text="Cancelar" BackColor="White" BorderColor="#666699" Font-Bold="True" Font-Size="Medium" ForeColor="#666666" Width="100px" BorderStyle="Solid" BorderWidth="1px" Height="40px" />

            </td>
        </tr>



    </table>



    <br />

    <br />

    <h2>Exibindo a tabela de usuários</h2>
    <asp:GridView ID="GridView1" runat="server" Width="622px">
    </asp:GridView>
</asp:Content>
