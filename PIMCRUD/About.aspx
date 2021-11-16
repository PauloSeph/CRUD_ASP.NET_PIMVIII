<%@ Page Title="Usuários" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PIMCRUD.About" %>

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
                <asp:TextBox ID="campoCPF" runat="server" Font-Size="Medium" Width="280px" Style="margin-left: 0" BackColor="#D1D1D1" ReadOnly="True"></asp:TextBox>
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
                    <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#6666FF" BorderColor="White" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="100px" BorderStyle="Solid" BorderWidth="1px" Height="40px" OnClick="Atualizar" />


                    <asp:Button ID="Button6" runat="server" Text="Cancelar" BackColor="White" BorderColor="#666699" Font-Bold="True" Font-Size="Medium" ForeColor="#666666" Width="100px" BorderStyle="Solid" BorderWidth="1px" Height="40px" OnClick="Clear" />

                </div>

            </td>
        </tr>



    </table>



    <div style="margin-left: 2rem;">

        <div style="width: 260px;">
            <p style="font-weight: bold">Digite o ID</p>

            <asp:TextBox ID="campoId" runat="server" Font-Size="Medium" Width="40px" Style="margin-left: 0; padding-left: 6px;"></asp:TextBox>
        </div>

        <br />
        <asp:Label ID="Label1" runat="server" Text="Label">
        Preenchendo os campos
        </asp:Label>
        <div>

            <asp:Button ID="getAll" runat="server" Text="Obter Usuário" BackColor="#6666FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="150px" BorderWidth="1px" Height="40px" BorderStyle="Solid" OnClick="PopulandoCampos" />


            <asp:Button ID="Delete" runat="server" Text="Delete" BackColor="#6666FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="150px" BorderWidth="1px" Height="40px" BorderStyle="Solid" OnClick="Deletar" OnClientClick="return confirm('Tem certeza que quer deletar?')" />



        </div>
    </div>





    <br />

    <h2>Exibindo a tabela de usuários -
              
     <asp:Button ID="GetById" runat="server" Text="Get One" BackColor="#9933FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="82px" OnClick="ObterPeloID" />





    </h2>


    <asp:GridView ID="GridView1" runat="server" Width="622px" BackColor="Silver" Font-Names="Consolas">
        <AlternatingRowStyle HorizontalAlign="Center" />



        <RowStyle HorizontalAlign="Center" Wrap="True" />


    </asp:GridView>


</asp:Content>
