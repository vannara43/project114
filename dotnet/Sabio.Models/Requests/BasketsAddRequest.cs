using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Models.Requests
{
    public class BasketsAddRequest
    {
        public string CustomerEmail { get; set; }
        public string ListOfBasketItems { get; set; }
    }
}
