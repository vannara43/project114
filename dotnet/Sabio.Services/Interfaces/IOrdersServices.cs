using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface IOrdersServices
    {
        int Add(OrdersAddRequest model);
        void Delete(int id);
        Paged<Orders> GetAll(int pageIndex, int pageSize);
        void Update(OrdersUpdateRequest model);
    }
}