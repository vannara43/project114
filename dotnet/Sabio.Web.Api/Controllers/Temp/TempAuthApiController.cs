using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Newtonsoft.Json.Linq;
using Sabio.Models;
using Sabio.Services;
using Sabio.Web.Controllers;
using Sabio.Web.Core;
using Sabio.Web.Models.Responses;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Sabio.Web.Api.Controllers
{
    [Route("api/temp/auth")]
    [ApiController]
    public class TempAuthApiController : BaseApiController
    {
        private IUserService _userService;
        private IAuthenticationService<int> _authService;
        IOptions<SecurityConfig> _options;

        public TempAuthApiController(IUserService userService
            , IAuthenticationService<int> authService
            , ILogger<TempAuthApiController> logger
            , IOptions<SecurityConfig> options) : base(logger)
        {
            _userService = userService;

            _authService = authService;
            _options = options;

        }


        #region - DO NOT EDIT - DO NOT REMOVE - EVER -

        /// <summary>
        /// ** This method should never be removed from this Interface **
        /// An Instructor will remove it when appropriate.
        /// If you ever do anything to break this method, you need to fix it right away.
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="userName"></param>
        /// <param name="role"></param>
        /// <returns></returns>
        [HttpGet("login/{userId:int}/{userName}/{role}")]
        [AllowAnonymous]
        public async Task<ActionResult<SuccessResponse>> LoginAsync(int userId, string userName, string role)
        {
            await _userService.LogInTest(userName + "@dispostable.com", "password", userId, new string[] { role });

            ItemResponse<object> response = new ItemResponse<object>();
            response.Item = new { ServerOptions = _options ,
                userId,
                userName,
                role
            };
            return Ok200(response);
        }

        
        #endregion
        [HttpGet("current")]
        public ActionResult<ItemResponse<IUserAuthData>> GetCurrrent()
        {
            IUserAuthData user = _authService.GetCurrentUser();
            ItemResponse<IUserAuthData> response = new ItemResponse<IUserAuthData>();
            response.Item = user;

            return Ok200(response);
        }

        [HttpPost("current")]
        public ActionResult<ItemResponse<IUserAuthData>> GetCurrrentPost()
        {
            IUserAuthData user = _authService.GetCurrentUser();
            ItemResponse<IUserAuthData> response = new ItemResponse<IUserAuthData>();
            response.Item = user;

            return Ok200(response);
        }

        [HttpGet("logout")]
        public async Task<ActionResult<SuccessResponse>> LogoutAsync()
        {
            await _authService.LogOutAsync();
            SuccessResponse response = new SuccessResponse();
            return Ok200(response);
        }


        #region - Examples of Authorization via Roles or AllowAnonymous
        [HttpGet("anyone")]
        [AllowAnonymous]
        public ActionResult<SuccessResponse> Get()
        {
            Logger.LogInformation($"Endpoing firing {this.ControllerContext.ActionDescriptor.ActionName} with anyone route");

            SuccessResponse response = new SuccessResponse();
            return Ok200(response);
        }

        [HttpGet("reject")]
        public ActionResult<SuccessResponse> Reject()
        {
            SuccessResponse response = new SuccessResponse();
            return Ok200(response);
        }

        [HttpGet("bloggers")]
        [Authorize(Roles = "Blogger")]
        public ActionResult<SuccessResponse> Bloggers()
        {
            SuccessResponse response = new SuccessResponse();
            return Ok200(response);
        }

        [HttpGet("super")]
        [Authorize(Roles = "SuperAdminBro")]
        public ActionResult<SuccessResponse> Super()
        {
            SuccessResponse response = new SuccessResponse();
            return Ok200(response);
        }
        #endregion
    }
}