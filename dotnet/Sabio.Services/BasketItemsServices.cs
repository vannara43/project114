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
    public class BasketItemsServices : IBasketItemsServices
    {
        IDataProvider _data = null;

        public BasketItemsServices(IDataProvider data)
        {
            _data = data;
        }

        public int Add(BasketItemsAddRequest model)
        {
            int id = 0;
            string storedProc = "[dbo].[BasketItems_insert]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@BasketId", model.BasketId);
                col.AddWithValue("@ProductId", model.ProductId);
                col.AddWithValue("@ProductName", model.ProductName);
                col.AddWithValue("@CustomerEmail", model.CustomerEmail);
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

        public Paged<BasketItems> GetAll(int pageIndex, int pageSize)
        {
            Paged<BasketItems> pagedList = null;
            List<BasketItems> list = null;
            int totalCount = 0;

            string storedProc = "[dbo].[BasketItems_getAll]";

            _data.ExecuteCmd(storedProc, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            },
            (reader, recordSetIndex) =>
            {
                int startingIndex = 0;

                BasketItems address = MapBasketItems(reader, ref startingIndex);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<BasketItems>();
                }
                list.Add(address);
            });
            if (list != null)
            {
                pagedList = new Paged<BasketItems>(list, pageIndex, pageSize, totalCount);
            }

            return pagedList;
        }

        public void Update(BasketItemsUpdateRequest model)
        {
            string storedProc = "[dbo].[BasketItems_update]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", model.Id);
                col.AddWithValue("@BasketId", model.BasketId);
                col.AddWithValue("@ProductId", model.ProductId);
                col.AddWithValue("@ProductName", model.ProductName);
                col.AddWithValue("@CustomerEmail", model.CustomerEmail);
                col.AddWithValue("@Quantity", model.Quantity);
                col.AddWithValue("@ImgUrl", model.ImgUrl);
                col.AddWithValue("@UnitPrice", model.UnitPrice);
            }, returnParameters: null);
        }

        public void Delete(int id)
        {
            string storedProc = "[dbo].[BasketItems_delete]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", id);
            });
        }

        private static BasketItems MapBasketItems(IDataReader reader, ref int startingIndex)
        {
            BasketItems basketItems = new BasketItems();
            basketItems.Id = reader.GetSafeInt32(startingIndex++);
            basketItems.BasketId = reader.GetSafeInt32(startingIndex++);
            basketItems.ProductId = reader.GetSafeInt32(startingIndex++);
            basketItems.ProductName = reader.GetSafeString(startingIndex++);
            basketItems.CustomerEmail = reader.GetSafeString(startingIndex++);
            basketItems.Quantity = reader.GetSafeInt32(startingIndex++);
            basketItems.ImgUrl = reader.GetSafeString(startingIndex++);
            basketItems.UnitPrice = reader.GetSafeInt32(startingIndex++);
            return basketItems;
        }
    }
}
