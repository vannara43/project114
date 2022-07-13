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
        public ActionResult<ItemResponse<int>> Create(TestTableOneAddRequest model)
        {
            ObjectResult result = null;

            try
            {
                int id = _service.Add(model);
                ItemResponse<int> response = new ItemResponse<int>() { Item = id };
                result = Created201(response);
            }
            catch (Exception ex)
            {
                Logger.LogError(ex.ToString());
                ErrorResponse response = new ErrorResponse(ex.Message);
                result = StatusCode(500, response);
            }
            return result;
        }
      
        }
    }

