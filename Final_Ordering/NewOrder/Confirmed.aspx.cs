using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class Confirmed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NewOrder.ServiceReference2.Service1SoapClient t = new NewOrder.ServiceReference2.Service1SoapClient();

            NewOrder.ServiceReference2.Class4[] c = t.Getids();
           
            Label2.Text="Your Order Id is "+c[0].order_id;
            Label3.Text = "Your Customer Id is " + c[0].customer_id;
            
        }
    }
}