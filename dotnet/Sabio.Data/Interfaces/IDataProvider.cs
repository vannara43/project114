using System;
using System.Data;
using System.Data.SqlClient;

namespace Sabio.Data.Providers
{
    public interface IDataProvider
    {
        /// <summary>
        /// This is used when we want to execute a SQL SELECT Statement. This is intended to bring
        /// back a dateset/gird/table, even though it may be a 1 row results.
        /// </summary>

        /// <param name="storedProc">The name of the stored procedure we want to execute</param>
        /// <param name="inputParamMapper">
        /// An Method that accepts SqlParameterCollection as the first parameters. This
        /// SqlParameterCollection is the collection of parameters sent to the database specifed by
        /// the connectionSource parameter. You should use it to "map" values you have in .Net to the
        /// named SQL Paramenters you have in your stored procedue.
        /// </param>
        /// <param name="singleRecordMapper">
        /// The Method will be called 1 time for every record returned from your query regardless of
        /// how many "tables" your query returns. If your query returns multiple "Tables" you should
        /// use the second parameter to determine which table you are currently reading. This second
        /// value is a ZERO based index.
        /// </param>
        /// <param name="returnParameters">
        /// The Method will be called after your proc is excuted. It is your opportunity to take a
        /// look at the parameters and inspect for any Output params from you SQL Procedure.
        /// </param>
        /// <param name="cmdModifier">
        /// Supply this method if you want to modify the underlying SqlCommand objet such as
        /// extending the timeout property.
        /// </param>
        void ExecuteCmd(
            string storedProc,
            Action<SqlParameterCollection> inputParamMapper,
            Action<IDataReader, short> singleRecordMapper,

            Action<SqlParameterCollection> returnParameters = null,
            Action<SqlCommand> cmdModifier = null);

        /// <summary>
        /// This is used to execute SQL Statments like UPDATE, DELETE, INSERT.
        /// </summary>

        /// <param name="storedProc">The name of the stored procedure we want to execute</param>
        /// <param name="inputParamMapper">
        /// An Method that accepts SqlParameterCollection as the first parameters. This
        /// SqlParameterCollection is the collection of parameters sent to the database specifed by
        /// the connectionSource parameter. You should use it to "map" values you have in .Net to the
        /// named SQL Paramenters you have in your stored procedue.
        /// </param>
        /// <param name="returnParameters">
        /// The Method will be called after your proc is excuted. It is your opportunity to take a
        /// look at the parameters and inspect for any Output params from you SQL Procedure.
        /// </param>
        /// <param name="cmdModifier">
        /// Supply this method if you want to modify the underlying SqlCommand objet such as
        /// extending the timeout property.
        /// </param>
        /// <returns>The number of Rows Affected</returns>
        int ExecuteNonQuery(string storedProc,
            Action<System.Data.SqlClient.SqlParameterCollection> inputParamMapper,
            Action<System.Data.SqlClient.SqlParameterCollection> returnParameters = null);
    }
}