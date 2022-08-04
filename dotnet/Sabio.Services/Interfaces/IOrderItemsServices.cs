using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services.Interfaces
{
    public interface IOrderItemsServices
    {
        int Add(OrderItemsAddRequest model);
        void Delete(int id);
        Paged<OrderItems> GetAll(int pageIndex, int pageSize);
        void Update(OrderItemsUpdateRequest model);
    }
}