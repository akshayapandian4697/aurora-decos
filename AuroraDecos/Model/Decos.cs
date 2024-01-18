using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AuroraDecos
{
    public class Decos
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
        public int Qty { get; set; }
        public string ImagePath { get; set; }
        public int ItemCategoryId { get; set; }
    }
}