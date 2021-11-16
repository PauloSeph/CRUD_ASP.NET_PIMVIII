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
                
            }
        }
        SqlConnection connect = new SqlConnection(ConnectionString);


        public void limpar()
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


        //POST
        protected void CriandoUsuario(object sender, EventArgs e)
        {
            
            connect.Open();
            SqlCommand comm = new SqlCommand("Insert into Usuarios values('" + campoNome.Text + "','" + campoCPF.Text.ToString() + "','" + campoTelefone.Text.ToString() + "', '" + campoCelular.Text.ToString() + "', '" + campoRua.Text + "', '" + campoNumero.Text + "', '" + campoCep.Text + "', '" + campoBairro.Text + "', '" + campoCidade.Text + "', '" + DropDownListEstado.SelectedValue + "' )", connect); ;
            comm.ExecuteNonQuery();
            connect.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Criado com sucesso');", true);
            limpar();


        }



        protected void Clear(object sender, EventArgs e)
        {
            limpar();
        }




    }
}