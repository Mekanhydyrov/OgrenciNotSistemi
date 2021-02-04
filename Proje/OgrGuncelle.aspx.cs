using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrGuncelle : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                try
                {
                    id = Convert.ToInt32(Request.QueryString["Ogrid"].ToString());
                    TxtOgrid.Text = id.ToString();
                    DataSet1TableAdapters.TblOgrenciTableAdapter dt = new DataSet1TableAdapters.TblOgrenciTableAdapter();
                    TxtOgrAd.Text = dt.OgrenciTxtYazdir(id)[0].OgrAd;
                    TxtOgrSoyad.Text = dt.OgrenciTxtYazdir(id)[0].OgrSoyad;
                    TxtOgrTelefon.Text = dt.OgrenciTxtYazdir(id)[0].OgrTelefon;
                    TxtOgrMail.Text = dt.OgrenciTxtYazdir(id)[0].OgrMail;
                    TxtOgrSifre.Text = dt.OgrenciTxtYazdir(id)[0].OgrSifre;
                    TxtOgrFotograf.Text = dt.OgrenciTxtYazdir(id)[0].OgrFotograf;
                }
                catch (Exception)
                {
                    TxtOgrFotograf.Text = "Link Girin";
                }
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblOgrenciTableAdapter dt = new DataSet1TableAdapters.TblOgrenciTableAdapter();
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFotograf.Text, Convert.ToInt32(TxtOgrid.Text));
            Response.Redirect("AnaSayfa.aspx");
        }
    }
}