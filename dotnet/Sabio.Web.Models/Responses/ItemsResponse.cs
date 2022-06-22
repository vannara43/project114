using System.Collections.Generic;

namespace Sabio.Web.Models.Responses
{
    /// <summary>
    /// This is an example of a Generic class that you will gain an understanding of as you progress
    /// through the training.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class ItemsResponse<T> : SuccessResponse
    {
        public List<T> Items { get; set; }
    }
}