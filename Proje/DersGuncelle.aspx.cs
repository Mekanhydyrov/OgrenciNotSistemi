using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["Dersid"]);

                DataSet1TableAdapters.TblDerslerTableAdapter dt = new DataSet1TableAdapters.TblDerslerTableAdapter();
                TxtDersAd.Text = dt.DersGetirTxt(id)[0].DersAd;
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Dersid"]);
            DataSet1TableAdapters.TblDerslerTableAdapter dt = new DataSet1TableAdapters.TblDerslerTableAdapter();
            dt.DersGuncelle(TxtDersAd.Text, id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}