using System;

namespace Sabio.Services
{
    public interface ICacheService
    {
        void Add(string key, object o, DateTimeOffset expiration);

        void Add(string key, object o);

        bool Contains(string key);

        object Get(string key);

        T Get<T>(string key) where T : class;

        void Remove(string key);

        void RemoveStartsWith(string key);
    }
}