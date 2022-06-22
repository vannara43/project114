using Microsoft.Extensions.Caching.Memory;
using System;

namespace Sabio.Services
{
    public class MemoryCacheDefault : ICacheService
    {
        private static readonly MemoryCache Cache = new MemoryCache(new MemoryCacheOptions());

        private static MemoryCacheDefault _instance = null;

        static MemoryCacheDefault()
        {
            _instance = new MemoryCacheDefault();
        }

        public static MemoryCacheDefault Instance
        {
            get
            {
                return _instance;
            }
        }

        public void RemoveStartsWith(string key)
        {
            lock (Cache)
            {
                Cache.Remove(key);
            }
        }

        public T Get<T>(string key) where T : class
        {
            var o = Cache.Get(key) as T;
            return o;
        }

        public object Get(string key)
        {
            return Cache.Get(key);
        }

        public void Remove(string key)
        {
            lock (Cache)
            {
                Cache.Remove(key);
            }
        }

        public bool Contains(string key)
        {
            return Cache.TryGetValue(key, out object result);
        }

        public void Add(string key, object o, DateTimeOffset expiration)
        {
            MemoryCacheEntryOptions options = new MemoryCacheEntryOptions();

            options.AbsoluteExpiration = expiration;

            lock (Cache)
            {
                Cache.Set(key, o, options);
            }
        }

        public void Add(string key, object o)
        {
            DateTimeOffset dt = DateTimeOffset.Now.AddMinutes(20);

            Add(key, o, dt);
        }
    }
}