using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;

namespace Sabio.Services.Security
{
    public static class IIdentityExtensions
    {
        // Variation of GetUserId provided as part of Microsoft.AspNet.Identity.Core package.
        public static int? GetId(this IIdentity identity)
        {
            if (identity == null) { throw new ArgumentNullException("identity"); }
            ClaimsIdentity ci = identity as ClaimsIdentity;

            int idParsed = 0;

            // FindFirstValue provided in Microsoft.AspNet.Identity.Core package.
            if (ci != null)
            {
                Claim claim = ci.Claims.FirstOrDefault(c => c.Type == ClaimTypes.NameIdentifier);

                if (claim != null && Int32.TryParse(claim.Value, out idParsed))
                {
                    return idParsed;
                }
            }
            return null;
        }

        public static IEnumerable<string> GetRoles(this IIdentity identity)
        {
            if (identity == null) { throw new ArgumentNullException("identity"); }
            var ci = identity as ClaimsIdentity;
            return ci.FindAll(ci.RoleClaimType).Select(c => c.Value);
        }

        // Thin wrapper.
        public static Claim FindFirst(this IIdentity identity, string claimType)
        {
            if (identity == null) { throw new ArgumentNullException("identity"); }
            var ci = identity as ClaimsIdentity;
            return ci.FindFirst(claimType);
        }
    }
}