using Microsoft.SqlServer.Server;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Sabio.Data.Extensions
{
    public static class SqlParameterCollectionExt
    {
        public static void AddOutputParameter(this SqlParameterCollection coll, string parameterName, SqlDbType sqlDbType)
        {
            SqlParameter p = new SqlParameter(parameterName, sqlDbType);
            p.Direction = ParameterDirection.Output;
            coll.Add(p);
        }

        public static void AddStructuredParameter(this SqlParameterCollection coll, string parameterName, IEnumerable<SqlDataRecord> items)
        {
            SqlParameter p = new SqlParameter(parameterName, SqlDbType.Structured);

            if (items != null && items.Any())
            {
                p.Value = items;
            }

            coll.Add(p);
        }
    }
}