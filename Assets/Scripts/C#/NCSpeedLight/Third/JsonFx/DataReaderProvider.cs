namespace Pathfinding.Serialization.JsonFx
{
    using System;
    using System.Collections.Generic;

    public class DataReaderProvider : IDataReaderProvider
    {
        private readonly IDictionary<string, IDataReader> ReadersByMime = new Dictionary<string, IDataReader>(StringComparer.OrdinalIgnoreCase);

        public DataReaderProvider(IEnumerable<IDataReader> readers)
        {
            if (readers != null)
            {
                foreach (IDataReader reader in readers)
                {
                    if (!string.IsNullOrEmpty(reader.ContentType))
                    {
                        this.ReadersByMime[reader.ContentType] = reader;
                    }
                }
            }
        }

        public IDataReader Find(string contentTypeHeader)
        {
            return null;
            /*
            string key = DataWriterProvider.ParseMediaType(contentTypeHeader);
            if (this.ReadersByMime.ContainsKey(key))
            {
                return this.ReadersByMime[key];
            }
            return null;
            */
        }
    }
}

