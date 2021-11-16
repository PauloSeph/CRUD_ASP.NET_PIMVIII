<%@ Page Title="Usuários" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="PIMCRUD.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .grid td, .grid th {
            text-align: center;
            padding: 0 20px 0 20px;
        }

        .botao {
            margin-left: 88.7%;
            margin-bottom: 10px;
            border: solid 1px lightgrey;
            color: coral;
            display: inline-block;
            padding: 12px;
            text-decoration: none;
            font-weight: bold;
            font-size: 1.6rem;
        }
    </style>

    <h2 style="font-size: x-large; font-family: Verdana; color: slategrey; margin: 50px auto 0 auto; text-align: center;">
        <%: Title %>
    </h2>

    <br />
    <br />

    <asp:Panel ID="painelAtualizarForm" runat="server">
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

        <asp:Button ID="getAll" runat="server" Text="Obter Usuário" BackColor="#6666FF" BorderColor="#9933FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="150px" BorderWidth="1px" Height="40px" BorderStyle="Solid" OnClick="PopulandoCampos" />

        <!-- Ver essa parte amanha // Arrumar o campo ID-->
        <p style="font-weight: bold">Digite o ID para preencher os campos</p>
        <asp:TextBox ID="populandoPeloID" runat="server" Font-Size="Medium" Width="40px" Style="margin-left: 0; padding-left: 6px;" OnTextChanged="populandoPeloID_TextChanged"></asp:TextBox>
    </asp:Panel>


    <asp:Panel runat="server" ID="painelExibirRegistro">




        <div>
            
            <h2 style="font-size: 2rem; display: inline;">Tabela de usuários </h2>
            <span class="botao">
                <a runat="server" href="~/">Novo usuário</a>
            </span> 
                
            </>
        </div>




        <asp:GridView ID="GridView1" CssClass="grid" runat="server" Width="781px" BackColor="White" Font-Names="Consolas" HorizontalAlign="Center" Height="172px" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">


            <AlternatingRowStyle HorizontalAlign="Center" BackColor="#CCCCCC" />

            <EditRowStyle HorizontalAlign="Center" />

            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" VerticalAlign="Middle" />

            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

            <RowStyle HorizontalAlign="Center" Wrap="True" />


            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

        </asp:GridView>



        <br />




    </asp:Panel>



    <asp:Panel ID="Panel1" runat="server">
        <div style="margin-left: 2rem;">
            <div style="width: 260px;">

                <p style="font-weight: bold; margin-top: 7rem">Digite o ID para consultar ou excluir</p>
                <asp:TextBox ID="campoId" runat="server" Font-Size="Medium" Width="40px" Style="margin-left: 0; padding-left: 6px;"></asp:TextBox>
            </div>

            <!-- Definir um botão ou link para exibir o formulário para atualizar o registro e ocultar esse -->
            <br />

            <div>

                <asp:Button ID="Delete" runat="server" Text="Delete" BackColor="#6666FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="150px" BorderWidth="1px" Height="40px" BorderStyle="Solid" OnClick="Deletar" OnClientClick="return confirm('Tem certeza que quer deletar?')" />
                <asp:Button ID="GetById" runat="server" Text="Consultar" BackColor="#6666FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="150px" BorderWidth="1px" Height="40px" BorderStyle="Solid" OnClick="ObterPeloID" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="recarregar" runat="server" BorderWidth="0px" Font-Bold="True" Font-Size="Medium" ForeColor="black" Height="40px" OnClick="Recarregar" Text="Recarregar" Width="150px" Font-Italic="True" />

            </div>
        </div>


    </asp:Panel>


</asp:Content>
