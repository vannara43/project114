using System.Threading.Tasks;

namespace Sabio.Services
{
    public interface IUserService
    {
        int Create(object userModel);

        Task<bool> LogInAsync(string email, string password);

        /// <summary>
        /// ** This method should never be removed from this Interface **
        /// An Instructor will remove it when appropriate.
        /// </summary>
        /// <param name="email"></param>
        /// <param name="password"></param>
        /// <param name="id"></param>
        /// <param name="roles"></param>
        /// <returns></returns>
        Task<bool> LogInTest(string email, string password, int id, string[] roles = null);
    }
}