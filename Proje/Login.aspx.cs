using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OgrenciKayitWeb
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-V97H4S3\SQLEXPRESS;Initial Catalog=DbOgrenciSite;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnOgrtGiris_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TblOgretmen Where OgrtNumara=@p1 and OgrtSifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNo.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Session.Add("OgrtNumara", TxtNo.Text);
                Response.Redirect("AnaSayfa.aspx");
            }
            else
            {
                TxtNo.Text = "Hatalı Giriş";
            }
            baglanti.Close();
        }

        protected void BtnOgrenci_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From TblOgrenci Where OgrNumara=@p1 and OgrSifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNo.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Session.Add("OgrNumara", TxtNo.Text);
                Response.Redirect("OgrAnaSayfa.aspx");
            }
            else
            {
                TxtNo.Text = "Hatalı Giriş";
            }
            baglanti.Close();
        }
    }
}