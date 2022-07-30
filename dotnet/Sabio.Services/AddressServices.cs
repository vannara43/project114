using Sabio.Data.Providers;
using System;
using System.Collections.Generic;
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
    }
}
