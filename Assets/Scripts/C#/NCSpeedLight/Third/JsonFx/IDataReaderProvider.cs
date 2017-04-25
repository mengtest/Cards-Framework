namespace Pathfinding.Serialization.JsonFx
{
    using System;

    public interface IDataReaderProvider
    {
        IDataReader Find(string contentTypeHeader);
    }
}

