using Sabio.Data;
using Sabio.Data.Providers;
using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;
using Sabio.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Services
{
    public class ProductServices : IProductServices
    {
        IDataProvider _data = null;

        public ProductServices(IDataProvider data)
        {
            _data = data;
        }

        public int Add(ProductAddRequest model)
        {
            int id = 0;
            string procName = "[dbo].[Product_Insert]";
            _data.ExecuteNonQuery(procName, inputParamMapper: delegate (SqlParameterCollection col)
            {
                testTableParams(model, col);

                SqlParameter idOut = new SqlParameter("@Id", System.Data.SqlDbType.Int);
                idOut.Direction = ParameterDirection.Output;

                col.Add(idOut);

            },
                returnParameters: delegate (SqlParameterCollection returnCollection)
                {
                    object oId = returnCollection["@Id"].Value;

                    int.TryParse(oId.ToString(), out id);
                });
            return id;
        }

        public Paged<Product> GetAll(int pageIndex, int pageSize)
        {
            Paged<Product> pagedList = null;
            List<Product> list = null;
            int totalCount = 0;

            string procName = "[dbo].[Product_GetAll]";

            _data.ExecuteCmd(procName, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            },
            (reader, recordSetIndex) =>
            {
                int startingIndex = 0;
                Product product = MapProduct(reader, ref startingIndex);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<Product>();
                }
                list.Add(product);
            }
            );
            if (list != null)
            {
                pagedList = new Paged<Product>(list, pageIndex, pageSize, totalCount);
            }
            return pagedList;

        }


        public void Update(ProductUpdateRequest model)
        {
            string procName = "[dbo].[Product_Update]";
            _data.ExecuteNonQuery(procName,
                inputParamMapper: delegate (SqlParameterCollection col)
                {
                    col.AddWithValue("@Id", model.Id);
                    testTableParams(model, col);


                }, returnParameters: null);
        }

        public void Delete(int id)
        {
            string procName = "[dbo].[Product_Delete]";
            _data.ExecuteNonQuery(procName, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", id);
            });
        }
        private static void testTableParams(ProductAddRequest model, SqlParameterCollection col)
        {
            col.AddWithValue("@Name", model.Name);
            col.AddWithValue("@SKU", model.SKU);
            col.AddWithValue("@Price", model.Price);
            col.AddWithValue("@Description", model.Description);
            col.AddWithValue("@ImgUrl", model.ImgUrl);
        }

        private Product MapProduct(IDataReader reader, ref int startingIndex)
        {
            Product product = new Product();

            product.Id = reader.GetSafeInt32(startingIndex++);
            product.Name = reader.GetSafeString(startingIndex++);
            product.SKU = reader.GetSafeString(startingIndex++);
            product.Price = reader.GetSafeInt32(startingIndex++);
            product.Description = reader.GetSafeString(startingIndex++);
            product.ImgUrl = reader.GetSafeString(startingIndex++);

            return product;
        }
    }
}
