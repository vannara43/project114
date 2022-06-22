using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;

namespace Sabio.Data
{
    public class IntIdTable : IEnumerable<SqlDataRecord>
    {
        private IEnumerable<Int32> _items;

        public IntIdTable(IEnumerable<Int32> items)
        {
            _items = items;
        }

        private static SqlDataRecord GetRecord()
        {
            return new SqlDataRecord(
                    new SqlMetaData[] { new SqlMetaData("Data", SqlDbType.Int) }
               );
        }

        public IEnumerator<SqlDataRecord> GetEnumerator()
        {
            if (_items != null)
            {
                foreach (Int32 item in _items)
                {
                    var rec = GetRecord();

                    rec.SetInt32(0, item);

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