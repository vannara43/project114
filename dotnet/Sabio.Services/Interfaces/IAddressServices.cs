
using Sabio.Models;
using Sabio.Models.Domain;

namespace Sabio.Services
{
    public interface IAddressServices
    {
        int Add(AddressAddRequest model);
        Paged<Address> GetAll(int pageIndex, int pageSize);
    }
}