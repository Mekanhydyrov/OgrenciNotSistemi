using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["Notid"].ToString());

                DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
                TxtOgrid.Text = dt.NotListeleTxt(id)[0].Ogrenciid.ToString();
                TxtOgrAdSoyad.Text = dt.NotListeleTxt(id)[0].OgrenciAdSoyad;
                TxtDersAd.Text = dt.NotListeleTxt(id)[0].DersAd;
                TxtViza.Text = dt.NotListeleTxt(id)[0].Viza.ToString();
                TxtFinal.Text = dt.NotListeleTxt(id)[0].Final.ToString();
                TxtBut.Text = dt.NotListeleTxt(id)[0].But.ToString();
                TxtOrtalama.Text = dt.NotListeleTxt(id)[0].Ortalama.ToString();
                TxtDurum.Text = dt.NotListeleTxt(id)[0].Durum.ToString();
                TxtBut.Enabled = false;
                Button1.Enabled = false;
            }
        }

        protected void BtnHesapla_Click(object sender, EventArgs e)
        {
            double viza, final, ortalama;
            viza = Convert.ToInt32(TxtViza.Text);
            final = Convert.ToInt32(TxtFinal.Text);         
            ortalama = (viza * 40 / 100) + (final * 60 / 100);

            if (ortalama > 59.50 && final >= 50)
            {          
                TxtOrtalama.Text = ortalama.ToString("0.00");
                TxtDurum.Text = "True";
            }
            else
            {
                TxtFinal.Enabled = false;
                BtnHesapla.Enabled = false;

                TxtBut.Enabled = true;
                Button1.Enabled = true;
                TxtOrtalama.Text = ortalama.ToString("0.00");
                TxtDurum.Text = "False";
            }
        }

        protected void BtnGunclle_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["Notid"].ToString());

            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse(TxtViza.Text), byte.Parse(TxtFinal.Text), byte.Parse(TxtBut.Text), decimal.Parse(TxtOrtalama.Text), bool.Parse(TxtDurum.Text),id);
            Response.Redirect("NotListe.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double viza, but, ortalama;
            viza = Convert.ToInt32(TxtViza.Text);       
            but = Convert.ToInt32(TxtBut.Text);

            ortalama = (viza * 40 / 100) + (but * 60 / 100);

            if (ortalama > 59.50 && but >= 50)
            {
                TxtOrtalama.Text = ortalama.ToString("0.00");
                TxtDurum.Text = "True";
            }
            else
            {
                TxtOrtalama.Text = ortalama.ToString("0.00");
                TxtDurum.Text = "False";
            }
        }
    }
}