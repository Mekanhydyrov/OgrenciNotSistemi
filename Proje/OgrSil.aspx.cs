using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Ogrid"].ToString());

            DataSet1TableAdapters.TblOgrenciTableAdapter dt = new DataSet1TableAdapters.TblOgrenciTableAdapter();
            dt.OgrenciSil(id);
            Response.Redirect("AnaSayfa.aspx");
        }
    }
}