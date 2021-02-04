using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrMsjGiden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblMesajlarTableAdapter dt = new DataSet1TableAdapters.TblMesajlarTableAdapter();
            Repeater1.DataSource = dt.OgrMsjGiden(Session["OgrNumara"].ToString());
            Repeater1.DataBind();


            //Select(OgrAd + ' ' + OgrSoyad) as 'Alici',Baslik,icerik,Tarih
            //from TblMesajlar inner join TblOgrenci
            //on TblMesajlar.Alici = TblOgrenci.OgrNumara
            //Where Gonderen = @Gonderen
        }
    }
}