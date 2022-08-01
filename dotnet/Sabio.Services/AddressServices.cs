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
    public class AddressServices : IAddressServices
    {
        IDataProvider _data = null;

        public AddressServices(IDataProvider data)
        {
            _data = data;
        }
        public int Add(AddressAddRequest model)
        {
            int id = 0;
            string procName = "[dbo].[Address_Insert]";
            _data.ExecuteNonQuery(procName, inputParamMapper: delegate (SqlParameterCollection col)
             {
                 col.AddWithValue("@FirstName", model.FirstName);
                 col.AddWithValue("@LastName", model.LastName);
                 col.AddWithValue("@Street", model.Street);
                 col.AddWithValue("@Street2", model.Street2);
                 col.AddWithValue("@City", model.City);
                 col.AddWithValue("@Country", model.Country);
                 col.AddWithValue("@Zip", model.Zip);
                 col.AddWithValue("@UserId", model.UserId);

                 SqlParameter idOut = new SqlParameter("@Id", System.Data.SqlDbType.Int);
                 idOut.Direction = System.Data.ParameterDirection.Output;
                 col.Add(idOut);
             },
             returnParameters: delegate (SqlParameterCollection returnCollection)
             {
                 object oId = returnCollection["@Id"].Value;
                 int.TryParse(oId.ToString(), out id);
             });
            return id;
        }
        public Paged<Address> GetAll(int pageIndex, int pageSize)
        {
            Paged<Address> pagedList = null;
            List<Address> list = null;
            int totalCount = 0;

            string procName = "[dbo].[Address_GetAll]";

            _data.ExecuteCmd(procName, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            },
            (reader, recordSetIndex) =>
            {
                int startingIndex = 0;

                Address address = MapAddress(reader, ref startingIndex);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<Address>();
                }
                list.Add(address);
            });
            if(list != null)
            {
                pagedList = new Paged<Address>(list, pageIndex, pageSize, totalCount);
            }
            return pagedList;
        }

        public void Update(AddressUpdateRequest model)
        {
            string procName = "[dbo].[address_update]";
            _data.ExecuteNonQuery(procName,
                inputParamMapper: delegate (SqlParameterCollection col)
                {
                    col.AddWithValue("@Id", model.Id);
                    col.AddWithValue("@FirstName", model.FirstName);
                    col.AddWithValue("@LastName", model.LastName);
                    col.AddWithValue("@Street", model.Street);
                    col.AddWithValue("@Street2", model.Street2);
                    col.AddWithValue("@City", model.City);
                    col.AddWithValue("@Country", model.Country);
                    col.AddWithValue("@Zip", model.Zip);
                    col.AddWithValue("@UserId", model.UserId);
                }, returnParameters: null);
        }

        public void Delete()
        {

        }
        private static Address MapAddress(IDataReader reader, ref int startingIndex)
        {
            Address address = new Address();
            address.Id = reader.GetSafeInt32(startingIndex++);
            address.FirstName = reader.GetSafeString(startingIndex++);
            address.LastName = reader.GetSafeString(startingIndex++);
            address.Street = reader.GetSafeString(startingIndex++);
            address.Street2 = reader.GetSafeString(startingIndex++);
            address.City = reader.GetSafeString(startingIndex++);
            address.Country = reader.GetSafeString(startingIndex++);
            address.Zip = reader.GetSafeInt32(startingIndex++);
            address.UserId = reader.GetSafeInt32(startingIndex++);
            return address;
        }
    }
}
