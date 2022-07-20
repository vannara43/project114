using Sabio.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Models.Requests
{
    internal class AddressUpdateRequest : AddressAddRequest
    {
        public int Id { get; set; }
    }
}
