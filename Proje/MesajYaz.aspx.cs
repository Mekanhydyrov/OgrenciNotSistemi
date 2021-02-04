using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class MesajYaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtGonderen.Enabled = false;
            TxtGonderen.Text = "210305652";
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblMesajlarTableAdapter dt = new DataSet1TableAdapters.TblMesajlarTableAdapter();
            dt.MesajGonder(TxtGonderen.Text,TxtAlici.Text, TxtBaslik.Text, Txticerik.Value);
            Response.Redirect("GidenMesaj.aspx");
        }
    }
}