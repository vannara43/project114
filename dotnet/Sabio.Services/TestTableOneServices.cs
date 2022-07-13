using Sabio.Data.Providers;
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
    public class TestTableOneServices : ITestTableOneServices
    {
        IDataProvider _data = null;

        public TestTableOneServices(IDataProvider data)
        {
            _data = data;
        }

        public int Add(TestTableOneAddRequest model)
        {
            int id = 0;
            string procName = "[dbo].[TestTableOne_Insert]";
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

        public void Update(TestTableOneUpdateRequest model)
        {
            string procName = "[dbo].[TestTableOne_Update]";
            _data.ExecuteNonQuery(procName,
                inputParamMapper: delegate (SqlParameterCollection col)
                {
                    col.AddWithValue("@Id", model.Id);
                    testTableParams(model, col);


                }, returnParameters: null);
        }

        private static void testTableParams(TestTableOneAddRequest model, SqlParameterCollection col)
        {
            col.AddWithValue("@Name", model.Name);
            col.AddWithValue("@SKU", model.SKU);
            col.AddWithValue("@Price", model.Price);
            col.AddWithValue("@Description", model.Description);
            col.AddWithValue("@ImgUrl", model.ImgUrl);
        }
    }
}
