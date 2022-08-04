using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface IBasketsServices
    {
        int Add(BasketsAddRequest model);
        void Delete(int id);
        Paged<Baskets> GetAll(int pageIndex, int pageSize);
        void Update(BasketsUpdateRequest model);
    }
}