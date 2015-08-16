using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class AddressDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_Checked(object sender, EventArgs e)
        {

            TextBox14.Text = TextBox13.Text;
            TextBox7.Text = TextBox1.Text;
            TextBox8.Text = TextBox2.Text;
            TextBox9.Text = TextBox3.Text;
            TextBox10.Text = TextBox4.Text;
            TextBox11.Text = TextBox5.Text;
            TextBox12.Text = TextBox6.Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Address Bill_Add = new Address();
            Address Ship_Add=new Address();
            Bill_Add.line1 = TextBox1.Text;
            Bill_Add.line2 = TextBox2.Text;
            Bill_Add.city = TextBox3.Text;
            Bill_Add.state = TextBox4.Text;
            Bill_Add.zipcode = TextBox5.Text;
            Bill_Add.statecode = TextBox6.Text;
            if (RadioButton1.Checked)
            {
                Ship_Add = Bill_Add;
            }
            else
            {
                Ship_Add.line1 = TextBox7.Text;
                Ship_Add.line2 = TextBox8.Text;
                Ship_Add.city = TextBox9.Text;
                Ship_Add.state = TextBox10.Text;
                Ship_Add.zipcode = TextBox11.Text;
                Ship_Add.statecode = TextBox12.Text;
            }
            Session["ShipAdd"] = Ship_Add;
            Session["BillAdd"] = Bill_Add;
            Response.Redirect("OrderForm.aspx?v1=0");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonalDetails.aspx");
        }
    }
}