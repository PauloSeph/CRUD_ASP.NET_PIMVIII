using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIMCRUD
{
    public partial class _Default : Page
    {
        private const string ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=DBTest;Integrated Security=True;Pooling=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection connect = new SqlConnection(ConnectionString);

        //POST
        protected void CriandoUsuario(object sender, EventArgs e)
        {
            
            connect.Open();
            SqlCommand comm = new SqlCommand("Insert into Usuarios values('" + campoNome.Text + "','" + campoCPF.Text + "','" + campoTelefone.Text + "', '" + campoCelular.Text + "', '" + campoRua.Text + "', '" + campoNumero.Text + "', '" + campoCep.Text + "', '" + campoBairro.Text + "', '" + campoCidade.Text + "', '" + DropDownListEstado.SelectedValue + "' )", connect);
            comm.ExecuteNonQuery();
            connect.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();            
                
        }

        // Get - Método para pegar Obter os dados no component GridView
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Usuarios", connect);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }


        // PUT
        protected void Atualizar(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand comm = new SqlCommand("update Usuarios set nome = '" + campoNome.Text + "', cpf = '" + campoCPF.Text + "', telefone= '" + campoTelefone.Text + "', celular= '" + campoCelular.Text + "', rua = '" + campoRua.Text + "', numero = '" + campoNumero.Text + "', cep = '" + campoCep.Text + "', bairro = '" + campoBairro.Text + "', cidade = '" + campoCidade.Text + "', estado = '" + DropDownListEstado.SelectedValue + "' where id= '" + int.Parse(campoId.Text) + "'", connect);
            comm.ExecuteNonQuery();
            connect.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Update');", true);
            LoadRecord();
        }

        // Delete
        protected void Deletar(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand comm = new SqlCommand("delete Usuarios where id= '" + int.Parse(campoId.Text) + "'", connect);
            comm.ExecuteNonQuery();
            connect.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Usuário foi deletado');", true);
            LoadRecord();
            
        }

        // Obtendo usuário pelo ID
        protected void ObterPeloID(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Usuarios where id= '" + int.Parse(campoId.Text) + "'", connect);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        // Preenchendo os campos de acordo com o ID do usuário
        protected void PopulandoCampos(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand comm = new SqlCommand("select * from Usuarios where id= '" + int.Parse(campoId.Text) + "'", connect);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                campoNome.Text = r.GetValue(1).ToString();
                campoCPF.Text = r.GetValue(2).ToString();
                campoTelefone.Text = r.GetValue(3).ToString();
                campoCelular.Text = r.GetValue(4).ToString();
                campoRua.Text = r.GetValue(5).ToString();
                campoNumero.Text = r.GetValue(6).ToString();
                campoCep.Text = r.GetValue(7).ToString();
                campoBairro.Text = r.GetValue(8).ToString();
                campoCidade.Text = r.GetValue(9).ToString();
                DropDownListEstado.SelectedValue = r.GetValue(10).ToString();
            }
        }

        // Limpando campos
        protected void Clear(object sender, EventArgs e)
        {
            campoNome.Text = "";
            campoCPF.Text = "";
            campoTelefone.Text = "";
            campoCelular.Text = "";
            campoRua.Text = "";
            campoNumero.Text = "";
            campoCep.Text = "";
            campoBairro.Text = "";
            campoCidade.Text = "";
            DropDownListEstado.DataSource = "SP";
        }
    }
}