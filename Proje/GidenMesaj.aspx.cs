using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class GidenMesaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblMesajlarTableAdapter dt = new DataSet1TableAdapters.TblMesajlarTableAdapter();
            Repeater1.DataSource = dt.GidenMesaj(Session["OgrtNumara"].ToString());
            Repeater1.DataBind();
        }
    }
}