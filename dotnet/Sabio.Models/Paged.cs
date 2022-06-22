using System;
using System.Collections.Generic;

namespace Sabio.Models
{
    public class Paged<T>
    {
        public int PageIndex { get; }

        public int PageSize { get; }

        public int TotalCount { get; }

        public int TotalPages { get; }

        public List<T> PagedItems { get; }

        /// <summary>
        /// This constructor to be used when using database paging
        /// </summary>
        /// <param name="data"></param>
        /// <param name="page"></param>
        /// <param name="pagesize"></param>
        /// <param name="totalCount"></param>
        public Paged(List<T> data, int page, int pagesize, int totalCount)
        {
            PageIndex = page;
            PageSize = pagesize;
            PagedItems = data;

            TotalCount = totalCount;
            TotalPages = (int)Math.Ceiling(TotalCount / (double)PageSize);
        }

        public bool HasPreviousPage => PageIndex > 0;

        public bool HasNextPage => PageIndex + 1 < TotalPages;
    }
}