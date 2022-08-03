using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Models.Domain
{
    public class Baskets
    {
        public int Id { get; set; }
        public string CustomerEmail { get; set; }
        public string ListOfBasketItems { get; set; }
        
    }
}
