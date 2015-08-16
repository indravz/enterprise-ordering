using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class Disconnect_Pr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int O_id = int.Parse(Request.QueryString["V"]);
            NewOrder.ServiceReference2.Service1SoapClient x = new NewOrder.ServiceReference2.Service1SoapClient();

            //NewOrder.ServiceReference2.Class3[] c1 = x.Getstatus((int)Session["ed"]);
            //if(c1[0].otype == "D" )
            //{
            //    //GridView1.Visible = false;
            //    //Label2.Visible = false;
            //    Label1.Text = "This is a disconnect request";
            //}
            //else if(c1[0].otype == "S")
            //{
            //    //GridView1.Visible = false;
            //    //Label2.Visible = false;
            //    Label1.Text = "This is a Suspend request";
            //}
            NewOrder.ServiceReference2.Class2[] c = x.getproducts(O_id);
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

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int cuy = (int)Session["ed"];
            Response.Redirect("Disconnect_Or.aspx?customerid=" + cuy.ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}