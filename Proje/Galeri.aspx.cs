using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class Galeri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblOgrenciTableAdapter dt = new DataSet1TableAdapters.TblOgrenciTableAdapter();
            Repeater1.DataSource = dt.OgrListele();
            Repeater1.DataBind();
        }
    }
}