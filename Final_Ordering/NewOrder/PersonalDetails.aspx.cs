using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class PersonalDetails : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Customer C = new Customer();
            C.F_name = TextBox1.Text;
            C.L_name = TextBox2.Text;
            C.Email_id = TextBox3.Text;
            C.Ph_no = TextBox4.Text;
            C.Bill_pay_meth = RadioButtonList1.Text;
            Session["Personal_Details"] = C;
            Response.Redirect("AddressDetails.aspx");
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("http://192.168.0.145:8080/Project/index-2A.html");
        }
    }
}