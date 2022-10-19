using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApp_Insert_
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connection1 = ConfigurationManager.ConnectionStrings["RADNICI"].ConnectionString.ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ID = int.Parse(TextBox4.Text);
            if (ID == 0) { throw new Exception("ID ne moze biti 0! Pokusajte ponovo!"); }
            string ime = TextBox5.Text;
            string prezime = TextBox7.Text;
            string pol = Convert.ToString(DropDownList3.SelectedValue);
            double licni_dohodak = Convert.ToDouble(TextBox6.Text);

            SqlConnection connection = new SqlConnection(connection1);
            connection.Open();
            string commandText = "INSERT INTO [RADNIK] ([ID], [IME], [PREZIME], [POL], [LICNI_DOHODAK]) VALUES (@ID, @IME, @PREZIME, @POL, @LICNI_DOHODAK)";
            SqlCommand command = new SqlCommand(commandText, connection);
            command.Parameters.Add("@ID", SqlDbType.Int);
            command.Parameters["@ID"].Value = ID;

            command.Parameters.Add("@IME", SqlDbType.Char);
            command.Parameters["@IME"].Value = ime;

            command.Parameters.Add("@PREZIME", SqlDbType.Char);
            command.Parameters["@PREZIME"].Value = prezime;

            command.Parameters.Add("@POL", SqlDbType.Char);
            command.Parameters["@POL"].Value = pol;

            command.Parameters.Add("@LICNI_DOHODAK", SqlDbType.Int);
            command.Parameters["@LICNI_DOHODAK"].Value = licni_dohodak;

            command.ExecuteNonQuery();
            GridView1.DataBind();
        }
    }
}