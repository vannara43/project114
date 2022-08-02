using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Models.Domain
{
    public class BasketItems
    {
        public int Id { get; set; }
        public int BasketId { get; set; }
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string CustomerEmail { get; set; }
        public int Quantity { get; set; }
        public string ImgUrl { get; set; }
        public int UnitPrice { get; set; }

    }
}
