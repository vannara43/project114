using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace Sabio.Data
{
    public static class IDataReaderExt
    {
        #region Safe Reference Type Mappers

        /*
            For value types, there should be  GetSafe... and a GetSafe...Nullable variants,
            the first for non-nullable and the second for nullable variations.

            For reference types, there is only a GetSafe... version, since they are, by
            definition nullable.
        */

        public static string GetSafeString(this IDataReader reader, Int32 ordinal, bool trim = true)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                if (trim)
                    return reader.GetString(ordinal).Trim();
                else
                    return reader.GetString(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static T DeserializeObject<T>(this IDataReader reader, Int32 ordinal)
        {
            T result = default(T);

            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                string myJson = reader.GetString(ordinal);

                if (!string.IsNullOrEmpty(myJson))
                {
                    result = JsonConvert.DeserializeObject<T>(myJson);
                }
            }
            return result;
        }

        public static Uri GetSafeUri(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                string sUri = reader.GetString(ordinal);
                Uri created = null;

                if (Uri.TryCreate(sUri, UriKind.RelativeOrAbsolute, out created))
                {
                    return created;
                }
                return null;
            }
            else
            {
                return null;
            }
        }

        public static SqlBytes GetSafeSqlBytes(this SqlDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetSqlBytes(ordinal);
            }
            else
            {
                return new SqlBytes();
            }
        }

        public static object GetSafeValue(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetValue(ordinal);
            }
            else
            {
                return null;
            }
        }

        #endregion Safe Reference Type Mappers

        #region - Safe Value Type mappers -

        /*
            For values types, there should be two variants for each data type,
            GetSafe...() for non-nullable and GetSafe...Nullable() for
            nullable.
        */

        public static Guid GetSafeGuid(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetGuid(ordinal);
            }
            else
            {
                return Guid.Empty;
            }
        }

        public static Guid? GetSafeGuidNullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetGuid(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static bool GetSafeBool(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetBoolean(ordinal);
            }
            else
            {
                return false;
            }
        }

        public static bool? GetSafeBoolNullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetBoolean(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static byte GetSafeByte(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetByte(ordinal);
            }
            else
            {
                return 0;
            }
        }

        public static byte? GetSafeByteNullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetByte(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static Int16 GetSafeInt16(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetInt16(ordinal);
            }
            else
            {
                return 0;
            }
        }

        public static Int16? GetSafeInt16Nullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetInt16(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static int GetSafeInt32(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetInt32(ordinal);
            }
            else
            {
                return 0;
            }
        }

        public static int? GetSafeInt32Nullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetInt32(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static Int64 GetSafeInt64(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetInt64(ordinal);
            }
            else
            {
                return 0;
            }
        }

        public static Int64? GetSafeInt64Nullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetInt64(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static DateTime GetSafeDateTime(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetDateTime(ordinal);
            }
            else
            {
                return default(DateTime);
            }
        }

        public static DateTime GetSafeUtcDateTime(this IDataReader reader, Int32 ordinal, DateTimeKind kind = DateTimeKind.Utc)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return DateTime.SpecifyKind(reader.GetDateTime(ordinal), kind);
            }
            else
            {
                return default(DateTime);
            }
        }

        public static DateTime? GetSafeDateTimeNullable(this IDataReader reader, Int32 ordinal, DateTimeKind kind = DateTimeKind.Utc)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return DateTime.SpecifyKind(reader.GetDateTime(ordinal), kind);
            }
            else
            {
                return null;
            }
        }

        public static DateTime? GetSafeUtcDateTimeNullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return DateTime.SpecifyKind(reader.GetDateTime(ordinal), DateTimeKind.Utc);
            }
            else
            {
                return null;
            }
        }

        public static TimeSpan GetSafeTimeSpan(this SqlDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetTimeSpan(ordinal);
            }
            else
            {
                return default(TimeSpan);
            }
        }

        public static TimeSpan? GetSafeTimeSpanNullable(this SqlDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetTimeSpan(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static float GetSafeFloat(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetFloat(ordinal);
            }
            else
            {
                return 0F;
            }
        }

        public static float? GetSafeFloatNullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetFloat(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static double GetSafeDouble(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetDouble(ordinal);
            }
            else
            {
                return 0;
            }
        }

        public static double? GetSafeDoubleNullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetDouble(ordinal);
            }
            else
            {
                return null;
            }
        }

        public static decimal GetSafeDecimal(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetDecimal(ordinal);
            }
            else
            {
                return 0M;
            }
        }

        public static decimal? GetSafeDecimalNullable(this IDataReader reader, Int32 ordinal)
        {
            if (reader[ordinal] != null && reader[ordinal] != DBNull.Value)
            {
                return reader.GetDecimal(ordinal);
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// Assuming an Enum's string value is saved as a string type in the database, this method
        /// parses the string and attempts to map it to the corresponding C# enum value.
        /// </summary>
        /// <typeparam name="TEnum">Type of enum</typeparam>
        /// <param name="reader">Data Reader</param>
        /// <param name="ordinal">Ordinal column position</param>
        /// <returns>Matching enum value or default value if no match</returns>
        public static TEnum GetSafeEnum<TEnum>(this IDataReader reader, Int32 ordinal) where TEnum : struct
        {
            string enumValue = null;
            object value = reader.GetSafeValue(ordinal);

            TEnum parsedValue = default(TEnum);

            if (value == null)
                return parsedValue;
            else
                enumValue = value.ToString();

            if (!String.IsNullOrEmpty(enumValue) && Enum.TryParse(enumValue, true, out parsedValue))
            {
                if (!Enum.IsDefined(typeof(TEnum), parsedValue))
                {
                    parsedValue = default(TEnum);
                }
            }

            return parsedValue;
        }

        #endregion - Safe Value Type mappers -
    }
}