using Microsoft.SqlServer.Server;
using System.Collections.Generic;
using System.Data;

namespace Sabio.Data
{
    public class VarCharIdTable
        : IEnumerable<SqlDataRecord>
    {
        private IEnumerable<string> _items;

        public VarCharIdTable(IEnumerable<string> items)
        {
            _items = items;
        }

        private static SqlDataRecord GetRecord()
        {
            return new SqlDataRecord(
                    new SqlMetaData[] { new SqlMetaData("Data", SqlDbType.VarChar, 900) }
               );
        }

        public IEnumerator<SqlDataRecord> GetEnumerator()
        {
            if (_items != null)
            {
                foreach (string item in _items)
                {
                    var rec = GetRecord();

                    rec.SetString(0, item);

                    yield return rec;
                }
            }

            yield break;
        }

        System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
    }
}