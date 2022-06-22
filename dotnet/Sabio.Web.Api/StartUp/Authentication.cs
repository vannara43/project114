using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Sabio.Web.Core;
using System;
using System.Net;
using System.Threading.Tasks;

namespace Sabio.Web.StartUp
{
    public class Authentication
    {
        public static void ConfigureServices(IServiceCollection services, IConfiguration configuration)
        {
            SetUpCookieAuth(services, configuration);
        }

        public static void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseAuthentication();
            app.UseAuthorization();
        }

        private static void SetUpCookieAuth(IServiceCollection services, IConfiguration configuration)
        {
            //services.Configure<SecurityConfig>(Configuration.GetSection("Security"));
            //services.Configure<JsonWebTokenConfig>(Configuration.GetSection("JsonWebToken"));

            SecurityConfig security = new SecurityConfig();
            JsonWebTokenConfig jsonWebTokenConfig = new JsonWebTokenConfig();

            configuration.GetSection("SecurityConfig").Bind(security);
            configuration.GetSection("JsonWebTokenConfig").Bind(jsonWebTokenConfig);

            CookieBuilder cookie = new CookieBuilder();
            cookie.Domain = security.AppDomain;
            cookie.Name = security.CookieName;
            cookie.HttpOnly = true;
            cookie.Path = "/";
            cookie.SameSite = SameSiteMode.None;
            cookie.SecurePolicy = CookieSecurePolicy.SameAsRequest;
            cookie.MaxAge = TimeSpan.FromMinutes(60 * 24 * 90);

            // If you don't want the cookie to be automatically authenticated and assigned to
            // HttpContext.User, remove the CookieAuthenticationDefaults.AuthenticationScheme
            // parameter passed to AddAuthentication.
            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = CookieAuthenticationDefaults.AuthenticationScheme;
                options.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
            })
            .AddCookie(options =>
            {
                options.Cookie = cookie;
                options.SlidingExpiration = true;
                options.TicketDataFormat = new Sabio.Web.Core.Services.TokenSecureDataFormat(jsonWebTokenConfig);
                options.AccessDeniedPath = "/unauthorized";
                options.LoginPath = "/login";
                options.LogoutPath = "/logout";
                options.Events = new CookieAuthenticationEvents();
                options.Events.OnRedirectToAccessDenied = RedirectContext;
                options.Events.OnRedirectToLogin = RedirectContext;
            });

            services.AddAuthorization(authorizeOptions =>
            {
                authorizeOptions.AddPolicy("defaultpolicy", b =>
                {
                    b.AddAuthenticationSchemes(CookieAuthenticationDefaults.AuthenticationScheme);
                    b.RequireAuthenticatedUser();
                });
            });
        }

        private static Task RedirectContext(RedirectContext<CookieAuthenticationOptions> context)
        {
            // If we need to treat ajx request differently this is where we do it. for now, it is the same.
            if (IsAjaxRequest(context.Request) || IsApi(context.Request))
            {
                //context.Response.Headers["Location"] = context.RedirectUri;
                context.Response.StatusCode = (int)HttpStatusCode.Unauthorized;
            }
            else
            {
                context.Response.Headers["Location"] = context.RedirectUri;
                context.Response.StatusCode = (int)HttpStatusCode.TemporaryRedirect;
            }

            return Task.CompletedTask;
        }

        private static bool IsAjaxRequest(HttpRequest request)
        {
            if (!string.Equals(request.Query["X-Requested-With"], "XMLHttpRequest", StringComparison.Ordinal))
                return string.Equals(request.Headers["X-Requested-With"], "XMLHttpRequest", StringComparison.Ordinal);

            return true;
        }

        private static bool IsApi(HttpRequest request)
        {
            return request.Path.Value.ToLower().StartsWith("/api");
        }
    }
}
