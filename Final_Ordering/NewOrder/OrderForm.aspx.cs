using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Diagnostics;
using System.Data;

namespace EnterpriseOrdering
{
    public partial class OrderForm : System.Web.UI.Page
    {
        static string str = null;
        List<NewOrder.ProdCats.ProductClass> l = new List<NewOrder.ProdCats.ProductClass>();
        changeSession c1 = new changeSession();
        protected void Page_Load(object sender, EventArgs e)
        {

            NewOrder.ProdCats.GetAllProductsSoapClient w = new NewOrder.ProdCats.GetAllProductsSoapClient();
            //Whenever a webmethod returns a list of objects we receive an array of objects (here of ProductClass)

            if (Int32.Parse(Request.QueryString["v1"]) != 1)
            {
                Address A = new Address();
                A = (Address)Session["BillAdd"];

                NewOrder.ProdCats.ProductClass[] p = w.GetEnterpriseProducts(A.statecode, int.Parse(A.zipcode));

                for (int i = 0; i < p.Length; i++)
                {
                    l.Add(p[i]);
                }
                ViewState["ob"] = l;

            }

            if (Int32.Parse(Request.QueryString["v1"]) == 1)
            {
                c1 = (changeSession)Session["change"];
                NewOrder.ProdCats.ProductClass[] p = w.GetEnterpriseProducts(c1.statecode, int.Parse(c1.zipcode));
                for (int i = 0; i < p.Length; i++)
                {
                    l.Add(p[i]);
                }
                ViewState["ob"] = l;
            }


            //ViewState["Tot"] = txtTotal.Text;
            if (!IsPostBack)
            {
                if (txtTotal1.Text == "")
                {
                    txtTotal1.Text = "0";
                }
                if (txtTotal2.Text == "")
                {
                    txtTotal2.Text = "0";
                }
                if (txtTotal3.Text == "")
                {
                    txtTotal3.Text = "0";
                }


                txtTotal.Text = "0";


                foreach (var item in l)
                {
                    if (item.Product_name.Contains("Cloud"))
                    {
                        RadioButtonList1.Items.Add(item.Product_name);

                    }

                    if (item.Product_name.Contains("Security"))
                    {
                        RadioButtonList2.Items.Add(item.Product_name);

                    }

                    if (item.Product_name.Contains("VOIP"))
                    {
                        RadioButtonList3.Items.Add(item.Product_name);

                    }



                }
                if (RadioButtonList1.Items.Count == 0)
                {
                    Label13.Text = "Cloud is not available in the selected region";
                    txtQty1.ReadOnly = true;
                }
                if (RadioButtonList2.Items.Count == 0)
                {
                    Label14.Text = "Security is not available in the selected region";
                    txtQty2.ReadOnly = true;
                }
                if (RadioButtonList3.Items.Count == 0)
                {
                    Label15.Text = "VOIP is not available in the selected region";
                    txtQty3.ReadOnly = true;
                }

            }

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            l = (List<NewOrder.ProdCats.ProductClass>)ViewState["ob"];
            decimal i = 0;
            string s = RadioButtonList1.SelectedItem.ToString();
            foreach (NewOrder.ProdCats.ProductClass item in l)
            {
                if (item.Product_name == s)
                {
                    i = item.Rate;
                    break;
                }
            }
            Unit1.Text = i.ToString();
            if (txtQty1.Text != "")
            {
                if (Unit1.Text != "")
                {
                    txtTotal1.Text = (decimal.Parse(txtQty1.Text) * decimal.Parse(Unit1.Text)).ToString();
                }


            }
            if (txtQty1.Text != "" || txtQty2.Text != "" || txtQty3.Text != "")
            {
                txtTotal.Text = (decimal.Parse(txtTotal1.Text) + decimal.Parse(txtTotal2.Text) + decimal.Parse(txtTotal3.Text)).ToString();
            }



        }


        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            l = (List<NewOrder.ProdCats.ProductClass>)ViewState["ob"];
            decimal i = 0;
            string s = RadioButtonList2.SelectedItem.ToString();
            foreach (var item in l)
            {
                if (item.Product_name == s)
                {
                    i = item.Rate;
                    break;
                }
            }
            Unit2.Text = i.ToString();



            if (txtQty2.Text != "")
            {
                if (Unit2.Text != "")
                {
                    txtTotal2.Text = (decimal.Parse(txtQty2.Text) * decimal.Parse(Unit2.Text)).ToString();
                }

            }
            if (txtQty1.Text != "" || txtQty2.Text != "" || txtQty3.Text != "")
            {
                txtTotal.Text = (decimal.Parse(txtTotal1.Text) + decimal.Parse(txtTotal2.Text) + decimal.Parse(txtTotal3.Text)).ToString();
            }
        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            l = (List<NewOrder.ProdCats.ProductClass>)ViewState["ob"];
            decimal i = 0;
            string s = RadioButtonList3.SelectedItem.ToString();
            foreach (var item in l)
            {
                if (item.Product_name == s)
                {
                    i = item.Rate;
                    break;
                }
            }
            Unit3.Text = i.ToString();
            if (txtQty3.Text != "")
            {

                if (Unit3.Text != "")
                {
                    txtTotal3.Text = (decimal.Parse(txtQty3.Text) * decimal.Parse(Unit3.Text)).ToString();
                }



            }
            if (txtQty1.Text != "" || txtQty2.Text != "" || txtQty3.Text != "")
            {
                txtTotal.Text = (decimal.Parse(txtTotal1.Text) + decimal.Parse(txtTotal2.Text) + decimal.Parse(txtTotal3.Text)).ToString();
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            txtTotal1.Text = (decimal.Parse(txtQty1.Text) * decimal.Parse(Unit1.Text)).ToString();
            if (txtQty1.Text != "" || txtQty2.Text != "" || txtQty3.Text != "")
            {
                txtTotal.Text = (decimal.Parse(txtTotal1.Text) + decimal.Parse(txtTotal2.Text) + decimal.Parse(txtTotal3.Text)).ToString();
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            txtTotal2.Text = (decimal.Parse(txtQty2.Text) * decimal.Parse(Unit2.Text)).ToString();
            if (txtQty1.Text != "" || txtQty2.Text != "" || txtQty3.Text != "")
            {
                txtTotal.Text = (decimal.Parse(txtTotal1.Text) + decimal.Parse(txtTotal2.Text) + decimal.Parse(txtTotal3.Text)).ToString();
            }

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            txtTotal3.Text = (decimal.Parse(txtQty3.Text) * decimal.Parse(Unit3.Text)).ToString();
            if (txtQty1.Text != "" || txtQty2.Text != "" || txtQty3.Text != "")
            {
                txtTotal.Text = (decimal.Parse(txtTotal1.Text) + decimal.Parse(txtTotal2.Text) + decimal.Parse(txtTotal3.Text)).ToString();
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {


            List<Product> x3 = new List<Product>();

            l = (List<NewOrder.ProdCats.ProductClass>)ViewState["ob"];
            string s = "wow";
            string q = "wow";
            string r = "wow";
            if (RadioButtonList1.SelectedIndex != -1)
            {
                s = RadioButtonList1.SelectedItem.Text.ToString();
            }
            if (RadioButtonList2.SelectedIndex != -1)
            {
                q = RadioButtonList2.SelectedItem.Text.ToString();
            }
            if (RadioButtonList3.SelectedIndex != -1)
            {
                r = RadioButtonList3.SelectedItem.Text.ToString();
            }

            foreach (NewOrder.ProdCats.ProductClass item in l)
            {
                if (item.Product_name == s || item.Product_name == q || item.Product_name == r)
                {
                    Product P = new Product();
                    P.P_id = item.Product_ID;
                    P.P_name = item.Product_name;
                    P.P_description = item.Product_desc;
                    P.P_price = item.Rate.ToString();
                    P.start_date = item.Prod_eff_date.ToString("yyyy/MM/dd");
                    P.end_date = item.Prod_end_date.ToString("yyyy/MM/dd");

                    x3.Add(P);
                }
            }
            foreach (var i in x3)
            {
                i.due_date = TextBox1.Text;
                if (i.P_name == s)
                    i.P_qty = txtQty1.Text;
                if (i.P_name == q)
                    i.P_qty = txtQty2.Text;
                if (i.P_name == r)
                    i.P_qty = txtQty3.Text;

            }
            DataSet Ds = new DataSet();
            if (Int32.Parse(Request.QueryString["v1"]) != 1)
            {
                Address A = new Address();
                A = (Address)Session["BillAdd"];
                List<Address> x21 = new List<Address>();
                x21.Add(A);
                Address B = new Address();
                B = (Address)Session["ShipAdd"];
                List<Address> x22 = new List<Address>();
                x22.Add(A);
                Customer C = new Customer();
                C = (Customer)Session["Personal_Details"];
                List<Customer> x1 = new List<Customer>();
                x1.Add(C);

                DataTable dt1 = new DataTable();
                DataTable dt2 = new DataTable();
                dt1.Columns.Add("customer_fname");
                dt1.Columns.Add("customer_lname");
                dt1.Columns.Add("customer_email_id");
                dt1.Columns.Add("customer_mobile_no");
                dt1.Columns.Add("customer_status");
                dt1.Columns.Add("customer_type");
                dt1.Columns.Add("customer_Bill_pay");

                dt2.Columns.Add("add_type");
                dt2.Columns.Add("add_line1");
                dt2.Columns.Add("add_line2");
                dt2.Columns.Add("city");
                dt2.Columns.Add("state");
                dt2.Columns.Add("state_code");
                dt2.Columns.Add("zip_code");
                foreach (var i in x1)
                {
                    var Row = dt1.NewRow();
                    Row["customer_fname"] = i.F_name;
                    Row["customer_lname"] = i.L_name;
                    Row["customer_email_id"] = i.Email_id;
                    Row["customer_mobile_no"] = i.Ph_no;
                    Row["customer_status"] = "Active";
                    Row["customer_type"] = "New Order";
                    Row["customer_Bill_pay"] = i.Bill_pay_meth;
                    dt1.Rows.Add(Row);
                }

                foreach (var i in x21)
                {
                    var Row = dt2.NewRow();
                    Row["add_type"] = "Billing";
                    Row["add_line1"] = i.line1;
                    Row["add_line2"] = i.line2;
                    Row["city"] = i.city;
                    Row["state"] = i.state;
                    Row["state_code"] = i.statecode;
                    Row["zip_code"] = i.zipcode;
                    dt2.Rows.Add(Row);
                }

                foreach (var i in x22)
                {
                    var Row = dt2.NewRow();
                    Row["add_type"] = "Shipping";
                    Row["add_line1"] = i.line1;
                    Row["add_line2"] = i.line2;
                    Row["city"] = i.city;
                    Row["state"] = i.state;
                    Row["state_code"] = i.statecode;
                    Row["zip_code"] = i.zipcode;
                    dt2.Rows.Add(Row);
                }

                DataTable dt3 = new DataTable();


                dt3.Columns.Add("product_id");
                dt3.Columns.Add("product_name");
                dt3.Columns.Add("product_qty");
                dt3.Columns.Add("product_description");
                dt3.Columns.Add("product_start_date");
                dt3.Columns.Add("product_end_date");
                dt3.Columns.Add("order_negotiation_date");
                dt3.Columns.Add("order_due_date");
                dt3.Columns.Add("order_status");
                dt3.Columns.Add("order_type");
                dt3.Columns.Add("service_id");
                dt3.Columns.Add("service_name");
                dt3.Columns.Add("service_end_date");



                foreach (var i in x3)
                {
                    var Row = dt3.NewRow();
                    Row["product_id"] = i.P_id;
                    Row["product_name"] = i.P_name;
                    Row["product_qty"] = i.P_qty;
                    Row["product_description"] = i.P_description;
                    Row["product_start_date"] = i.start_date;
                    Row["product_end_date"] = i.end_date;
                    Row["order_negotiation_date"] = DateTime.Now.ToString("yyyy/MM/dd");
                    Row["order_due_date"] = i.due_date;
                    Row["order_status"] = "PR";
                    Row["order_type"] = "N";
                    Row["service_id"] = "6";
                    Row["service_name"] = "Enterprise";
                    Row["service_end_date"] = "2999/12/31";

                    dt3.Rows.Add(Row);
                }
                Ds.Tables.Add(dt1);
                Ds.Tables.Add(dt2);
                Ds.Tables.Add(dt3);
                str = Ds.GetXml();

                NewOrder.ServiceReference2.Service1SoapClient t = new NewOrder.ServiceReference2.Service1SoapClient();

                t.insert_order("PR", TextBox1.Text, DateTime.Now.ToString("yyyy/MM/dd"), str, "N", 0);

                Response.Redirect("Confirmed.aspx");

            }


            if ((Int32.Parse(Request.QueryString["v1"])) == 1)
            {
                c1 = (changeSession)Session["change"];
                DataTable dt4 = new DataTable();

                dt4.Columns.Add("customer_id");
                dt4.Columns.Add("service_id");
                dt4.Columns.Add("product_id");
                dt4.Columns.Add("product_desc");
                dt4.Columns.Add("product_price");
                dt4.Columns.Add("product_qty");
                dt4.Columns.Add("order_negotiation_date");
                dt4.Columns.Add("order_type");
                dt4.Columns.Add("order_due_date");



                foreach (var i in x3)
                {
                    var Row = dt4.NewRow();
                    Row["customer_id"] = c1.id;
                    Row["service_id"] = "6";
                    Row["product_id"] = i.P_id;
                    Row["product_desc"] = i.P_description;
                    Row["product_qty"] = i.P_qty;
                    Row["order_negotiation_date"] = DateTime.Now.ToString("yyyy/MM/dd");
                    Row["order_type"] = "C";
                    Row["order_due_date"] = i.due_date;


                    dt4.Rows.Add(Row);
                }



                Ds.Tables.Add(dt4);

                str = Ds.GetXml();

                NewOrder.ServiceReference2.Service1SoapClient t = new NewOrder.ServiceReference2.Service1SoapClient();

                t.insert_order("PR", TextBox1.Text, DateTime.Now.ToString("yyyy/MM/dd"), str, "C", c1.id);

                Response.Redirect("Confirm_Change.aspx");

            }
        }



        protected void btnQuote_Click(object sender, EventArgs e)
        {


            string filename = @"C:\PDF\Quote.pdf";
            //string filename = Server.MapPath(".\\") + "Quotes\\"+ "Quote.pdf";
            Customer C = new Customer();
            C = (Customer)Session["Personal_Details"];
            Address A = new Address();
            A = (Address)Session["BillAdd"];

            //Create new PDF document
            Document document = new Document(PageSize.A4, 10f, 40f, 10f, 10f);
            try
            {

                PdfWriter.GetInstance(document, new FileStream(filename, FileMode.Create));


                PdfPTable t1 = new PdfPTable(2);
                t1.TotalWidth = 500f;
                // fix the absolute width of the table
                t1.LockedWidth = true;

                //relative col widths in proportions - 1/3 and 2/3
                float[] w = new float[] { 14f, 5f };
                t1.SetWidths(w);
                t1.HorizontalAlignment = 1;      //1 = center
                t1.DefaultCell.Border = Rectangle.NO_BORDER;

                var boldFont = FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 12);
                var boldFont1 = FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 16);
                var Footer = FontFactory.GetFont(FontFactory.HELVETICA_BOLD, 14);


                Phrase p = new Phrase(new Chunk("xPANDABLE", boldFont1));



                t1.AddCell(p);
                t1.AddCell("");



                t1.AddCell("\n");
                t1.AddCell("\n");



                t1.AddCell("16 Allen Road");
                p = new Phrase(new Chunk("Date: " + DateTime.Now.Date.ToShortDateString(), boldFont));
                t1.AddCell(p);


                t1.AddCell("Basking Ridge, New Jersey 07920");
                //p = new Phrase(new Chunk("Quotation #", boldFont));
                t1.AddCell(" ");
                //t1.AddCell(p);


                t1.AddCell("Phone 800-456-7890 Fax 123-456-7891");
                //p = new Phrase(new Chunk("Customer ID", boldFont));
                //t1.AddCell(p);
                t1.AddCell(" ");

                t1.AddCell("\n");
                t1.AddCell("\n");


                p = new Phrase(new Chunk("Quotation for", boldFont));
                t1.AddCell(p);
                t1.AddCell("");


                t1.AddCell(C.F_name + " " + C.L_name);
                t1.AddCell("");


                t1.AddCell(A.company);
                t1.AddCell("");


                t1.AddCell(A.line1 + " " + A.line2);
                t1.AddCell("");


                t1.AddCell(A.city + ", " + A.state + " " + A.zipcode);
                t1.AddCell("");


                t1.AddCell(C.Ph_no);
                t1.AddCell("");

                PdfPTable table = new PdfPTable(4);
                table.TotalWidth = 500f;
                //fix the absolute width of the table
                table.LockedWidth = true;

                //relative col widths in proportions - 1/3 and 2/3
                float[] widths = new float[] { 4f, 10f, 4f, 4f };
                table.SetWidths(widths);
                table.HorizontalAlignment = 1;      //1 = center
                //leave a gap before and after the table
                table.SpacingBefore = 20f;
                table.SpacingAfter = 2f;


                p = new Phrase();
                p.Add(new Chunk("QUANTITY", boldFont));
                PdfPCell cell = new PdfPCell(p);
                table.AddCell(cell);

                p = new Phrase();
                p.Add(new Chunk("DESCRIPTION", boldFont));
                cell = new PdfPCell(p);
                table.AddCell(cell);

                p = new Phrase();
                p.Add(new Chunk("UNIT PRICE", boldFont));
                cell = new PdfPCell(p);
                table.AddCell(cell);

                //p = new Phrase();
                //p.Add(new Chunk("TAXES", boldFont));
                //cell = new PdfPCell(p);
                //table.AddCell(cell);

                p = new Phrase();
                p.Add(new Chunk("AMOUNT", boldFont));
                cell = new PdfPCell(p);
                table.AddCell(cell);


                if (RadioButtonList1.SelectedItem != null)
                {
                    if (RadioButtonList1.SelectedItem.Text.Contains("Cloud"))
                    {
                        table.AddCell(txtQty1.Text);
                        table.AddCell(RadioButtonList1.SelectedItem.Text);
                        table.AddCell(Unit1.Text);
                        table.AddCell(txtTotal1.Text);
                    }
                }
                if (RadioButtonList2.SelectedItem != null)
                {
                    if (RadioButtonList2.SelectedItem.Text.Contains("Security"))
                    {
                        table.AddCell(txtQty2.Text);
                        table.AddCell(RadioButtonList2.SelectedItem.Text);
                        table.AddCell(Unit2.Text);
                        table.AddCell(txtTotal2.Text);
                    }
                }
                if (RadioButtonList3.SelectedItem != null)
                {
                    if (RadioButtonList3.SelectedItem.Text.Contains("VOIP"))
                    {
                        table.AddCell(txtQty3.Text);
                        table.AddCell(RadioButtonList3.SelectedItem.Text);
                        table.AddCell(Unit3.Text);
                        table.AddCell(txtTotal3.Text);
                    }
                }






                PdfPTable t2 = new PdfPTable(4);
                t2.TotalWidth = 500f;
                //fix the absolute width of the table
                t2.LockedWidth = true;

                //relative col widths in proportions - 1/3 and 2/3
                float[] w1 = new float[] { 4f, 10f, 4f, 4f };
                t2.SetWidths(w1);
                t2.HorizontalAlignment = 1;      //1 = center
                //leave a gap before and after the table
                t2.SpacingBefore = 20f;
                t2.DefaultCell.Border = Rectangle.NO_BORDER;

                // t2.AddCell("");
                // t2.AddCell("");
                //// t2.AddCell("");
                // t2.AddCell("SUBTOTAL");
                // t2.AddCell("$");// t2.AddCell("$"+txtTotal.Text);


                //t2.AddCell("");
                //t2.AddCell("");
                // //t2.AddCell("");
                //t2.AddCell("TAX RATE");
                //t2.AddCell("10%");


                // t2.AddCell("");
                // t2.AddCell("");
                // //t2.AddCell("");
                // t2.AddCell("SALES TAX");
                // //float f = (float.Parse(txtTotal.Text))/10;
                //// t2.AddCell("$"+f.ToString());
                // t2.AddCell("$");

                t2.AddCell("");
                t2.AddCell("");
                //t2.AddCell("");
                t2.AddCell("TOTAL");
                //float s = float.Parse(txtTotal.ToString());
                // t2.AddCell("$"+(f+s).ToString());
                t2.AddCell("$" + txtTotal.Text);
                t2.SpacingAfter = 42f;

                iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(@"C:\PDF\logo.png");
                img.ScaleToFit(120f, 60f);
                img.Alignment = iTextSharp.text.Image.ALIGN_RIGHT;
                //img.IndentationLeft = 9f;
                img.SpacingAfter = 19f;
                //img.BorderWidthTop = 36f;

                p = new Phrase();
                p.Add(new Chunk("THANK YOU FOR YOUR BUSINESS!", boldFont));
                Paragraph para = new Paragraph(new Chunk("THANK YOU FOR YOUR BUSINESS!", Footer));
                para.Alignment = 1;
                document.Open();


                document.Add(img);
                document.Add(t1);
                document.Add(table);
                document.Add(t2);
                document.Add(para);




            }
            catch (Exception)
            {

            }
            finally
            {
                document.Close();

                //ShowPdf(filename);

                //Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + "\\Quote.pdf");
                Process.Start(filename);
                btnOrder.Enabled = true;
                // btnQuote.Enabled = false;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Int32.Parse(Request.QueryString["v1"]) != 1)
                Response.Redirect("AddressDetails.aspx");
            if (Int32.Parse(Request.QueryString["v1"]) == 1)
                Response.Redirect("Change.aspx");

        }





        //public void ShowPdf(string filename)
        //{

        //    Response.ClearContent();       //Clears all content output from Buffer Stream
        //    Response.ClearHeaders();      //Clears all headers from Buffer Stream
        //    Response.AddHeader("Content-Disposition", "inline;filename=" + filename);        //Adds an HTTP header to the output stream
        //    Response.ContentType = "application/pdf";    //Gets or Sets the HTTP MIME type of the output stream
        //    //Response.TransmitFile(filename);
        //    Response.WriteFile(filename);       //Writes the content of the specified file directly to an HTTP response output stream as a file block
        //    Response.Flush();         //sends all currently buffered output to the client
        //    Response.Clear();          //Clears all content output from Buffer Stream
        //}


    }
}