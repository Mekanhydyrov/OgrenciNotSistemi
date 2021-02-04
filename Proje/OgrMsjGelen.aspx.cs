using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class OgrMsjGelen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TblMesajlarTableAdapter dt = new DataSet1TableAdapters.TblMesajlarTableAdapter();
            Repeater1.DataSource = dt.OgrMsjGelen(Session["OgrNumara"].ToString());
            Repeater1.DataBind();
        }
    }
}