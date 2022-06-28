using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Models.Requests
{
    public class TestTableOneAddRequest
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string SKU { get; set; }
        public int Price { get; set; }
        public string Description { get; set; }
        public string ImgUrl { get; set; }
    }
}
