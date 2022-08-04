using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;
using Sabio.Services;
using Sabio.Web.Controllers;
using Sabio.Web.Models.Responses;
using System;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Sabio.Web.Api.Controllers
{
    [Route("api/baskets")]
    [ApiController]
    public class BasketsAPIController : BaseApiController
    {
        private IBasketsServices _service = null;
        private IAuthenticationService<int> _authService = null;

        public BasketsAPIController(IBasketsServices service, ILogger<BasketItemsAPIController> logger, IAuthenticationService<int> authService) : base(logger)
        {
            _service = service;
            _authService = authService;
        }

        [HttpGet("paginate")]
        [AllowAnonymous]
        public ActionResult GetAll(int pageIndex, int pageSize)
        {
            int code = 200;
            BaseResponse response = null;

            try
            {
                Paged<Baskets> paged = _service.GetAll(pageIndex, pageSize);
                if (paged == null)
                {
                    code = 404;
                    response = new ErrorResponse("Records Not Found");
                }
                else
                {
                    ItemResponse<Paged<Baskets>> itemResponse = new ItemResponse<Paged<Baskets>>();
                    itemResponse.Item = paged;
                    response = new ItemResponse<Paged<Baskets>> { Item = paged };
                }
            }
            catch (Exception ex)
            {
                code = 500;
                response = new ErrorResponse(ex.Message);
                base.Logger.LogError(ex.ToString());
            }
            return StatusCode(code, response);
        }

        [HttpPost]
        [AllowAnonymous]
        public ActionResult Add(BasketsAddRequest model)
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

        [HttpPut("{id:int}")]
        [AllowAnonymous]
        public ActionResult Update(BasketsUpdateRequest model)
        {
            int code = 200;
            BaseResponse response = null;

            try
            {
                _service.Update(model);
                response = new SuccessResponse();
            }
            catch (Exception ex)
            {
                code = 500;
                response = new ErrorResponse(ex.Message);
            }
            return StatusCode(code, response);
        }

        [HttpDelete("{id:int}")]
        [AllowAnonymous]
        public ActionResult Delete(int id)
        {
            int code = 200;
            BaseResponse response = null;
            try
            {
                _service.Delete(id);
                response = new SuccessResponse();
            }
            catch (Exception ex)
            {
                code = 500;
                response = new ErrorResponse(ex.Message);
            }
            return StatusCode(code, response);
        }
    }
}
