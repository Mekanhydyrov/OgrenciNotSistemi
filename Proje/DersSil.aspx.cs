using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class DersSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["Dersid"]);
            DataSet1TableAdapters.TblDerslerTableAdapter dt = new DataSet1TableAdapters.TblDerslerTableAdapter();
            dt.DersSil(id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}