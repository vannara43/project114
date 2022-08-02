using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface IBasketItemsServices
    {
        int Add(BasketItemsAddRequest model);
        void Delete(int Id);
        Paged<BasketItems> GetAll(int pageIndex, int pageSize);
        void Update(BasketItemsUpdateRequest model);
    }
}