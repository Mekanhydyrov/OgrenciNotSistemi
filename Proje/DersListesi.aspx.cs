using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class DersListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblDerslerTableAdapter dt = new DataSet1TableAdapters.TblDerslerTableAdapter();
            Repeater1.DataSource=dt.DersListele();
            Repeater1.DataBind();
        }
    }
}