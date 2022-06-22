using Microsoft.AspNetCore.Authentication;
using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace Sabio.Web.Core.Services
{
    public class TokenSecureDataFormat : ISecureDataFormat<AuthenticationTicket>
    {
        private string _secret = "e02ad8a626b84d298fa1a0d4e5df8bce";
        private int _expirationDays;
        private JsonWebTokenConfig _config;

        private static readonly string[] _specialTypes = new[]{
                                                                ClaimTypes.Role,
                                                                ClaimTypes.Name,
                                                                ClaimTypes.NameIdentifier,
                                                                "http://schemas.microsoft.com/accesscontrolservice/2010/07/claims/identityprovider"
                                                            };

        public TokenSecureDataFormat(JsonWebTokenConfig config)
        {
            _secret = config.Secret;
            _expirationDays = config.ExpirationDays;
            _config = config;
        }

        public string Protect(Microsoft.AspNetCore.Authentication.AuthenticationTicket data)
        {
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_secret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Audience = _config.Audience,

                Expires = DateTime.UtcNow.AddDays(_expirationDays),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            // Subject = data.Principal. ClaimsIdentity
            tokenDescriptor.Issuer = _config.Issuer;
            tokenDescriptor.Subject = new ClaimsIdentity(data.Principal.Claims);

            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }

        public string Protect(Microsoft.AspNetCore.Authentication.AuthenticationTicket data, string purpose)
        {
            return Protect(data);
        }

        public AuthenticationTicket Unprotect(string protectedText)
        {
            JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();

            TokenValidationParameters tp = new TokenValidationParameters();

            tp.ValidIssuer = _config.Issuer;
            tp.ValidAudience = _config.Audience;
            tp.ClockSkew = TimeSpan.FromMinutes(0);
            tp.RequireExpirationTime = true;
            tp.IssuerSigningKey = GetSymmetricSecurityKey(_secret);

            SecurityToken token = null;
            AuthenticationTicket auth = null;
            JwtSecurityToken unvalidatedToken = null;

            try
            {
                unvalidatedToken = tokenHandler.ReadJwtToken(protectedText);
                ClaimsPrincipal claimsP = tokenHandler.ValidateToken(protectedText, tp, out token);

                auth = new AuthenticationTicket(claimsP, AuthenticationDefaults.AuthenticationScheme);

            }
            catch (Exception ex)
            {
                //TODO: Replace this with proper logging
                // If you are getting an exception here delete your aut cookie and log in again.
                Console.WriteLine(ex.ToString());

                throw;
            }
            return auth;
        }

        public AuthenticationTicket Unprotect(string protectedText, string purpose)
        {
            return Unprotect(protectedText);
        }

        private SigningCredentials GetSigningCredentials(string tokenSecret)
        {
            SymmetricSecurityKey symmetricKey = GetSymmetricSecurityKey(tokenSecret);
            var signingCredentials = new SigningCredentials(symmetricKey, SecurityAlgorithms.HmacSha256);

            return signingCredentials;
        }

        private SymmetricSecurityKey GetSymmetricSecurityKey(string jwtSecret)
        {
            return new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtSecret));
        }
    }
}