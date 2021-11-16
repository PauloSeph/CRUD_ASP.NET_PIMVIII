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
    public partial class About : Page
    {
        private const string ConnectionString = "Data Source=.\\SQLEXPRESS;Initial Catalog=DBTest;Integrated Security=True;Pooling=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection connect = new SqlConnection(ConnectionString);

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Usuarios", connect);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}