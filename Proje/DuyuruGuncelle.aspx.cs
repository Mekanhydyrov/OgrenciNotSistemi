using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        int i;
        DataSet1TableAdapters.TblDuyurularTableAdapter dt = new DataSet1TableAdapters.TblDuyurularTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                i = Convert.ToInt32(Request.QueryString["Duyuruid"]);
                TxtDuyuruid.Text = i.ToString();

                TxtBaslik.Text = dt.DuyuruTxt(i)[0].DuyuruBaslik;
                TextArea1.Value = dt.DuyuruTxt(i)[0].Duyuruicerik;
            }

        }

        protected void BtnGunclle_Click(object sender, EventArgs e)
        {
            dt.DuyuruGuncelle(TxtBaslik.Text, TextArea1.Value, Convert.ToInt32(TxtDuyuruid.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}