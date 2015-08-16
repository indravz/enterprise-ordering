using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class Disconnect_Due : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string oxml = Session["STR"].ToString();

            NewOrder.ServiceReference2.Service1SoapClient s = new NewOrder.ServiceReference2.Service1SoapClient();
            int i = s.insert_order("PR", TextBox1.Text, DateTime.Now.ToString("yyyy/MM/dd"), oxml, "D", (int)Session["ed"]);


            Response.Redirect("Disconnected.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Disconnect_Or.aspx");
        }
    }
}