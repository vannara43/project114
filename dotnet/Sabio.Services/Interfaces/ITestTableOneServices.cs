using Sabio.Models.Requests;

namespace Sabio.Services
{
    public interface ITestTableOneServices
    {
        int Add(TestTableOneAddRequest model);
    }
}