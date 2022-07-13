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

        public Paged<TestTableOne> GetAll(int pageIndex, int pageSize)
        {
            Paged<TestTableOne> pagedList = null;
            List<TestTableOne> list = null;
            int totalCount = 0;

            string procName = "[dbo].[TestTableOne_GetAll]";

            _data.ExecuteCmd(procName, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            },
            (reader, recordSetIndex) =>
            {
                int startingIndex = 0;
                TestTableOne testTableOne = MapTestTableOne(reader, ref startingIndex);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<TestTableOne>();
                }
                list.Add(testTableOne);
            }
            );
            if (list != null)
            {
                pagedList = new Paged<TestTableOne>(list, pageIndex, pageSize, totalCount);
            }
            return pagedList;

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

        private TestTableOne MapTestTableOne(IDataReader reader, ref int startingIndex)
        {
            TestTableOne testTableOne = new TestTableOne();

            testTableOne.Id = reader.GetSafeInt32(startingIndex++);
            testTableOne.Name = reader.GetSafeString(startingIndex++);
            testTableOne.SKU = reader.GetSafeString(startingIndex++);
            testTableOne.Price = reader.GetSafeInt32(startingIndex++);
            testTableOne.Description = reader.GetSafeString(startingIndex++);
            testTableOne.ImgUrl = reader.GetSafeString(startingIndex++);

            return testTableOne;
        }
    }
}
