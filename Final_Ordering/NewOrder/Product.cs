using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EnterpriseOrdering
{
    public class Product
    {
        public string P_id { get; set; }
        public string P_name { get; set; }
        public string P_description { get; set; }
        public string P_qty { get; set; }
        public string P_price { get; set; }
        public string due_date { get; set; }
        public string start_date { get; set; }
        public string end_date { get; set; }
    }
}