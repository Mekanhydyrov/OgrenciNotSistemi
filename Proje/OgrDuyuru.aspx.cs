using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrDuyuru : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblDuyurularTableAdapter dt = new DataSet1TableAdapters.TblDuyurularTableAdapter();
            Repeater1.DataSource = dt.OgrDuyuruGetir();
            Repeater1.DataBind();
        }
    }
}