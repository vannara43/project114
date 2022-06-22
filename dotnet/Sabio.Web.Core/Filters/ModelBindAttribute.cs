using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Sabio.Models;
using Sabio.Web.Models.Responses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Web.Core.Filters
{
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, Inherited = true, AllowMultiple = true)]
    public class ModelBindAttribute : System.Attribute, Microsoft.AspNetCore.Mvc.Filters.IAsyncActionFilter
    {

        public Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            if (context != null && context.ActionArguments != null &&
                 context.ActionArguments.ContainsKey("model") &&
                 context.ActionArguments["model"] is IModelIdentifier)
            {
                SetEntityId(context.ActionArguments, context);
            }

            if (context.Result == null)
            {
                return next();

            }
            else
            {
                return Task.CompletedTask;
            }
        }

        public virtual int? SetEntityId(IDictionary<string, object> actionArguments, ActionExecutingContext actionContext)
        {
            int? id = null;
            int parseId = 0;
            object oId = null;
            IModelIdentifier requestModel = null;
            string idField = "id";
            requestModel = actionArguments["model"] as IModelIdentifier;

            ControllerBase c = actionContext.Controller as ControllerBase;

            actionContext.RouteData?.Values?.TryGetValue(idField, out oId);

            if (oId != null)
            {
                Int32.TryParse(oId.ToString(), out parseId);

                if (parseId > 0)
                {
                    requestModel.Id = parseId;

                    actionContext.ModelState.Clear();

                    if (requestModel.Id <= 0)
                    {
                        c.ModelState.AddModelError("Id", "An Id is Required");
                    }

                    c.TryValidateModel(requestModel);
                }
                else
                {
                    c.ModelState.AddModelError("Id", "A valid Id is Required");
                }

            }
            else
            {
                c.ModelState.AddModelError("Id", "An Id is Required");
            }

            if (!c.ModelState.IsValid)
            {
                ErrorResponse err = new ErrorResponse(c.ModelState.Values
                       .SelectMany(e => e.Errors)
                       .Select(e => e.ErrorMessage));

                var result = new BadRequestObjectResult(err);

                result.ContentTypes.Add("application/json");

                actionContext.Result = result;
            }

            return id;
        }
    }
}
