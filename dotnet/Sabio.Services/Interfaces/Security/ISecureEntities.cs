using Sabio.Models;

namespace Sabio.Services
{
    /// <summary>
    /// </summary>
    /// <typeparam name="T">Type used for UserId</typeparam>
    /// <typeparam name="K">Type used for EntityId</typeparam>
    public interface ISecureEntities<T, K>
    {
        bool IsAuthorized(T userId, K entityId, EntityActionType actionType, EntityType entityType);
    }
}