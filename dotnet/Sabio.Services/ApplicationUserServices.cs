using Sabio.Data;
using Sabio.Data.Providers;
using Sabio.Models;
using Sabio.Models.Domain;
using Sabio.Models.Requests;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sabio.Services
{
    public class ApplicationUserServices : IApplicationUserServices
    {
        IDataProvider _data = null;

        public ApplicationUserServices(IDataProvider data)
        {
            _data = data;
        }

        public int Add(ApplicationUserAddRequest model)
        {
            int id = 0;
            string procName = "[dbo].[ApplicationUser_Insert]";
            _data.ExecuteNonQuery(procName, inputParamMapper: delegate (SqlParameterCollection col)
            {
                col.AddWithValue("@FirstName", model.FirstName);
                col.AddWithValue("@LastName", model.LastName);

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

        public Paged<ApplicationUser> GetAll(int pageIndex, int pageSize)
        {
            Paged<ApplicationUser> pagedList = null;
            List<ApplicationUser> list = null;
            int totalCount = 0;

            string procName = "[dbo].[ApplicationUser_GetAll]";

            _data.ExecuteCmd(procName, (param) =>
            {
                param.AddWithValue("@pageIndex", pageIndex);
                param.AddWithValue("@pageSize", pageSize);
            },
            (reader, recordSetIndex) =>
            {
                int startingIndex = 0;

                ApplicationUser applicationUser = new ApplicationUser();
                applicationUser.Id = reader.GetSafeInt32(startingIndex++);
                applicationUser.FirstName = reader.GetSafeString(startingIndex++);
                applicationUser.LastName = reader.GetSafeString(startingIndex++);

                if (totalCount == 0)
                {
                    totalCount = reader.GetSafeInt32(startingIndex);
                }

                if (list == null)
                {
                    list = new List<ApplicationUser>();
                }
                list.Add(applicationUser);
            });
            if (list != null)
            {
                pagedList = new Paged<ApplicationUser>(list, pageIndex, pageSize, totalCount);
            }
            return pagedList;
        }

        public void Update(ApplicationUserUpdateRequest model)
        {

        }

        public void Delete(int id)
        {

        }
    }
}
