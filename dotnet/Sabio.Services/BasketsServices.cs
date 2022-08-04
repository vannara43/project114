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
    public class BasketsServices : IBasketsServices
    {
        IDataProvider _data = null;

        public BasketsServices(IDataProvider data)
        {
            _data = data;
        }

        public Paged<Baskets> GetAll(int pageIndex, int pageSize)
        {
            Paged<Baskets> pagedList = null;
            List<Baskets> list = null;
            int totalCount = 0;

            string storedProc = "[dbo].[Baskets_getAll]";
            _data.ExecuteCmd(storedProc, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            }, (reader, recordSetIndex) =>
            {
                int startingIndex = 0;
                Baskets baskets = new Baskets();
                baskets.Id = reader.GetInt32(startingIndex++);
                baskets.CustomerEmail = reader.GetSafeString(startingIndex++);
                baskets.ListOfBasketItems = reader.GetSafeString(startingIndex++);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<Baskets>();
                }
                list.Add(baskets);
            });
            if (list != null)
            {
                pagedList = new Paged<Baskets>(list, pageIndex, pageSize, totalCount);
            }

            return pagedList;
        }

        public int Add(BasketsAddRequest model)
        {
            int id = 0;
            string storedProc = "[dbo].[Baskets_insert]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@CustomerEmail", model.CustomerEmail);
                col.AddWithValue("@ListOfBasketItems", model.ListOfBasketItems);

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

        public void Update(BasketsUpdateRequest model)
        {
            string storedProc = "[dbo].[Baskets_update]";
            _data.ExecuteNonQuery(storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", model.Id);
                col.AddWithValue("@CustomerEmail", model.CustomerEmail);
                col.AddWithValue("@ListOfBasketItems", model.ListOfBasketItems);
            }, returnParameters: null);
        }

        public void Delete(int id)
        {
            string storedProc = "[dbo].[Baskets_delete]";
            _data.ExecuteNonQuery(@storedProc, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@Id", id);
            });

        }
    }
}
