using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class Change_prod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = Int32.Parse(Request.QueryString["V"]);
            NewOrder.ServiceReference2.Service1SoapClient x = new NewOrder.ServiceReference2.Service1SoapClient();
            NewOrder.ServiceReference2.Class2[] c = x.getproducts(y);
            List<NewOrder.ServiceReference2.Class2> l = new List<NewOrder.ServiceReference2.Class2>();            
            for (int i = 0; i < c.Length; i++)
            {
                l.Add(c[i]);
            }
            GridView1.DataSource = l;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cuy = (int)Session["ec1"];
            Response.Redirect("Change.aspx?customerid="+cuy.ToString());
        }
    }
}