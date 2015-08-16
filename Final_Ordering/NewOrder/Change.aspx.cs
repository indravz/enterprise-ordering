using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnterpriseOrdering
{
    public partial class Change : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {


            int cid =int.Parse(Request.QueryString["customerid"]);
            
            if (!IsPostBack)
            {
                
                Session["ec1"] = cid;
            }
            NewOrder.ServiceReference2.Service1SoapClient x = new NewOrder.ServiceReference2.Service1SoapClient();
            NewOrder.ServiceReference2.Class1[] c = x.Getorderid((int)Session["ec1"]);
            List<NewOrder.ServiceReference2.Class1> l = new List<NewOrder.ServiceReference2.Class1>();            
            for (int i = 0; i < c.Length; i++)
            {
                l.Add(c[i]);
            }
            int p = (int)Session["ec1"];
            NewOrder.ServiceReference2.Service1SoapClient s = new NewOrder.ServiceReference2.Service1SoapClient();
            NewOrder.ServiceReference2.Class3[] c1 = s.Getstatus(p);
            if (c1[0].otype == "D")//|| c1[0].otype == "S")
            {

                Label1.Text = "This Service is disconnected.";
                GridView1.Visible = false;
                Button1.Visible = false;

            }
            else if (c1[0].otype == "S")
            {
                Label1.Text = "This Service is suspended.";
                GridView1.Visible = false;
                Button1.Visible = false;

            }
            GridView1.DataSource = l;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NewOrder.ServiceReference2.Service1SoapClient s = new NewOrder.ServiceReference2.Service1SoapClient();
            string str = null;
            str = DateTime.Now.ToString("yyyy/MM/dd");
            //int i=s.insert_order("PR", TextBox1.Text, str, "", "C", 27);
            int p = (int)Session["ec1"];
            NewOrder.ServiceReference2.Class3[] c1 = s.Getstatus(p);
            //if (c1[0].otype == "D" )//|| c1[0].otype == "S")
            //{

            //    Label1.Text = "This Service is disconnected.";
            //    GridView1.Visible = false;
            //    Button1.Visible = false;

            //}
            //else if (c1[0].otype == "S")
            //{
            //    Label1.Text = "This Service is suspended.";
            //    GridView1.Visible = false;
            //    Button1.Visible = false;
                   
            //
            
            
                string s1 = c1[0].oxml;
                //<state_code>NY</state_code>
                // <zip_code>10001</zip_code>
                string x = s1;
                int i = x.IndexOf("<state_code>");
                int j = x.IndexOf("</state_code>");
                string l = "<state_code>";
                int k = j - i - l.Length;
                string s2 = x.Substring(i + l.Length, k);
                string y = s1;
                i = y.IndexOf("<zip_code>");
                j = y.IndexOf("</zip_code>");
                l = "<zip_code>";
                k = j - i - l.Length;
                string s3 = y.Substring(i + l.Length, k);
                //string str2 = s.Replace(x, "Inactive");
                // Console.WriteLine(str2);
                changeSession c = new changeSession();
                c.id = (int)Session["ec1"];
                c.statecode = s2;
                c.zipcode = s3;
                Session["change"] = c;
                Response.Redirect("OrderForm.aspx?v1=1");
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("http://192.168.0.145:8080/Project/index-2A.html");
        }
    }
}