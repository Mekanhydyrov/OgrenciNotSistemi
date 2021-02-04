using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrMsjYaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtGonderen.Text = Session["OgrNumara"].ToString();
           
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblMesajlarTableAdapter dt = new DataSet1TableAdapters.TblMesajlarTableAdapter();
            dt.MesajGonder(TxtGonderen.Text, TxtAlici.Text, TxtBaslik.Text, Txticerik.Value);
            Response.Redirect("OgrMsjGiden.aspx");
        }
    }
}