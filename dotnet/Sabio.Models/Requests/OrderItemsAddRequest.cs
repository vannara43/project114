using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Models.Requests
{
    public class OrderItemsAddRequest
    {
        public int OrderId { get; set; }
        public int ProductId { get; set; }
        public int UserId { get; set; }
        public string ProductName { get; set; }
        public int Quantity { get; set; }
        public string ImgUrl { get; set; }
        public decimal UnitPrice { get; set; }
    }
}
