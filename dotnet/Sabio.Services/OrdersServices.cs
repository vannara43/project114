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

namespace Sabio.Services
{
    public class OrdersServices : IOrdersServices
    {
        IDataProvider _data = null;

        public OrdersServices(IDataProvider data)
        {
            _data = data;
        }

        public Paged<Orders> GetAll(int pageIndex, int pageSize)
        {
            Paged<Orders> pagedList = null;
            List<Orders> list = null;
            int totalCount = 0;

            string storedProc = "[dbo].[Orders_getall]";
            _data.ExecuteCmd(storedProc, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            }, (reader, recordSetIndex) =>
            {
                int startingIndex = 0;
                Orders orders = new Orders();
                orders.Id = reader.GetSafeInt32(startingIndex++);
                orders.AddressId = reader.GetSafeInt32(startingIndex++);
                orders.UserId = reader.GetSafeInt32(startingIndex++);
                orders.ShippingAddress = reader.GetSafeString(startingIndex++);
                orders.TotalItemQty = reader.GetSafeInt32(startingIndex++);
                orders.DiscountName = reader.GetSafeString(startingIndex++);
                orders.DiscountPercent = reader.GetSafeDecimal(startingIndex++);
                orders.DiscountAmount = reader.GetSafeDecimal(startingIndex++);
                orders.Subtotal = reader.GetSafeDecimal(startingIndex++);
                orders.Total = reader.GetSafeDecimal(startingIndex++);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<Orders>();
                }
                list.Add(orders);
            });
            if (list != null)
            {
                pagedList = new Paged<Orders>(list, pageIndex, pageSize, totalCount);
            }
            return pagedList;
        }

        public int Add(OrdersAddRequest model)
        {
            int id = 0;
            string storedProc = "[dbo].[Orders_insert]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@AddressId", model.AddressId);
                col.AddWithValue("@UserId", model.UserId);
                col.AddWithValue("@ShippingAddress", model.ShippingAddress);
                col.AddWithValue("@TotalItemQty", model.TotalItemQty);
                col.AddWithValue("@DiscountName", model.DiscountName);
                col.AddWithValue("@DiscountPercent", model.DiscountPercent);
                col.AddWithValue("@DiscountAmount", model.DiscountAmount);
                col.AddWithValue("@Subtotal", model.Subtotal);
                col.AddWithValue("@Total", model.Total);

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

        public void Update(OrdersUpdateRequest model)
        {
            string storedProc = "[dbo].[Orders_Update]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", model.Id);
                col.AddWithValue("@AddressId", model.AddressId);
                col.AddWithValue("@UserId", model.UserId);
                col.AddWithValue("@ShippingAddress", model.ShippingAddress);
                col.AddWithValue("@TotalItemQty", model.TotalItemQty);
                col.AddWithValue("@DiscountName", model.DiscountName);
                col.AddWithValue("@DiscountPercent", model.DiscountPercent);
                col.AddWithValue("@DiscountAmount", model.DiscountAmount);
                col.AddWithValue("@Subtotal", model.Subtotal);
                col.AddWithValue("@Total", model.Total);
            }, returnParameters: null);
        }

        public void Delete(int id)
        {
            string storedProc = "[dbo].[Orders_Delete]";
            _data.ExecuteNonQuery(@storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", id);
            });
        }
    }
}
