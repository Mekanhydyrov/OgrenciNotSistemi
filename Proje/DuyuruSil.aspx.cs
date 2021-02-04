using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class DuyuruSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(Request.QueryString["Duyuruid"]);
            DataSet1TableAdapters.TblDuyurularTableAdapter dt = new DataSet1TableAdapters.TblDuyurularTableAdapter();
            dt.DuyuruSil(i);
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}