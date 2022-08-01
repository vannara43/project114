using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface IApplicationUserServices
    {
        int Add(ApplicationUserAddRequest model);
        void Delete(int id);
        Paged<ApplicationUser> GetAll(int pageIndex, int pageSize);
        void Update(ApplicationUserUpdateRequest model);
    }
}