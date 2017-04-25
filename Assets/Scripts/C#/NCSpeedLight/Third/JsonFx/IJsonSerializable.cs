namespace Pathfinding.Serialization.JsonFx
{
    using System;

    public interface IJsonSerializable
    {
        void ReadJson(JsonReader reader);
    }
}

