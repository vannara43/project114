using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Models.Domain
{
    public class Orders
    {
        public int Id { get; set; }
        public int AddressId { get; set; }
        public int UserId { get; set; }
        public string ShippingAddress { get; set; }
        public int TotalItemQty { get; set; }
        public string DiscountName { get; set; }
        public decimal DiscountPercent { get; set; }
        public decimal DiscountAmount { get; set; }
        public decimal Subtotal { get; set; }
        public decimal Total { get; set; }
    }
}
