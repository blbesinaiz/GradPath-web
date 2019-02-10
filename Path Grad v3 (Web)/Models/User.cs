using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Path_Grad_v3__Web_.Models
{
    public class User
    {
        public string _id { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string classification { get; set; }
    }
}