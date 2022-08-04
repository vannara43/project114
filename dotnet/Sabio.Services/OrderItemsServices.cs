using Sabio.Data;
using Sabio.Data.Providers;
using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Services.Interfaces
{
    public class OrderItemsServices : IOrderItemsServices
    {
        IDataProvider _data = null;

        public OrderItemsServices(IDataProvider data)
        {
            _data = data;
        }

        public Paged<OrderItems> GetAll(int pageIndex, int pageSize)
        {
            Paged<OrderItems> pagedList = null;
            List<OrderItems> list = null;
            int totalCount = 0;

            string storedProc = "[dbo].[orderItems_getall]";
            _data.ExecuteCmd(storedProc, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            }, (reader, recordSetIndex) =>
            {
                int startingIndex = 0;
                OrderItems orderItems = new OrderItems();
                orderItems.Id = reader.GetSafeInt32(startingIndex++);
                orderItems.OrderId = reader.GetSafeInt32(startingIndex++);
                orderItems.ProductId = reader.GetSafeInt32(startingIndex++);
                orderItems.UserId = reader.GetSafeInt32(startingIndex++);
                orderItems.ProductName = reader.GetSafeString(startingIndex++);
                orderItems.Quantity = reader.GetSafeInt32(startingIndex++);
                orderItems.ImgUrl = reader.GetSafeString(startingIndex++);
                orderItems.UnitPrice = reader.GetSafeDecimal(startingIndex++);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<OrderItems>();
                }
                list.Add(orderItems);
            });
            if (list != null)
            {
                pagedList = new Paged<OrderItems>(list, pageIndex, pageSize, totalCount);
            }
            return pagedList;
        }

        public int Add(OrderItemsAddRequest model)
        {
            int id = 0;
            string storedProc = "[dbo].[orderItems_insert]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@OrderId", model.OrderId);
                col.AddWithValue("@ProductId", model.ProductId);
                col.AddWithValue("@UserId", model.UserId);
                col.AddWithValue("@ProductName", model.ProductName);
                col.AddWithValue("@Quantity", model.Quantity);
                col.AddWithValue("@ImgUrl", model.ImgUrl);
                col.AddWithValue("@UnitPrice", model.UnitPrice);

                SqlParameter idOutput = new SqlParameter("@Id", System.Data.SqlDbType.Int);
                idOutput.Direction = ParameterDirection.Output;
                col.Add(idOutput);

            }, returnParameters: delegate (SqlParameterCollection returnCollection)
            {
                object oId = returnCollection["@Id"].Value;
                int.TryParse(oId.ToString(), out id);
            });
            return id;
        }

        public void Update(OrderItemsUpdateRequest model)
        {
            string storedProc = "[dbo].[OrderItems_Update]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", model.Id);
                col.AddWithValue("@OrderId", model.OrderId);
                col.AddWithValue("@ProductId", model.ProductId);
                col.AddWithValue("@UserId", model.UserId);
                col.AddWithValue("@ProductName", model.ProductName);
                col.AddWithValue("@Quantity", model.Quantity);
                col.AddWithValue("@ImgUrl", model.ImgUrl);
                col.AddWithValue("@UnitPrice", model.UnitPrice);
            }, returnParameters: null);
        }

        public void Delete(int id)
        {
            string storedProc = "[dbo].[OrderItems_Delete]";
            _data.ExecuteNonQuery(@storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", id);
            });
        }
    }
}
