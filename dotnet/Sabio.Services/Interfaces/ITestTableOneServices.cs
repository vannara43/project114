using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface ITestTableOneServices
    {
        int Add(TestTableOneAddRequest model);
        void Delete(int id);
        Paged<TestTableOne> GetAll(int pageIndex, int pageSize);
        void Update(TestTableOneUpdateRequest model);
    }
}