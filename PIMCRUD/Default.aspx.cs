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
        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            connect.Open();
            SqlCommand comm = new SqlCommand("Insert into Usuarios values('" + int.Parse(TextBox1.Text) + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + double.Parse(TextBox3.Text) + "','" + TextBox4.Text + "')", connect);
            comm.ExecuteNonQuery();
            connect.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();
        }

        // Método para pegar Obter os dados no component GridView
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Usuarios", connect);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand comm = new SqlCommand("update Usuarios set nome = '" + TextBox2.Text + "', endereco = '" + DropDownList1.SelectedValue + "', idade = '" + double.Parse(TextBox3.Text) + "', contato = '" + TextBox4.Text + "' where id= '" + int.Parse(TextBox1.Text) + "'", connect);
            comm.ExecuteNonQuery();
            connect.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Update');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand comm = new SqlCommand("delete Usuarios where id= '" + int.Parse(TextBox1.Text) + "'", connect);
            comm.ExecuteNonQuery();
            connect.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Usuário foi deletado');", true);
            LoadRecord();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from Usuarios where id= '" + int.Parse(TextBox1.Text) + "'", connect);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        // Preenchendo os campos de acordo com o ID do usuário
        protected void Button5_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand comm = new SqlCommand("select * from Usuarios where id= '" + int.Parse(TextBox1.Text) + "'", connect);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                TextBox2.Text = r.GetValue(1).ToString();
                DropDownList1.SelectedValue = r.GetValue(2).ToString();
                TextBox3.Text = r.GetValue(3).ToString();
                TextBox4.Text = r.GetValue(4).ToString();
            }
        }
    }
}