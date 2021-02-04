using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrAnaSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["OgrNumara"].ToString();

            DataSet1TableAdapters.TblOgrenciTableAdapter dt = new DataSet1TableAdapters.TblOgrenciTableAdapter();
            TextBox2.Text = "Ad Soyad: " + dt.OgrPanleGetir(TextBox1.Text)[0].OgrAd + " " + dt.OgrPanleGetir(TextBox1.Text)[0].OgrSoyad;
            TextBox3.Text = "Telefon: " + dt.OgrPanleGetir(TextBox1.Text)[0].OgrTelefon;
            TextBox4.Text = "Mail: " + dt.OgrPanleGetir(TextBox1.Text)[0].OgrMail;
            TextBox5.Text = "Şifre: " + dt.OgrPanleGetir(TextBox1.Text)[0].OgrSifre;
            TextBox6.Text = "Fotograf: " + dt.OgrPanleGetir(TextBox1.Text)[0].OgrFotograf;
        }

        protected void BtnGunclle_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrBilgiGuncelle.aspx?OgrNumara=" + TextBox1.Text);
        }
    }
}