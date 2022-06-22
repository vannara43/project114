using System.Collections.Generic;

namespace Sabio.Models
{
    public interface IUserAuthData
    {
        int Id { get; }
        string Name { get; }
        IEnumerable<string> Roles { get; }
        object TenantId { get; }
    }
}