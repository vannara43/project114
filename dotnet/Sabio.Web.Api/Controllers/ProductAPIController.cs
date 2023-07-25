using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;
using Sabio.Services;
using Sabio.Web.Controllers;
using Sabio.Web.Models.Responses;
using System;

namespace Sabio.Web.Api.Controllers
{
    [Route("api/product")]
    [ApiController]
    public class ProductAPIController : BaseApiController
    {
        private IProductServices _service = null;
        private IAuthenticationService<int> _authService = null;

        public ProductAPIController(IProductServices service
            , ILogger<ProductAPIController> logger
            , IAuthenticationService<int> authService) : base(logger)
        {
            _service = service;
            _authService = authService;
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult<ItemResponse<int>> Create(ProductAddRequest model)
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

        [HttpGet("paginate")]
        [AllowAnonymous]
        public ActionResult<ItemResponse<Paged<Product>>> GetAll(int pageIndex, int pageSize)
        {
            int code = 200;
            BaseResponse response = null;
            try
            {
                Paged<Product> paged = _service.GetAll(pageIndex, pageSize);

                if (paged == null)
                {
                    code = 404;
                    response = new ErrorResponse("Records Not Found.");
                }
                else
                {
                    ItemResponse<Paged<Product>> itemResponse = new ItemResponse<Paged<Product>>();
                    itemResponse.Item = paged;
                    response = new ItemResponse<Paged<Product>> { Item = paged };
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



        [HttpPut("{id:int}")]
        [AllowAnonymous]
        public ActionResult Update(ProductUpdateRequest model)
        {

            BaseResponse response = null;
            int code = 200;
            try
            {
                _service.Update(model);
                response = new SuccessResponse();
            }
            catch (Exception ex)
            {
                response = new ErrorResponse(ex.Message);
                code = 500;
            }
            return StatusCode(code, response); ;

        }

        [HttpDelete("{id:int}")]
        [AllowAnonymous]
        public ActionResult<SuccessResponse> Delete(int id)
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

