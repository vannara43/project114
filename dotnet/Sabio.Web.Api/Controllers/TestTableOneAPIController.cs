using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Sabio.Models;
using Sabio.Models.Requests;
using Sabio.Services;
using Sabio.Web.Controllers;
using Sabio.Web.Models.Responses;
using System;

namespace Sabio.Web.Api.Controllers
{
    [Route("api/testtableone")]
    [ApiController]
    public class TestTableOneAPIController : BaseApiController
    {
        private ITestTableOneServices _service = null;
        private IAuthenticationService<int> _authService = null;
        public TestTableOneAPIController(ITestTableOneServices service
            , ILogger<TestTableOneAPIController> logger
            , IAuthenticationService<int> authService) : base(logger)
        {
            _service = service;
            _authService = authService;
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult<SuccessResponse> Create(TestTableOneAddRequest model)
        {
            IUserAuthData user = _authService.GetCurrentUser();
            int code = 200;
            BaseResponse response = null;
            try
            {
                _service.Add(model);
                return StatusCode(code, new SuccessResponse());
            }
            catch (Exception ex)
            {
                base.Logger.LogError(ex.ToString());
                code = 500;
                response = new ErrorResponse(ex.Message);
            }
            return StatusCode(code, response);
        }
    }
}
