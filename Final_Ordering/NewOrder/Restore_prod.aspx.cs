using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class REstore_prod : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = Int32.Parse(Request.QueryString["V"]);
            
            
            NewOrder.ServiceReference2.Service1SoapClient x = new NewOrder.ServiceReference2.Service1SoapClient();
            //NewOrder.ServiceReference2.Class3[] c1 = x.Getstatus((int)Session["es"]);
            //if (c1[0].otype == "D")
            //{
            //    GridView1.Visible = false;
            //    Label2.Visible = false;
            //    Label1.Text = "This is a disconnect request";
            //}
            //else if (c1[0].otype == "S")
            //{
            //    GridView1.Visible = false;
            //    Label2.Visible = false;
            //    Label1.Text = "This is a Suspend request";
            //}
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
            int cuy = (int)Session["es"];
            Response.Redirect("Restore.aspx?customerid=" + cuy.ToString());
        }
    }
}