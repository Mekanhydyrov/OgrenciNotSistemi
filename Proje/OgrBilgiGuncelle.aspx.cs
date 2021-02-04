using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrBilgiGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Request.QueryString["OgrNumara"];

            if (IsPostBack == false)
            {
                DataSet1TableAdapters.TblOgrenciTableAdapter dt = new DataSet1TableAdapters.TblOgrenciTableAdapter();
                TextBox2.Text = dt.OgrPanleGetir(TextBox1.Text)[0].OgrAd + " " + dt.OgrPanleGetir(TextBox1.Text)[0].OgrSoyad;
                TextBox3.Text = dt.OgrPanleGetir(TextBox1.Text)[0].OgrTelefon;
                TextBox4.Text = dt.OgrPanleGetir(TextBox1.Text)[0].OgrMail;
                TextBox5.Text = dt.OgrPanleGetir(TextBox1.Text)[0].OgrSifre;
                TextBox6.Text = dt.OgrPanleGetir(TextBox1.Text)[0].OgrFotograf;
            }
        }

        protected void BtnBilgiGuncelle_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text == TextBox7.Text)
            {
                DataSet1TableAdapters.TblOgrenciTableAdapter dt = new DataSet1TableAdapters.TblOgrenciTableAdapter();
                dt.OgrBilgiGuncelle(TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox1.Text);
                Response.Redirect("OgrAnaSayfa.aspx?OgrNumara=" + TextBox1.Text);
            }
            else
            {
                TextBox7.Text = "Lütfen Tekrar Şifreyi Girin";
            }
        }
    }
}