using Sabio.Models;
using System.Security.Claims;
using System.Threading.Tasks;

namespace Sabio.Services
{
    /// <summary>
    /// Provides basic functionality for Authentication, Authorization and access to App Customized
    /// Current IPrincipal
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public interface IAuthenticationService<T> : IIdentityProvider<T>
    {
        /// <summary>
        /// </summary>
        /// <param name="user"></param>
        /// <param name="extraClaims"></param>
        /// <returns></returns>
        Task LogInAsync(IUserAuthData user, params Claim[] extraClaims);

        /// <summary>
        /// Logs out the currently signed in user
        /// </summary>
        Task LogOutAsync();

        bool IsLoggedIn();

        /// <summary>
        /// Get the current IUserAuthData for the Current IPrincipal
        /// </summary>
        /// <returns></returns>
        IUserAuthData GetCurrentUser();
    }
}