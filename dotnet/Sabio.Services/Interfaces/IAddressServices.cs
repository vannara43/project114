
using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface IAddressServices
    {
        int Add(AddressAddRequest model);
        Paged<Address> GetAll(int pageIndex, int pageSize);
        void Update(AddressUpdateRequest model);
        void Delete(int id);
    }
}