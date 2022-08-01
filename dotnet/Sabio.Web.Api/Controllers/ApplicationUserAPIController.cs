using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;
using Sabio.Services;
using Sabio.Web.Models.Responses;
using System;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Sabio.Web.Api.Controllers
{
    [Route("api/applicationuser")]
    [ApiController]
    public class ApplicationUserAPIController : ControllerBase
    {
        private IApplicationUserServices _service = null;
        private IAuthenticationService<int> _authService = null;

        // public ApplicationUserAPIController(IAddressServices service, ILogger<AddressAPIController> logger, IAuthenticationService<int> authService) : base(logger)
        public ApplicationUserAPIController(IApplicationUserServices service, IAuthenticationService<int> authenticationService)
        {
            _service = service;
            _authService = authenticationService;
        }

        [HttpGet("paginate")]
        [AllowAnonymous]
        public ActionResult GetAll(int pageIndex, int pageSize)
        {
            int code = 200;
            BaseResponse response = null;
            try
            {
                Paged<ApplicationUser> paged = _service.GetAll(pageIndex, pageSize);
                if (paged == null)
                {
                    code = 404;
                    response = new ErrorResponse("Records Not Found");
                }
                else
                {
                    ItemResponse<Paged<ApplicationUser>> itemResponse = new ItemResponse<Paged<ApplicationUser>>();
                    itemResponse.Item = paged;
                    response = new ItemResponse<Paged<ApplicationUser>> { Item = paged };
                }
            }
            catch (Exception ex)
            {
                code = 500;
                response = new ErrorResponse(ex.Message);
            }
            return StatusCode(code, response);
        }


        [HttpPost]
        [AllowAnonymous]
        public ActionResult<ItemResponse<int>> Create(ApplicationUserAddRequest model)
        {
            ObjectResult result = null;

            try
            {
                int id = _service.Add(model);
                ItemResponse<int> response = new ItemResponse<int>() { Item = id };
                result = StatusCode(200, response);
            }
            catch (Exception ex)
            {
                ErrorResponse response = new ErrorResponse(ex.Message);
                result = StatusCode(500, response);
            }
            return result;
        }

        [HttpPut("{id}")]
        [AllowAnonymous]
        public void Update(ApplicationUserUpdateRequest model)
        {
        }

        [HttpDelete("{id}")]
        [AllowAnonymous]
        public void Delete(int id)
        {
        }
    }
}
