using System.Security.Claims;

namespace Sabio.Services.Security
{
    public static class ClaimsIdentityExt
    {
        public static string TENANTID = "Sabio.TenantId";

        public static void AddTenantId(this ClaimsIdentity claims, object tenantId)
        {
            claims.AddClaim(new Claim(TENANTID, tenantId?.ToString(), null, "Sabio"));
        }

        public static bool IsTenantIdClaim(this ClaimsIdentity claims, string claimName)
        {
            return claimName == TENANTID;
        }
    }
}