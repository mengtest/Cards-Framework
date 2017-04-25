namespace Pathfinding.Serialization.JsonFx
{
    using System;
    using System.IO;

    public class JsonDataReader : IDataReader
    {
        public const string JsonFileExtension = ".json";
        public const string JsonMimeType = "application/json";
        private readonly JsonReaderSettings Settings;

        public JsonDataReader(JsonReaderSettings settings)
        {
            if (settings == null)
            {
                throw new ArgumentNullException("settings");
            }
            this.Settings = settings;
        }

        public static JsonReaderSettings CreateSettings(bool allowNullValueTypes)
        {
            return new JsonReaderSettings { AllowNullValueTypes = allowNullValueTypes };
        }

        public object Deserialize(TextReader input, Type type)
        {
            return new JsonReader(input, this.Settings).Deserialize(type);
        }

        public string ContentType
        {
            get
            {
                return "application/json";
            }
        }
    }
}

