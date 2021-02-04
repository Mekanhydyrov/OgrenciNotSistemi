using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                DataSet1TableAdapters.TblOgretmenTableAdapter dt = new DataSet1TableAdapters.TblOgretmenTableAdapter();
                DropDownList1.DataSource = dt.OgretmenListele();
                DropDownList1.DataTextField = "OgrtAdSoyad";
                DropDownList1.DataValueField = "Ogrtid";
                DropDownList1.DataBind();
            }  
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblDuyurularTableAdapter dt = new DataSet1TableAdapters.TblDuyurularTableAdapter();
            dt.DuyuruEkle(TxtBaslik.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}