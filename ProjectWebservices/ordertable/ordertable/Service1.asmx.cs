using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
//mods
using Oracle.DataAccess.Client;
//using Oracle.DataAccess.Client; 
//using Oracle.DataAccess.Types; 
//end of mods
namespace ordertable
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {
        OleDbConnection con = null;
        OleDbDataAdapter adp = null;
        [WebMethod]
        public int insert_order(string status, string due, string neg, string xml, string type, int id)
        {
            if (id == 0)
            {
                int row = 0;
                OleDbConnection cn = new OleDbConnection("Provider=OraOLEDB.Oracle;data source=192.168.0.121/orcl;User Id=hr;Password=hr;");
                //  var con = new SqlConnection("Provider=OraOLEDB.Oracle;User Id=scott;Password=tiger;");
                cn.Open();
                var cmd = new OleDbCommand("insert into Customer_SEQ_Table values(Customers_Sequence.nextval)", cn);
                row = cmd.ExecuteNonQuery();
                cmd = new OleDbCommand("Select max(Customer_id) from Customer_SEQ_Table", cn);
                OleDbDataReader r = cmd.ExecuteReader();
                r.Read();
                int cid = Int32.Parse(r[0].ToString());
                //  string s = "INSERT INTO customer_orders (Customer_id,order_id,order_status,order_due_date,order_negotiation_date,order_xml,order_type) VALUES (" + cid + ",order_sequence.nextval + ,'" + status + "','" + due + "','" + neg + "','" + xml + "','" + type + "')";
                cmd = new OleDbCommand("INSERT INTO customer_orders (Customer_id,order_id,order_status,order_due_date,order_negotiation_date,order_xml,order_type) VALUES (" + cid + ",order_sequence.nextval,'" + status + "','" + due + "','" + neg + "','" + xml + "','" + type + "')", cn);
                row = cmd.ExecuteNonQuery();
                return row;
            }
            else
            {
                int row = 0;
                OleDbConnection cn = new OleDbConnection("Provider=OraOLEDB.Oracle;data source=192.168.0.121/orcl;User Id=hr;Password=hr;");
                //  var con = new SqlConnection("Provider=OraOLEDB.Oracle;User Id=scott;Password=tiger;");
                cn.Open();
                var cmd = new OleDbCommand("INSERT INTO customer_orders (Customer_id,order_id,order_status,order_due_date,order_negotiation_date,order_xml,order_type) VALUES (" + id + ",order_sequence.nextval,'" + status + "','" + due + "','" + neg + "','" + xml + "','" + type + "')", cn);
                row = cmd.ExecuteNonQuery();
                return row;
            }

        }
        [WebMethod]
        public List<Class1> Getorderid(int customer_id)
        {

            
            con = new OleDbConnection("Provider=OraOLEDB.Oracle;data source=192.168.0.121/orcl;User Id=hr;Password=hr;");
            adp = new OleDbDataAdapter("select order_id from customer_orders where customer_id=?", con);
        
            adp.SelectCommand.Parameters.AddWithValue("?", customer_id);

            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");
           // adp.Dispose();
            List<Class1> P = new List<Class1>();
            //DataRow dr = ds.Tables["Prod"].Rows[0];
            foreach (DataRow dr in ds.Tables["Prod"].Rows)
            {
                P.Add(new Class1 { oid = Convert.ToInt32(dr["order_id"])});
            }
            return P;
        }
        [WebMethod]
        public List<Class2> getproducts(int oid)
        {
            OleDbConnection con = new OleDbConnection("Provider=OraOLEDB.Oracle;data source=192.168.0.121/orcl;User Id=hr;Password=hr;");
            //OleDbDataAdapter adp = new OleDbDataAdapter("select product_id,product_quantity,product_description from product_services p inner join customer_orders c on c.customer_id=p.customer_id where c.order_id=?", con);
            OleDbDataAdapter adp = new OleDbDataAdapter("select product_id,product_quantity,product_description from product_services where order_id=?", con);
            // adp.SelectCommand.Parameters.AddWithValue("@e", customer_id);
            adp.SelectCommand.Parameters.AddWithValue("?", oid);

            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");

            List<Class2> P = new List<Class2>();

            //DataRow dr = ds.Tables["Prod"].Rows[0];
            foreach (DataRow dr in ds.Tables["Prod"].Rows)
            {
                P.Add(new Class2 { pid = Convert.ToString(dr["product_id"]), qty = Convert.ToInt32(dr["product_quantity"]), pname = Convert.ToString(dr["product_description"]) });
            }
            return P;
        }
        [WebMethod]
        public List<Class3> Getstatus(int cid)
        {
            OleDbConnection con = new OleDbConnection("Provider=OraOLEDB.Oracle;data source=192.168.0.121/orcl;User Id=hr;Password=hr;");
           
         // OleDbDataAdapter adp = new OleDbDataAdapter("select order_status,order_xml,order_type from customer_orders where order_id=?", con);
            OleDbDataAdapter adp = new OleDbDataAdapter("select order_status,order_xml,order_type from customer_orders where order_id=(select max(order_id) from customer_orders where customer_id=?)", con);
            // adp.SelectCommand.Parameters.AddWithValue("@e", customer_id);
            adp.SelectCommand.Parameters.AddWithValue("?", cid);

            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");

            List<Class3> P = new List<Class3>();
            foreach (DataRow dr in ds.Tables["Prod"].Rows)
            {
                P.Add(new Class3 { os = Convert.ToString(dr["order_status"]), otype = Convert.ToString(dr["order_type"]), oxml = Convert.ToString(dr["order_xml"]) });
            }
            return P;
        }

        [WebMethod]
        public List<Class4> Getids()
        {


            con = new OleDbConnection("Provider=OraOLEDB.Oracle;data source=192.168.0.121/orcl;User Id=hr;Password=hr;");
            adp = new OleDbDataAdapter("select max(order_id),max(customer_id) from customer_orders ", con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");
            // adp.Dispose();
            List<Class4> P = new List<Class4>();
            //DataRow dr = ds.Tables["Prod"].Rows[0];
             foreach (DataRow dr in ds.Tables["Prod"].Rows)
            {
            P.Add(new Class4 { order_id = Convert.ToInt32(dr["max(order_id)"]), customer_id = Convert.ToInt32(dr["max(customer_id)"]) });
             }
            return P;
        }
        [WebMethod]
        public List<Class5> Getaddress_id()
        {


            con = new OleDbConnection("Provider=OraOLEDB.Oracle;data source=192.168.0.121/orcl;User Id=hr;Password=hr;");
            adp = new OleDbDataAdapter("select max(address_id) from customer_address ", con);
            DataSet ds = new DataSet();
            adp.Fill(ds, "Prod");
            // adp.Dispose();
            List<Class5> P = new List<Class5>();
            DataRow dr = ds.Tables["Prod"].Rows[0];
            // foreach (DataRow dr in ds.Tables["Prod"].Rows)
            //{
            P.Add(new Class5 { aid = Convert.ToInt32(dr["max(address_id)"]) });
            // }
            return P;
        }


    }
}