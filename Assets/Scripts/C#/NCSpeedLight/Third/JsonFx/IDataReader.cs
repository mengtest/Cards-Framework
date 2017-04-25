namespace Pathfinding.Serialization.JsonFx
{
    using System;
    using System.IO;

    public interface IDataReader
    {
        object Deserialize(TextReader input, Type data);

        string ContentType { get; }
    }
}

