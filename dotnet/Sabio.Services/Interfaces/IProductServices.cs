using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface IProductServices
    {
        int Add(ProductAddRequest model);
        void Delete(int id);
        Paged<Product> GetAll(int pageIndex, int pageSize);
        void Update(ProductUpdateRequest model);
    }
}