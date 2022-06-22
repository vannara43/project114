using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Sabio.Web.Controllers;
using Sabio.Web.Models.Responses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Sabio.Web.Api.Controllers
{
    /// <summary>
    /// This controller is not required for the application to work. 
    /// You could remove it but it serves as a simple entry point for development
    /// </summary>
    [Route("api/ping")]
    [ApiController]
    public class PingApiController : BaseApiController
    {
        public PingApiController(ILogger<PingApiController> logger) : base(logger)
        {

        }

        [HttpGet()]
        [AllowAnonymous]
        public ActionResult<ItemResponse<object>> Ping()
        {
            Logger.LogInformation("Ping endpoint firing");

            ItemResponse<object> response = new ItemResponse<object>();

            response.Item = new { Now = DateTime.Now.Ticks, Message = "If you are taking an assessment make sure this endpoint is working: https://localhost:50001/api/temp/auth/login/1008/developer/code-small-role" };

            return Ok200(response);
        }
    }
}