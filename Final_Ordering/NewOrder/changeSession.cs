using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EnterpriseOrdering
{
     [Serializable]
    public class changeSession
    {
        public int id{get;set;}
       public  string statecode{get;set;}
       public string zipcode { get; set; }
    }
}