namespace Sabio.Services
{
    public interface IIdentityProvider<T>
    {
        T GetCurrentUserId();
    }
}