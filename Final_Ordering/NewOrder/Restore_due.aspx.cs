using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class Restore_due : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NewOrder.ServiceReference2.Service1SoapClient s = new NewOrder.ServiceReference2.Service1SoapClient();
            
            
            string str = null;
            string oxml = Session["STR"].ToString();
            str = DateTime.Now.ToString("yyyy/MM/dd");
            int i = s.insert_order("PR", TextBox1.Text, str, oxml, "R", (int)Session["es"]);
            Response.Redirect("SusRes_Submit.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int cuy = (int)Session["es"];
            Response.Redirect("Restore.aspx?customerid=" + cuy.ToString());
        }
    }
}